package com.jsp.Employee.Service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsp.Employee.Entity.Employee;
import com.jsp.Employee.Reposotory.EmployeeRepo;

@Service
public class EmployeeService {

	@Autowired
	EmployeeRepo er;
	@Autowired
	Employee e;
	
	public int addEmp( String ename, String erole , String etype) {

		e.setEmpName(ename);
		e.setEmpRole(erole);
		e.setEmpType(etype);
		return er.addEmp(e);
	}
	public List<Employee> getEmpById(int id)
	{
		List<Employee> emp= er.getEmpById(id);
		return emp;
	}
	public void updateEmpById( int eid,String ename, String erole , String etype)
	{
		e.setEmpId(eid);
		e.setEmpName(ename);
		e.setEmpRole(erole);
		e.setEmpType(etype);
		 er.updateEmp(e);
	}

	public List<Employee> getAll() {
	
		return er.getAll();
		
	}
	public void deleteEmpById(int id) {
		er.deleteEmp(id);
		
	}
}
