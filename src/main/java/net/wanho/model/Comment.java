package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`comment`")
public class Comment {
    /**
     * 评论编号
     */
    @Id
    @Column(name = "`COMMENT_ID`")
    private Integer commentId;

    /**
     * 记录编号
     */
    @Column(name = "`RECORD_ID`")
    private Integer recordId;

    /**
     * 员工编号
     */
    @Column(name = "`COMMENT_EMPLOYEE`")
    private Integer commentEmployee;

    /**
     * 详情
     */
    @Column(name = "`DETAIL`")
    private String detail;

    /**
     * 创建时间
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    /**
     * 获取评论编号
     *
     * @return COMMENT_ID - 评论编号
     */
    public Integer getCommentId() {
        return commentId;
    }

    /**
     * 设置评论编号
     *
     * @param commentId 评论编号
     */
    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

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
     * 获取员工编号
     *
     * @return COMMENT_EMPLOYEE - 员工编号
     */
    public Integer getCommentEmployee() {
        return commentEmployee;
    }

    /**
     * 设置员工编号
     *
     * @param commentEmployee 员工编号
     */
    public void setCommentEmployee(Integer commentEmployee) {
        this.commentEmployee = commentEmployee;
    }

    /**
     * 获取详情
     *
     * @return DETAIL - 详情
     */
    public String getDetail() {
        return detail;
    }

    /**
     * 设置详情
     *
     * @param detail 详情
     */
    public void setDetail(String detail) {
        this.detail = detail;
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
}