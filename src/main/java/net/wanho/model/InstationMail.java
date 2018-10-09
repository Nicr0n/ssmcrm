package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`instation_mail`")
public class InstationMail {
    /**
     * 邮箱编号
     */
    @Id
    @Column(name = "`MAIL_ID`")
    private Integer mailId;

    /**
     * 发件人编号
     */
    @Column(name = "`SENDER_ID`")
    private Integer senderId;

    /**
     * 收件人编号
     */
    @Column(name = "`RECEIVER_ID`")
    private Integer receiverId;

    /**
     * 主题
     */
    @Column(name = "`THEME`")
    private String theme;

    /**
     * 状态
     */
    @Column(name = "`STATUS`")
    private String status;

    /**
     * 备注
     */
    @Column(name = "`REMARK`")
    private String remark;

    /**
     * 创建时间
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    /**
     * 修改时间
     */
    @Column(name = "`UPDATE_TIME`")
    private Date updateTime;

    /**
     * 内容
     */
    @Column(name = "`CONTENT`")
    private String content;

    /**
     * 获取邮箱编号
     *
     * @return MAIL_ID - 邮箱编号
     */
    public Integer getMailId() {
        return mailId;
    }

    /**
     * 设置邮箱编号
     *
     * @param mailId 邮箱编号
     */
    public void setMailId(Integer mailId) {
        this.mailId = mailId;
    }

    /**
     * 获取发件人编号
     *
     * @return SENDER_ID - 发件人编号
     */
    public Integer getSenderId() {
        return senderId;
    }

    /**
     * 设置发件人编号
     *
     * @param senderId 发件人编号
     */
    public void setSenderId(Integer senderId) {
        this.senderId = senderId;
    }

    /**
     * 获取收件人编号
     *
     * @return RECEIVER_ID - 收件人编号
     */
    public Integer getReceiverId() {
        return receiverId;
    }

    /**
     * 设置收件人编号
     *
     * @param receiverId 收件人编号
     */
    public void setReceiverId(Integer receiverId) {
        this.receiverId = receiverId;
    }

    /**
     * 获取主题
     *
     * @return THEME - 主题
     */
    public String getTheme() {
        return theme;
    }

    /**
     * 设置主题
     *
     * @param theme 主题
     */
    public void setTheme(String theme) {
        this.theme = theme;
    }

    /**
     * 获取状态
     *
     * @return STATUS - 状态
     */
    public String getStatus() {
        return status;
    }

    /**
     * 设置状态
     *
     * @param status 状态
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * 获取备注
     *
     * @return REMARK - 备注
     */
    public String getRemark() {
        return remark;
    }

    /**
     * 设置备注
     *
     * @param remark 备注
     */
    public void setRemark(String remark) {
        this.remark = remark;
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
}