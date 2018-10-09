package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`emm_position`")
public class EmmPosition {
    /**
     * 职位编号
     */
    @Id
    @Column(name = "`POSITION_ID`")
    private Integer positionId;

    /**
     * 职位名称
     */
    @Column(name = "`POSITION_NAME`")
    private String positionName;

    /**
     * 职位等级
     */
    @Column(name = "`POSITION_LEVEL`")
    private String positionLevel;

    /**
     * 创建时间
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    /**
     * 修改时间
     */
    @Column(name = "`UPDATE_TIME`")
    private Date updateTime;

    /**
     * 获取职位编号
     *
     * @return POSITION_ID - 职位编号
     */
    public Integer getPositionId() {
        return positionId;
    }

    /**
     * 设置职位编号
     *
     * @param positionId 职位编号
     */
    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    /**
     * 获取职位名称
     *
     * @return POSITION_NAME - 职位名称
     */
    public String getPositionName() {
        return positionName;
    }

    /**
     * 设置职位名称
     *
     * @param positionName 职位名称
     */
    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    /**
     * 获取职位等级
     *
     * @return POSITION_LEVEL - 职位等级
     */
    public String getPositionLevel() {
        return positionLevel;
    }

    /**
     * 设置职位等级
     *
     * @param positionLevel 职位等级
     */
    public void setPositionLevel(String positionLevel) {
        this.positionLevel = positionLevel;
    }

    /**
     * 获取创建时间
     *
     * @return CREATE_TIME - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取修改时间
     *
     * @return UPDATE_TIME - 修改时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置修改时间
     *
     * @param updateTime 修改时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}