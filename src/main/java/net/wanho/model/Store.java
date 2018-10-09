package net.wanho.model;

import javax.persistence.*;

@Table(name = "`store`")
public class Store {
    /**
     * 商店编号
     */
    @Id
    @Column(name = "`STORE_ID`")
    private Integer storeId;

    /**
     * 商店名称
     */
    @Column(name = "`STORE_NAME`")
    private String storeName;

    /**
     * 描述
     */
    @Column(name = "`DESCRIPTION`")
    private String description;

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
     * 获取商店名称
     *
     * @return STORE_NAME - 商店名称
     */
    public String getStoreName() {
        return storeName;
    }

    /**
     * 设置商店名称
     *
     * @param storeName 商店名称
     */
    public void setStoreName(String storeName) {
        this.storeName = storeName;
    }

    /**
     * 获取描述
     *
     * @return DESCRIPTION - 描述
     */
    public String getDescription() {
        return description;
    }

    /**
     * 设置描述
     *
     * @param description 描述
     */
    public void setDescription(String description) {
        this.description = description;
    }
}