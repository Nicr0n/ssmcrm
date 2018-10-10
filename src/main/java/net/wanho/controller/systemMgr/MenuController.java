package net.wanho.controller.systemMgr;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.model.Menu;
import net.wanho.service.MenuService;
import net.wanho.util.CrmResult;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sapling on 2017-12-24.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {
    @Resource
    private MenuService menuService;

    /**
     * 获取所有menu信息
     * @return menu列表
     */
    @RequestMapping("/getAllMenu")
    @ResponseBody
    public CrmResult getAllMenu(@RequestParam(value = "pn",defaultValue = "1")Integer pn) {
        CrmResult crmResult = new CrmResult();
        List<Menu> list = new ArrayList<>();
        //分页插件引入
        PageHelper.startPage(pn,6);
        list= menuService.getAllMenu();
        PageInfo pageInfo = new PageInfo(list,5);
        if (list.isEmpty()){
            crmResult.setStatus(400);
            crmResult.setData("error");
        }else{
            crmResult.setMsg("success");
            crmResult.setData(pageInfo);
        }
        return crmResult;
    }

    /**
     * 获取所有父级菜单
     * @return 父级菜单列表
     */
    @RequestMapping("/getAllParentMenu")
    @ResponseBody
    public CrmResult getAllParentMenu() {
        CrmResult crmResult = new CrmResult();
        List<Menu> list = new ArrayList<>();
        list= menuService.getAllParentMenu();
        if (list.isEmpty()){
            crmResult.setStatus(400);
            crmResult.setData("error");
        }else{
            crmResult.setMsg("success");
            crmResult.setData(list);
        }
        return crmResult;
    }

    /**
     * 新增菜单
     * @param menu 新增菜单信息
     * @return 新增的菜单的主键
     */
    @ResponseBody
    @RequestMapping("/addMenu")
    public CrmResult addMenu(@RequestBody Menu menu) {
        CrmResult crmResult = new CrmResult();
        int insertedId = menuService.addMenu(menu);
        crmResult.setMsg("添加的菜单的主键为:"+insertedId);
        return crmResult;
    }

    /**
     * 删除指定菜单
     * @param id 指定的菜单的ID
     * @return 被删除的菜单的ID
     */
    @ResponseBody
    @RequestMapping("/deleteMenuById/{id}")
    public CrmResult deleteMenuById(@PathVariable("id")Integer id) {
        CrmResult crmResult = new CrmResult();
        int deletedId = menuService.deleteMenuById(id);
        crmResult.setMsg("删除的菜单的主键为:"+deletedId);
        return crmResult;
    }

    @RequestMapping("/getUpdateMenudetailById")
    public String getUpdateMenudetailById() {
        return "systemSettings/menu/update";
    }

    /**
     * 修改菜单
     * @param menu 修改菜单的信息
     * @return 被修改的菜单的ID
     */
    @RequestMapping("/updateMenu")
    @ResponseBody
    public CrmResult updateMenu(@RequestBody Menu menu) {
        CrmResult crmResult = new CrmResult();
        int insertedId = menuService.updateMenu(menu);
        crmResult.setMsg("修改的菜单的主键为:"+insertedId);
        return crmResult;
    }

    /**
     * 查询菜单 绑定职位
     * @return
     */
    @RequestMapping("/queryWithBindPosition")
    @ResponseBody
    public CrmResult queryWithBindPosition(){
        CrmResult crmResult = new CrmResult();
        crmResult.setData(menuService.queryWithBindPosition());
        crmResult.setMsg("success");
        return crmResult;
    }
}
