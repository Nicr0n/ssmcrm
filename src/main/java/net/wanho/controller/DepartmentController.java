package net.wanho.controller;


import net.wanho.service.DepartmentService;
import net.wanho.util.CrmResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

@Controller
@RequestMapping("/department")
public class DepartmentController {
    @Resource
    private DepartmentService departmentService;

    @ResponseBody
    @RequestMapping("/getAllDepartment")
    public CrmResult getAllDepartment(){
        CrmResult crmResult=new CrmResult();
        crmResult.setMsg("success");
        crmResult.setData(departmentService.selectAll());
        return crmResult;
    }
}
