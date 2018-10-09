package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`advanced_log`")
public class AdvancedLog {
    /**
     * 日志编号
     */
    @Id
    @Column(name = "`LOG_ID`")
    private Integer logId;

    /**
     * 商机编号
     */
    @Column(name = "`BUSINESS_ID`")
    private Integer businessId;

    /**
     * 创建人
     */
    @Column(name = "`CREATOR`")
    private Integer creator;

    /**
     * 修改前内容
     */
    @Column(name = "`ADVANCE_CONTENT`")
    private String advanceContent;

    /**
     * 创建时间
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    /**
     * 修改前状态
     */
    @Column(name = "`ADVANCE_STATUS`")
    private String advanceStatus;

    /**
     * 获取日志编号
     *
     * @return LOG_ID - 日志编号
     */
    public Integer getLogId() {
        return logId;
    }

    /**
     * 设置日志编号
     *
     * @param logId 日志编号
     */
    public void setLogId(Integer logId) {
        this.logId = logId;
    }

    /**
     * 获取商机编号
     *
     * @return BUSINESS_ID - 商机编号
     */
    public Integer getBusinessId() {
        return businessId;
    }

    /**
     * 设置商机编号
     *
     * @param businessId 商机编号
     */
    public void setBusinessId(Integer businessId) {
        this.businessId = businessId;
    }

    /**
     * 获取创建人
     *
     * @return CREATOR - 创建人
     */
    public Integer getCreator() {
        return creator;
    }

    /**
     * 设置创建人
     *
     * @param creator 创建人
     */
    public void setCreator(Integer creator) {
        this.creator = creator;
    }

    /**
     * 获取修改前内容
     *
     * @return ADVANCE_CONTENT - 修改前内容
     */
    public String getAdvanceContent() {
        return advanceContent;
    }

    /**
     * 设置修改前内容
     *
     * @param advanceContent 修改前内容
     */
    public void setAdvanceContent(String advanceContent) {
        this.advanceContent = advanceContent;
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
     * 获取修改前状态
     *
     * @return ADVANCE_STATUS - 修改前状态
     */
    public String getAdvanceStatus() {
        return advanceStatus;
    }

    /**
     * 设置修改前状态
     *
     * @param advanceStatus 修改前状态
     */
    public void setAdvanceStatus(String advanceStatus) {
        this.advanceStatus = advanceStatus;
    }
}