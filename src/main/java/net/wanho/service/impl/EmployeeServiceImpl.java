package net.wanho.service.impl;

import net.wanho.mapper.EmployeeMapper;
import net.wanho.model.Employee;
import net.wanho.service.EmployeeService;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Resource
    private EmployeeMapper employeeMapper;

    /**
     * 选取所有员工
     * @return 员工列表
     */
    @Override
    public List<Employee> selectAllEmployee() {
        List<Employee> result = new ArrayList<>();
        result = employeeMapper.queryWithInfo();
        return result;
    }

    /**
     * 选取制定id的员工
     * @param id 员工id
     * @return 员工信息
     */
    @Override
    public Employee selectEmployeeById(Integer id) {
        Employee employee = new Employee();
        System.out.println("查询id为"+id+"的员工");
        employee = employeeMapper.selectByPrimaryKey(id);
        return employee;
    }

    /**
     * 修改员工的状态
     * @param id 被修改的员工的ID
     * @return 被修改的员工的主键ID
     */
    @Override
    public int updateEmployeeStatus(Integer id) {
        Employee employee = employeeMapper.selectByPrimaryKey(id);
        if (employee.getStatus().equals("0")){
            employee.setStatus("1");
        }else{
            employee.setStatus("0");
        }
        employee.setUpdateTime(new Timestamp(new Date().getTime()));
        return employeeMapper.updateByPrimaryKeySelective(employee);
    }

    /**
     * 修改员工信息
     * @param employee 要修改的员工
     * @return 被修改的员工的ID
     */
    @Override
    public int updateEmployee(Employee employee) {
        employee.setUpdateTime(new Timestamp(new Date().getTime()));
        return employeeMapper.updateByPrimaryKeySelective(employee);
    }

    /**
     * 新增员工信息
     * @param employee 新增的员工的信息
     * @return 新增的员工的ID
     */
    @Override
    public int addEmployee(Employee employee) {
        employee.setCreateTime(new Timestamp(new Date().getTime()));
        employee.setUpdateTime(new Timestamp(new Date().getTime()));
        return employeeMapper.insertSelective(employee);
    }

    /**
     * 按照条件查询
     * @param employee 包含条件信息的员工
     * @return 员工列表
     */
    @Override
    public List<Employee> search(Employee employee) {
        Example example = new Example(Employee.class);
        Example.Criteria criteria = example.createCriteria();
        Integer employeeId = employee.getEmployeeId();
        String employeeName = employee.getEmployeeName();
        if (employeeId != null){
            criteria.andEqualTo("employeeId",employeeId);
        }
        if (employeeName != null){
            criteria.andEqualTo("employeeName",employeeName);
        }
        if (employeeId==null&&employeeName==null){
            return selectAllEmployee();
        }
        return employeeMapper.selectByExample(example);
    }
}
