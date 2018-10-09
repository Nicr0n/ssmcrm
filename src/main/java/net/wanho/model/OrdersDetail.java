package net.wanho.model;

import javax.persistence.*;

@Table(name = "`orders_detail`")
public class OrdersDetail {
    /**
     * 详情编号
     */
    @Id
    @Column(name = "`DETAIL_ID`")
    private Integer detailId;

    /**
     * 订单编号
     */
    @Column(name = "`ORDER_ID`")
    private Integer orderId;

    /**
     * 商店编号
     */
    @Column(name = "`STORE_ID`")
    private Integer storeId;

    /**
     * 产品编号
     */
    @Column(name = "`PRODUCT_ID`")
    private Integer productId;

    /**
     * 购买数量
     */
    @Column(name = "`BUY_NUMS`")
    private Integer buyNums;

    /**
     * 实际单价
     */
    @Column(name = "`REAL_PRICES`")
    private Long realPrices;

    /**
     * 实际总金额
     */
    @Column(name = "`REAL_TOTALPRICE`")
    private Long realTotalprice;

    /**
     * 获取详情编号
     *
     * @return DETAIL_ID - 详情编号
     */
    public Integer getDetailId() {
        return detailId;
    }

    /**
     * 设置详情编号
     *
     * @param detailId 详情编号
     */
    public void setDetailId(Integer detailId) {
        this.detailId = detailId;
    }

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
     * 获取商店编号
     *
     * @return STORE_ID - 商店编号
     */
    public Integer getStoreId() {
        return storeId;
    }

    /**
     * 设置商店编号
     *
     * @param storeId 商店编号
     */
    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    /**
     * 获取产品编号
     *
     * @return PRODUCT_ID - 产品编号
     */
    public Integer getProductId() {
        return productId;
    }

    /**
     * 设置产品编号
     *
     * @param productId 产品编号
     */
    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    /**
     * 获取购买数量
     *
     * @return BUY_NUMS - 购买数量
     */
    public Integer getBuyNums() {
        return buyNums;
    }

    /**
     * 设置购买数量
     *
     * @param buyNums 购买数量
     */
    public void setBuyNums(Integer buyNums) {
        this.buyNums = buyNums;
    }

    /**
     * 获取实际单价
     *
     * @return REAL_PRICES - 实际单价
     */
    public Long getRealPrices() {
        return realPrices;
    }

    /**
     * 设置实际单价
     *
     * @param realPrices 实际单价
     */
    public void setRealPrices(Long realPrices) {
        this.realPrices = realPrices;
    }

    /**
     * 获取实际总金额
     *
     * @return REAL_TOTALPRICE - 实际总金额
     */
    public Long getRealTotalprice() {
        return realTotalprice;
    }

    /**
     * 设置实际总金额
     *
     * @param realTotalprice 实际总金额
     */
    public void setRealTotalprice(Long realTotalprice) {
        this.realTotalprice = realTotalprice;
    }
}