package net.wanho.service;

import net.wanho.model.Employee;

import java.util.List;

public interface EmployeeService {

    List<Employee> selectAllEmployee();

    Employee selectEmployeeById(Integer id);

    int updateEmployeeStatus(Integer id);

    int updateEmployee(Employee employee);

    int addEmployee(Employee employee);
}
