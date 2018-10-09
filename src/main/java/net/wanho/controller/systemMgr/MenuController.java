package net.wanho.controller.systemMgr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sapling on 2017-12-24.
 */
@Controller
@RequestMapping("/menu")
public class MenuController {
    @RequestMapping("/getAllMenu")
    public String getAllMenu() {
        return "systemSettings/menu/index";
    }

    @RequestMapping("/getAllParentMenu")
    public String getAllParentMenu() {
        return "systemSettings/menu/create";
    }

    @RequestMapping("/addMenu")
    public String addMenu() {
        return "redirect:getAllMenu";
    }

    @RequestMapping("/deleteMenuById")
    public String deleteMenuById() {
        return "redirect:getAllMenu";
    }

    @RequestMapping("/getUpdateMenudetailById")
    public String getUpdateMenudetailById() {
        return "systemSettings/menu/update";
    }

    @RequestMapping("/updateMenu")
    public String updateMenu() {
        return "getAllMenu";
    }
}
