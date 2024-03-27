
package com.jsp.Employee.Controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.Employee.Entity.Employee;
import com.jsp.Employee.Service.EmployeeService;

@Controller
public class EmployeeController2 {
	
	@Autowired
	EmployeeService empService;
	
	@RequestMapping(value="/add",method = RequestMethod.POST)
	public ModelAndView addEmp(@RequestParam String ename,@RequestParam String erole,@RequestParam String etype)
	{
		int empid= empService.addEmp(ename,erole,etype);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("hoome.jsp");
		mav.addObject("res",empid);
		return mav;
	}
	@RequestMapping(value="/DisplayEmpById",method = RequestMethod.GET)
	public ModelAndView getEmpById(@RequestParam int eid)
	{
		System.out.println("csame");
		List<Employee> emp = empService.getEmpById(eid);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("DisplayEmpl.jsp");
		mav.addObject("Employee",emp);
		return mav;
	}
	@RequestMapping(value="/DisplayAll",method = RequestMethod.GET)
	public ModelAndView getAll()
	{
		System.out.println("csame");
		List<Employee> emp = empService.getAll();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("DisplayEmpl.jsp");
		mav.addObject("Employee",emp);
		return mav;
	}
	@RequestMapping(value="/Edit",method = RequestMethod.GET)
	public ModelAndView Edit()
	{
		System.out.println("from edit");
		List<Employee> emp = empService.getAll();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("EditUiPage.jsp");
		mav.addObject("EmployeeList",emp);
		return mav;
	}
	@RequestMapping(value="/Delete",method = RequestMethod.GET)
	public ModelAndView Delete(@RequestParam int eid)
	{
		System.out.println("csame");
		empService.deleteEmpById(eid);
		List<Employee> emp = empService.getAll();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("EditUiPage.jsp");
		mav.addObject("EmployeeList",emp);
		return mav;
	}
	@RequestMapping(value="/Update",method = RequestMethod.GET)
	public ModelAndView Update(@RequestParam int val)
	{
		System.out.println("csame");
//		empService.getEmpById(val);
		List<Employee> emp = empService.getEmpById(val);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("UpdateUiPage.jsp");
		mav.addObject("EmployeeList",emp);
		return mav;
	}
	@RequestMapping(value="/UpdateById",method = RequestMethod.GET)
	public ModelAndView UpdateById(@RequestParam int eid,@RequestParam String ename,@RequestParam String erole,@RequestParam String etype)
	{
		System.out.println("csame");
		empService.updateEmpById(eid,ename,erole,etype);
		List<Employee> emp = empService.getAll();
		ModelAndView mav=new ModelAndView();
		mav.setViewName("EditUiPage.jsp");
		mav.addObject("EmployeeList",emp);
		System.out.println(eid+ename+erole+etype);
		return mav;
	}

}
