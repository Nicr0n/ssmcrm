package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`daily_record`")
public class DailyRecord {
    /**
     * 记录编号
     */
    @Id
    @Column(name = "`RECORD_ID`")
    private Integer recordId;

    /**
     * 创建者编号
     */
    @Column(name = "`CREATOR`")
    private Integer creator;

    /**
     * 标题
     */
    @Column(name = "`TITLE`")
    private String title;

    /**
     * 内容
     */
    @Column(name = "`CONTENT`")
    private String content;

    /**
     * 创建时间
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    @Column(name = "`RECORDLX`")
    private String recordlx;

    /**
     * 修改时间
     */
    @Column(name = "`UPDATE_TIME`")
    private Date updateTime;

    /**
     * 获取记录编号
     *
     * @return RECORD_ID - 记录编号
     */
    public Integer getRecordId() {
        return recordId;
    }

    /**
     * 设置记录编号
     *
     * @param recordId 记录编号
     */
    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
    }

    /**
     * 获取创建者编号
     *
     * @return CREATOR - 创建者编号
     */
    public Integer getCreator() {
        return creator;
    }

    /**
     * 设置创建者编号
     *
     * @param creator 创建者编号
     */
    public void setCreator(Integer creator) {
        this.creator = creator;
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
     * 获取内容
     *
     * @return CONTENT - 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置内容
     *
     * @param content 内容
     */
    public void setContent(String content) {
        this.content = content;
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
     * @return RECORDLX
     */
    public String getRecordlx() {
        return recordlx;
    }

    /**
     * @param recordlx
     */
    public void setRecordlx(String recordlx) {
        this.recordlx = recordlx;
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