package net.wanho.controller.systemMgr;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.model.Employee;
import net.wanho.service.EmployeeService;
import net.wanho.util.CrmResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by sapling on 2017-12-24.
 */
@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Resource
    private EmployeeService employeeService;

    @ResponseBody
    @RequestMapping("/getAllEmployee")
    public CrmResult getAllEmployee(@RequestParam(value = "pn",defaultValue = "1")Integer pn) {
        CrmResult result = new CrmResult();
        //分页插件引入
        PageHelper.startPage(pn,6);
        List<Employee> list = employeeService.selectAllEmployee();
        PageInfo pageInfo = new PageInfo(list,5);
        if (list.isEmpty()){
            result.setStatus(400);
            result.setMsg("no result");
        }else{
            result.setMsg("success");
            result.setData(pageInfo);
        }
        System.out.println("getAllEmployee");
        return result;
    }
    @ResponseBody
    @RequestMapping(value = "/findEmployeeById/{id}",method = RequestMethod.GET)
    public CrmResult findEmployeeById(@PathVariable("id")Integer id) {
        CrmResult result = new CrmResult();
        Employee employeeInfo = employeeService.selectEmployeeById(id);
        result.setMsg("success");
        result.setData(employeeInfo);
        return result;
    }

    @RequestMapping("/getDeapartAndPostionInfo")
    public String getDeapartAndPostionInfo() {
        return "systemSettings/manage/create";
    }

    @RequestMapping("/checkParentEmployee")
    @ResponseBody
    public Object checkParentEmployee() {
        return null;
    }

    @RequestMapping("/addEmployee")

    public String addEmployee() {
        return "redirect:getAllEmployee";
    }

    @RequestMapping("/updateEmployee")
    public String updateEmployee() {
        return "redirect:getAllEmployee";
    }

    @RequestMapping("/updateEmployeeStatus/{id}")
    public CrmResult updateEmployeeStatus(@PathVariable("id")Integer id) {
        CrmResult result = new CrmResult();
        int updatedId = employeeService.updateEmployeeStatus(id);
        result.setMsg("修改的员工的ID为："+updatedId);
        return result;
    }
}
