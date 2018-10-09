package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`product_inventory`")
public class ProductInventory {
    /**
     * 库存编号
     */
    @Id
    @Column(name = "`INVENTORY_ID`")
    private Integer inventoryId;

    /**
     * 产品编号
     */
    @Column(name = "`PRODUCT_ID`")
    private Integer productId;

    /**
     * 商店id
     */
    @Column(name = "`STORE_ID`")
    private Integer storeId;

    /**
     * 库存
     */
    @Column(name = "`INVENTORY`")
    private Long inventory;

    /**
     * 修改时间
     */
    @Column(name = "`UPDATE_TIME`")
    private Date updateTime;

    /**
     * 获取库存编号
     *
     * @return INVENTORY_ID - 库存编号
     */
    public Integer getInventoryId() {
        return inventoryId;
    }

    /**
     * 设置库存编号
     *
     * @param inventoryId 库存编号
     */
    public void setInventoryId(Integer inventoryId) {
        this.inventoryId = inventoryId;
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
     * 获取商店id
     *
     * @return STORE_ID - 商店id
     */
    public Integer getStoreId() {
        return storeId;
    }

    /**
     * 设置商店id
     *
     * @param storeId 商店id
     */
    public void setStoreId(Integer storeId) {
        this.storeId = storeId;
    }

    /**
     * 获取库存
     *
     * @return INVENTORY - 库存
     */
    public Long getInventory() {
        return inventory;
    }

    /**
     * 设置库存
     *
     * @param inventory 库存
     */
    public void setInventory(Long inventory) {
        this.inventory = inventory;
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