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

    /**
     * 查询所有的员工信息（带联表查询）
     * @param pn 跳转到的页码
     * @return 员工信息列表
     */
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

    /**
     * 查询指定员工的信息
     * @param id 要查询的员工的ID
     * @return 被查询的员工的信息
     */
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

    /**
     * 添加新的员工
     * @param employee 被添加的员工的信息
     * @return 添加消息
     */
    @RequestMapping("/addEmployee")
    @ResponseBody
    public CrmResult addEmployee(@RequestBody Employee employee) {
        CrmResult crmResult = new CrmResult();
        int insertedId = employeeService.addEmployee(employee);
        crmResult.setMsg("添加的员工的员工号为:"+ insertedId);
        return crmResult;
    }

    /**
     * 修改员工信息
     * @param employee 修改后的员工信息
     * @return 修改消息
     */
    @ResponseBody
    @RequestMapping("/updateEmployee")
    public CrmResult updateEmployee(@RequestBody Employee employee) {
        CrmResult crmResult = new CrmResult();
        int updatedId = employeeService.updateEmployee(employee);
        crmResult.setMsg("修改的员工ID为："+ updatedId);
        return  crmResult;
    }

    /**
     * 修改员工的状态
     * @param id 被修改的员工的ID
     * @return 修改信息
     */
    @ResponseBody
    @RequestMapping("/updateEmployeeStatus/{id}")
    public CrmResult updateEmployeeStatus(@PathVariable("id")Integer id) {
        CrmResult result = new CrmResult();
        int updatedId = employeeService.updateEmployeeStatus(id);
        result.setMsg("修改的员工的ID为："+updatedId);
        return result;
    }

    /**
     * 按照条件查找
     * @param employee 包含条件的员工对象
     * @return 带分页的员工列表
     */
    @ResponseBody
    @RequestMapping("/search")
    public CrmResult Search(@RequestBody Employee employee,@RequestParam(value = "pn",defaultValue = "1")Integer pn){
        CrmResult crmResult = new CrmResult();
        //分页插件引入
        PageHelper.startPage(pn,6);
        List<Employee> result = employeeService.search(employee);
        PageInfo pageInfo = new PageInfo(result,5);
        if (result.isEmpty()){
            crmResult.setStatus(400);
            crmResult.setMsg("no result");
        }else{
            crmResult.setMsg("success");
            crmResult.setData(pageInfo);
        }
        return crmResult;
    }
}
