package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`process`")
public class Process {
    /**
     * 处理编号
     */
    @Id
    @Column(name = "`PROCESS_ID`")
    private Integer processId;

    /**
     * 类型
     */
    @Column(name = "`TYPE`")
    private String type;

    /**
     * 商机编号
     */
    @Column(name = "`BUSINESS_ID`")
    private Integer businessId;

    /**
     * 状态
     */
    @Column(name = "`STATUS`")
    private String status;

    /**
     * 意见
     */
    @Column(name = "`OPINIONS`")
    private String opinions;

    /**
     * 操作员
     */
    @Column(name = "`OPERATOR`")
    private Integer operator;

    /**
     * 创建时间
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    /**
     * 获取处理编号
     *
     * @return PROCESS_ID - 处理编号
     */
    public Integer getProcessId() {
        return processId;
    }

    /**
     * 设置处理编号
     *
     * @param processId 处理编号
     */
    public void setProcessId(Integer processId) {
        this.processId = processId;
    }

    /**
     * 获取类型
     *
     * @return TYPE - 类型
     */
    public String getType() {
        return type;
    }

    /**
     * 设置类型
     *
     * @param type 类型
     */
    public void setType(String type) {
        this.type = type;
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
     * 获取状态
     *
     * @return STATUS - 状态
     */
    public String getStatus() {
        return status;
    }

    /**
     * 设置状态
     *
     * @param status 状态
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * 获取意见
     *
     * @return OPINIONS - 意见
     */
    public String getOpinions() {
        return opinions;
    }

    /**
     * 设置意见
     *
     * @param opinions 意见
     */
    public void setOpinions(String opinions) {
        this.opinions = opinions;
    }

    /**
     * 获取操作员
     *
     * @return OPERATOR - 操作员
     */
    public Integer getOperator() {
        return operator;
    }

    /**
     * 设置操作员
     *
     * @param operator 操作员
     */
    public void setOperator(Integer operator) {
        this.operator = operator;
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
}