package net.wanho.mapper;

import net.wanho.model.Employee;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

public interface EmployeeMapper extends Mapper<Employee> {
    List<Employee> queryWithInfo();
}