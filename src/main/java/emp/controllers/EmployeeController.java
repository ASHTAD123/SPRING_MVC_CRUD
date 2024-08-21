package emp.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import emp.dao.Emp_Dao;
import emp.model.Employee_Model;

@Controller
public class EmployeeController {

	@Autowired
	private Emp_Dao employeeDao;

	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("Home()");
		List<Employee_Model> empList = employeeDao.getAllEmployees();
		System.out.println(empList);
		model.addAttribute("employeesList", empList);
		return "index";
	}

	// shows add form
	@RequestMapping(path = "/addEmployee")
	public String showForm() {
		System.out.println("Show Form()");
		return "add";
	}

	// handles add employee
	@RequestMapping(path = "/handleEmployee", method = RequestMethod.POST)
	public RedirectView handleEmpForm(@ModelAttribute Employee_Model employee_model, HttpServletRequest request) {

		System.out.println("Handle form()");
		System.out.println(employee_model);
		employeeDao.createEmployee(employee_model);

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
	}

	// handles delete employee
	@RequestMapping(path = "/remove/{empId}")
	public RedirectView deleteEmpForm(@PathVariable("empId") int empId, HttpServletRequest request) {

		System.out.println("Remove Employee form()");

		employeeDao.deleteEmployee(empId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/home");
		return redirectView;
	}

	// handles update employee
	@RequestMapping(path = "/update/{empId}")
	public String updateEmpForm(@PathVariable("empId") int empId, HttpServletRequest request,Model model) {

		System.out.println("Update Employee form()");

		Employee_Model empModel = this.employeeDao.getEmployee(empId);
		model.addAttribute("empModel",empModel);
	
		return "updateForm";
	}
}
