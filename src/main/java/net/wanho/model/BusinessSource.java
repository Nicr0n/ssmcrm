package net.wanho.model;

import javax.persistence.*;

@Table(name = "`business_source`")
public class BusinessSource {
    /**
     * 资源编号
     */
    @Id
    @Column(name = "`SOURCE_ID`")
    private Integer sourceId;

    /**
     * 资源名称
     */
    @Column(name = "`SOURCE_NAME`")
    private String sourceName;

    /**
     * 获取资源编号
     *
     * @return SOURCE_ID - 资源编号
     */
    public Integer getSourceId() {
        return sourceId;
    }

    /**
     * 设置资源编号
     *
     * @param sourceId 资源编号
     */
    public void setSourceId(Integer sourceId) {
        this.sourceId = sourceId;
    }

    /**
     * 获取资源名称
     *
     * @return SOURCE_NAME - 资源名称
     */
    public String getSourceName() {
        return sourceName;
    }

    /**
     * 设置资源名称
     *
     * @param sourceName 资源名称
     */
    public void setSourceName(String sourceName) {
        this.sourceName = sourceName;
    }
}