package net.wanho.model;

import javax.persistence.*;

@Table(name = "`working_field`")
public class WorkingField {
    /**
     * 领域编号
     */
    @Id
    @Column(name = "`FIELD_ID`")
    private Integer fieldId;

    /**
     * 领域名称
     */
    @Column(name = "`FIELD_NAME`")
    private String fieldName;

    /**
     * 获取领域编号
     *
     * @return FIELD_ID - 领域编号
     */
    public Integer getFieldId() {
        return fieldId;
    }

    /**
     * 设置领域编号
     *
     * @param fieldId 领域编号
     */
    public void setFieldId(Integer fieldId) {
        this.fieldId = fieldId;
    }

    /**
     * 获取领域名称
     *
     * @return FIELD_NAME - 领域名称
     */
    public String getFieldName() {
        return fieldName;
    }

    /**
     * 设置领域名称
     *
     * @param fieldName 领域名称
     */
    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }
}