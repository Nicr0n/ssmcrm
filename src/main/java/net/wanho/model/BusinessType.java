package net.wanho.model;

import javax.persistence.*;

@Table(name = "`business_type`")
public class BusinessType {
    /**
     * 类型编号
     */
    @Id
    @Column(name = "`TYPE_ID`")
    private Integer typeId;

    /**
     * 类型名称
     */
    @Column(name = "`TYPE_NAME`")
    private String typeName;

    /**
     * 获取类型编号
     *
     * @return TYPE_ID - 类型编号
     */
    public Integer getTypeId() {
        return typeId;
    }

    /**
     * 设置类型编号
     *
     * @param typeId 类型编号
     */
    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    /**
     * 获取类型名称
     *
     * @return TYPE_NAME - 类型名称
     */
    public String getTypeName() {
        return typeName;
    }

    /**
     * 设置类型名称
     *
     * @param typeName 类型名称
     */
    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}