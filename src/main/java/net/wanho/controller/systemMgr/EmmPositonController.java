package net.wanho.controller.systemMgr;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import net.wanho.model.EmmPosition;
import net.wanho.service.EmmPositionService;
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
@RequestMapping("/emmPosition")
public class EmmPositonController {
    @Resource
    private EmmPositionService emmPositionService;

    /**
     * 获取所有职位信息
     * @return 所有职位信息的列表
     */
    @ResponseBody
    @RequestMapping("/getAllEmmPosition")
    public CrmResult getAllEmmPosition(@RequestParam(value = "pn",defaultValue = "1")Integer pn) {
        CrmResult crmResult = new CrmResult();
        List<EmmPosition> result = new ArrayList<>();
        //分页插件引入
        PageHelper.startPage(pn,6);
        result = emmPositionService.getAllEmmPosition();
        PageInfo pageInfo = new PageInfo(result,5);
        if (result.isEmpty()){
            crmResult.setMsg("cant find data");
            crmResult.setStatus(400);
        }else {
            crmResult.setMsg("success");
            crmResult.setData(pageInfo);
        }
        return crmResult;
    }

    /**
     * 新增职位
     * @param emmPosition 新增职位的信息
     * @return 添加消息
     */
    @RequestMapping("/addPosition")
    @ResponseBody
    public CrmResult addPosition(@RequestBody EmmPosition emmPosition) {
        CrmResult crmResult = new CrmResult();
        int insertedId = emmPositionService.addPosition(emmPosition);
        crmResult.setMsg("新增的职位的ID为:"+insertedId);
        return crmResult;
    }

    /**
     * 检查是否有名称重复
     * @param emmPositionName 待检查的名称
     * @return 重复 false 或 不重复 true
     */
    @RequestMapping("/positionNameCheck")
    @ResponseBody
    public CrmResult positionNameCheck(@RequestBody String emmPositionName) {
        CrmResult crmResult = new CrmResult();
        crmResult.setMsg(emmPositionService.positionNameCheck(emmPositionName).toString());
        return crmResult;
    }

    /**
     * 检查能否删除职位
     * @param id 被检查的职位ID
     * @return 能 true 或 不能 false
     */
    @RequestMapping("/deletePostionCheck/{id}")
    @ResponseBody
    public CrmResult deletePostionCheck(@PathVariable("id")Integer id) {
        CrmResult crmResult = new CrmResult();
        crmResult.setMsg(emmPositionService.deletePostionCheck(id).toString());
        return  crmResult;
    }

    @RequestMapping("/deletePosition")
    @ResponseBody
    public CrmResult deletePosition(@RequestBody EmmPosition emmPosition) {
        CrmResult crmResult = new CrmResult();
        int deletedId = emmPositionService.deletePosition(emmPosition);
        crmResult.setMsg("被删除的职位的ID为:"+deletedId);
        return crmResult;
    }

    @RequestMapping("/getUpdatePostionDetailById")
    public String getUpdatePostionDetailById() {
        return "systemSettings/position/update";
    }

    /**
     *修改职位信息
     * @param emmPosition 职位信息
     * @return 修改信息
     */
    @RequestMapping("/updatePosition")
    @ResponseBody
    public CrmResult updatePosition(@RequestBody EmmPosition emmPosition) {
        CrmResult crmResult = new CrmResult();
        int updatedId = emmPositionService.updatePosition(emmPosition);
        crmResult.setMsg("被修改的职位的ID是:"+updatedId);
        return crmResult;
    }

    @RequestMapping("/getLinkPostionDetailById")
    public String getLinkPostionDetailById() {
        return "systemSettings/position/references";
    }

    @RequestMapping("/positionLinks")
    public String positionLinks() {
        return "redirect:getAllEmmPosition";
    }

    /**
     * 按照职位名称查找职位
     * @param positionName 职位名称
     * @return 职位信息
     */
    @ResponseBody
    @RequestMapping("/selectByPositionName")
    public CrmResult selectByPositionName(@RequestBody String positionName){
        CrmResult crmResult = new CrmResult();
        crmResult.setMsg("success");
        crmResult.setData(emmPositionService.selectByPositionName(positionName));
        return crmResult;
    }
}
