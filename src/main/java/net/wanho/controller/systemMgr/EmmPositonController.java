package net.wanho.controller.systemMgr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by sapling on 2017-12-24.
 */
@Controller
@RequestMapping("/emmPosition")
public class EmmPositonController {
    @RequestMapping("/getAllEmmPosition")
    public String getAllEmmPosition() {
        return "systemSettings/position/index";
    }

    @RequestMapping("/addPosition")
    public String addPosition() {
        return "systemSettings/position/create";
    }

    @RequestMapping("/positionNameCheck")
    @ResponseBody
    public Object positionNameCheck() {
        return null;
    }

    @RequestMapping("/deletePostionCheck")
    @ResponseBody
    public Object deletePostionCheck() {
        return null;
    }

    @RequestMapping("/deletePosition")
    public String deletePosition() {
        return "redirect:getAllEmmPosition";
    }

    @RequestMapping("/getUpdatePostionDetailById")
    public String getUpdatePostionDetailById() {
        return "systemSettings/position/update";
    }

    @RequestMapping("/updatePosition")
    public String updatePosition() {
        return "redirect:getAllEmmPosition";
    }

    @RequestMapping("/getLinkPostionDetailById")
    public String getLinkPostionDetailById() {
        return "systemSettings/position/references";
    }

    @RequestMapping("/positionLinks")
    public String positionLinks() {
        return "redirect:getAllEmmPosition";
    }
}
