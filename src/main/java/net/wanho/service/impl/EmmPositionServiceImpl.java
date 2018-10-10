package net.wanho.service.impl;

import net.wanho.mapper.EmmPositionMapper;
import net.wanho.mapper.PositionMenuRelationsMapper;
import net.wanho.model.EmmPosition;
import net.wanho.model.PositionMenuRelations;
import net.wanho.service.EmmPositionService;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

@Service
public class EmmPositionServiceImpl implements EmmPositionService {
    @Resource
    private EmmPositionMapper emmPositionMapper;

    @Resource
    private PositionMenuRelationsMapper positionMenuRelationsMapper;

    /**
     * 获取所有职位
     * @return 所有职位的列表
     */
    @Override
    public List<EmmPosition> getAllEmmPosition() {
        return emmPositionMapper.selectAll();
    }

    /**
     * 新增职位
     * @param emmPosition 新增的职位信息
     * @return 新增的职位的主键ID
     */
    @Override
    public int addPosition(EmmPosition emmPosition) {
        emmPosition.setCreateTime(new Timestamp(new Date().getTime()));
        emmPosition.setUpdateTime(new Timestamp(new Date().getTime()));
        return emmPositionMapper.insertSelective(emmPosition);
    }

    /**
     * 检查新增的职位的名称是否重复
     * @param emmPositionName 新增的职位的名称
     * @return 重复 false 或 不重复 true
     */
    @Override
    public Boolean positionNameCheck(String emmPositionName) {
        Example example = new Example(EmmPosition.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("positionName",emmPositionName);
        List<EmmPosition> list = emmPositionMapper.selectByExample(example);
        if (list.isEmpty()){
            return true;
        }
        return false;
    }

    /**
     * 是否能删除职位
     * @param id 待职位的ID
     * @return 能 true 或 不能 false
     */
    @Override
    public Boolean deletePostionCheck(int id) {
        Example example = new Example(PositionMenuRelations.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("positionId",id);
        if (positionMenuRelationsMapper.selectByExample(example).isEmpty()){
            return true;
        }
        return false;
    }

    /**
     * 修改职位信息
     * @param emmPosition 职位信息
     * @return 被修改的职位的主键
     */
    @Override
    public int updatePosition(EmmPosition emmPosition) {
        emmPosition.setUpdateTime(new Timestamp(new Date().getTime()));
        return emmPositionMapper.updateByPrimaryKeySelective(emmPosition);
    }
}
