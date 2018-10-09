package net.wanho.controller.homePage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sapling on 2017-12-25.
 */
@Controller
@RequestMapping("/control")
public class Control {
    @RequestMapping("/countAll")
    public String countAll()  {
        return "index";
    }
}
