package net.wanho.service.impl;

import net.wanho.mapper.DepartmentMapper;
import net.wanho.model.Department;
import net.wanho.service.DepartmentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DepartmentServiceImpl  implements DepartmentService {
    @Resource
    private DepartmentMapper departmentMapper;

    @Override
    public List<Department> selectAll() {
        return departmentMapper.selectAll();
    }
}
