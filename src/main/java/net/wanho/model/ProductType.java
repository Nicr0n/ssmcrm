package net.wanho.model;

import javax.persistence.*;

@Table(name = "`product_type`")
public class ProductType {
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
     * 类型描述
     */
    @Column(name = "`TYPE_DESCRIPTION`")
    private String typeDescription;

    /**
     * 父类型编号
     */
    @Column(name = "`PARENT_TYPE_ID`")
    private Integer parentTypeId;

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

    /**
     * 获取类型描述
     *
     * @return TYPE_DESCRIPTION - 类型描述
     */
    public String getTypeDescription() {
        return typeDescription;
    }

    /**
     * 设置类型描述
     *
     * @param typeDescription 类型描述
     */
    public void setTypeDescription(String typeDescription) {
        this.typeDescription = typeDescription;
    }

    /**
     * 获取父类型编号
     *
     * @return PARENT_TYPE_ID - 父类型编号
     */
    public Integer getParentTypeId() {
        return parentTypeId;
    }

    /**
     * 设置父类型编号
     *
     * @param parentTypeId 父类型编号
     */
    public void setParentTypeId(Integer parentTypeId) {
        this.parentTypeId = parentTypeId;
    }
}