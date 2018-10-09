package net.wanho.service.impl;

import net.wanho.mapper.EmployeeMapper;
import net.wanho.model.Employee;
import net.wanho.service.EmployeeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Resource
    private EmployeeMapper employeeMapper;

    @Override
    public List<Employee> selectAllEmployee() {
        List<Employee> result = new ArrayList<>();
        result = employeeMapper.selectAll();
        return result;
    }

    @Override
    public Employee selectEmployeeById(Integer id) {
        Employee employee = new Employee();
        System.out.println("查询id为"+id+"的员工");
        employee = employeeMapper.selectByPrimaryKey(id);
        return employee;
    }
}
