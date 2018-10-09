package net.wanho.model;

import javax.persistence.*;

@Table(name = "`customer_source`")
public class CustomerSource {
    /**
     * 客户来源ID
     */
    @Id
    @Column(name = "`SOURCE_ID`")
    private Integer sourceId;

    /**
     * 来源名称
     */
    @Column(name = "`SOURCE_NAME`")
    private String sourceName;

    /**
     * 获取客户来源ID
     *
     * @return SOURCE_ID - 客户来源ID
     */
    public Integer getSourceId() {
        return sourceId;
    }

    /**
     * 设置客户来源ID
     *
     * @param sourceId 客户来源ID
     */
    public void setSourceId(Integer sourceId) {
        this.sourceId = sourceId;
    }

    /**
     * 获取来源名称
     *
     * @return SOURCE_NAME - 来源名称
     */
    public String getSourceName() {
        return sourceName;
    }

    /**
     * 设置来源名称
     *
     * @param sourceName 来源名称
     */
    public void setSourceName(String sourceName) {
        this.sourceName = sourceName;
    }
}