package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`business`")
public class Business {
    /**
     * 商机编号
     */
    @Id
    @Column(name = "`BUSINESS_ID`")
    private Integer businessId;

    /**
     * 客户编号
     */
    @Column(name = "`CUSTOMER_ID`")
    private Integer customerId;

    /**
     * 联系人编号
     */
    @Column(name = "`LINK_MAIN_ID`")
    private Integer linkMainId;

    /**
     * 商机名称
     */
    @Column(name = "`BUSINESS_NAME`")
    private String businessName;

    /**
     * 商家类型编号
     */
    @Column(name = "`BUSINESS_TYPE_ID`")
    private Integer businessTypeId;

    /**
     * 商机状态
     */
    @Column(name = "`STATUS`")
    private String status;

    /**
     * 商机资源编号
     */
    @Column(name = "`BUSINESS_SOURCE_ID`")
    private Integer businessSourceId;

    /**
     * 预计价格
     */
    @Column(name = "`PERSALE_PRICE`")
    private Long persalePrice;

    /**
     * 可能性
     */
    @Column(name = "`PROBABILITY`")
    private Short probability;

    /**
     * 下次联系时间
     */
    @Column(name = "`VISIT_TIME`")
    private Date visitTime;

    /**
     * 下次联系内容
     */
    @Column(name = "`VISIT_CONTENT`")
    private String visitContent;

    /**
     * 修改时间
     */
    @Column(name = "`UPDATE_TIME`")
    private Date updateTime;

    /**
     * 员工编号
     */
    @Column(name = "`EMPLOYEE_ID`")
    private Integer employeeId;

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
     * 获取客户编号
     *
     * @return CUSTOMER_ID - 客户编号
     */
    public Integer getCustomerId() {
        return customerId;
    }

    /**
     * 设置客户编号
     *
     * @param customerId 客户编号
     */
    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    /**
     * 获取联系人编号
     *
     * @return LINK_MAIN_ID - 联系人编号
     */
    public Integer getLinkMainId() {
        return linkMainId;
    }

    /**
     * 设置联系人编号
     *
     * @param linkMainId 联系人编号
     */
    public void setLinkMainId(Integer linkMainId) {
        this.linkMainId = linkMainId;
    }

    /**
     * 获取商机名称
     *
     * @return BUSINESS_NAME - 商机名称
     */
    public String getBusinessName() {
        return businessName;
    }

    /**
     * 设置商机名称
     *
     * @param businessName 商机名称
     */
    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    /**
     * 获取商家类型编号
     *
     * @return BUSINESS_TYPE_ID - 商家类型编号
     */
    public Integer getBusinessTypeId() {
        return businessTypeId;
    }

    /**
     * 设置商家类型编号
     *
     * @param businessTypeId 商家类型编号
     */
    public void setBusinessTypeId(Integer businessTypeId) {
        this.businessTypeId = businessTypeId;
    }

    /**
     * 获取商机状态
     *
     * @return STATUS - 商机状态
     */
    public String getStatus() {
        return status;
    }

    /**
     * 设置商机状态
     *
     * @param status 商机状态
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * 获取商机资源编号
     *
     * @return BUSINESS_SOURCE_ID - 商机资源编号
     */
    public Integer getBusinessSourceId() {
        return businessSourceId;
    }

    /**
     * 设置商机资源编号
     *
     * @param businessSourceId 商机资源编号
     */
    public void setBusinessSourceId(Integer businessSourceId) {
        this.businessSourceId = businessSourceId;
    }

    /**
     * 获取预计价格
     *
     * @return PERSALE_PRICE - 预计价格
     */
    public Long getPersalePrice() {
        return persalePrice;
    }

    /**
     * 设置预计价格
     *
     * @param persalePrice 预计价格
     */
    public void setPersalePrice(Long persalePrice) {
        this.persalePrice = persalePrice;
    }

    /**
     * 获取可能性
     *
     * @return PROBABILITY - 可能性
     */
    public Short getProbability() {
        return probability;
    }

    /**
     * 设置可能性
     *
     * @param probability 可能性
     */
    public void setProbability(Short probability) {
        this.probability = probability;
    }

    /**
     * 获取下次联系时间
     *
     * @return VISIT_TIME - 下次联系时间
     */
    public Date getVisitTime() {
        return visitTime;
    }

    /**
     * 设置下次联系时间
     *
     * @param visitTime 下次联系时间
     */
    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    /**
     * 获取下次联系内容
     *
     * @return VISIT_CONTENT - 下次联系内容
     */
    public String getVisitContent() {
        return visitContent;
    }

    /**
     * 设置下次联系内容
     *
     * @param visitContent 下次联系内容
     */
    public void setVisitContent(String visitContent) {
        this.visitContent = visitContent;
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

    /**
     * 获取员工编号
     *
     * @return EMPLOYEE_ID - 员工编号
     */
    public Integer getEmployeeId() {
        return employeeId;
    }

    /**
     * 设置员工编号
     *
     * @param employeeId 员工编号
     */
    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }
}