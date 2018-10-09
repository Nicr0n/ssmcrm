package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`orders`")
public class Orders {
    /**
     * 订单编号
     */
    @Id
    @Column(name = "`ORDER_ID`")
    private Integer orderId;

    @Column(name = "`ORDER_SEQ`")
    private String orderSeq;

    /**
     * 标题
     */
    @Column(name = "`TITLE`")
    private String title;

    /**
     * 客户编号
     */
    @Column(name = "`CUSTOMER_ID`")
    private Integer customerId;

    /**
     * 总金额
     */
    @Column(name = "`TOTAL_MONEY`")
    private Long totalMoney;

    /**
     * 状态
     */
    @Column(name = "`STATUS`")
    private String status;

    /**
     * 操作员
     */
    @Column(name = "`OPERATOR`")
    private Integer operator;

    /**
     * 订单时间
     */
    @Column(name = "`ORDER_TIME`")
    private Date orderTime;

    /**
     * 创建时间
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    /**
     * 订单类型
     */
    @Column(name = "`ORDER_TYPE`")
    private String orderType;

    /**
     * 获取订单编号
     *
     * @return ORDER_ID - 订单编号
     */
    public Integer getOrderId() {
        return orderId;
    }

    /**
     * 设置订单编号
     *
     * @param orderId 订单编号
     */
    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    /**
     * @return ORDER_SEQ
     */
    public String getOrderSeq() {
        return orderSeq;
    }

    /**
     * @param orderSeq
     */
    public void setOrderSeq(String orderSeq) {
        this.orderSeq = orderSeq;
    }

    /**
     * 获取标题
     *
     * @return TITLE - 标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置标题
     *
     * @param title 标题
     */
    public void setTitle(String title) {
        this.title = title;
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
     * 获取总金额
     *
     * @return TOTAL_MONEY - 总金额
     */
    public Long getTotalMoney() {
        return totalMoney;
    }

    /**
     * 设置总金额
     *
     * @param totalMoney 总金额
     */
    public void setTotalMoney(Long totalMoney) {
        this.totalMoney = totalMoney;
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
     * 获取订单时间
     *
     * @return ORDER_TIME - 订单时间
     */
    public Date getOrderTime() {
        return orderTime;
    }

    /**
     * 设置订单时间
     *
     * @param orderTime 订单时间
     */
    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
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
     * 获取订单类型
     *
     * @return ORDER_TYPE - 订单类型
     */
    public String getOrderType() {
        return orderType;
    }

    /**
     * 设置订单类型
     *
     * @param orderType 订单类型
     */
    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }
}