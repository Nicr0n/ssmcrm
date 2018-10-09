package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`link_man`")
public class LinkMan {
    /**
     * 联系人编号
     */
    @Id
    @Column(name = "`LINK_MAIN_ID`")
    private Integer linkMainId;

    /**
     * 名称
     */
    @Column(name = "`NAME`")
    private String name;

    /**
     * 性别
     */
    @Column(name = "`SEX`")
    private String sex;

    /**
     * 职位
     */
    @Column(name = "`POSITION`")
    private String position;

    /**
     * 昵称
     */
    @Column(name = "`NICKNAME`")
    private String nickname;

    /**
     * 手机号
     */
    @Column(name = "`PHONENUM`")
    private Integer phonenum;

    /**
     * 邮箱
     */
    @Column(name = "`EMAIL`")
    private String email;

    /**
     * qq
     */
    @Column(name = "`QQ`")
    private Integer qq;

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
     * 备注
     */
    @Column(name = "`REMARKS`")
    private String remarks;

    /**
     * 二维码
     */
    @Column(name = "`QR_CODE`")
    private String qrCode;

    /**
     * 客户编号
     */
    @Column(name = "`CUSTOMER_ID`")
    private Integer customerId;

    /**
     * 获取联系人编号
     *
     * @return LINK_MAIN_ID - 联系人编号
     */
    public Integer getLinkMainId() {
        return linkMainId;
    }

    /**
     * 设置联系人编号
     *
     * @param linkMainId 联系人编号
     */
    public void setLinkMainId(Integer linkMainId) {
        this.linkMainId = linkMainId;
    }

    /**
     * 获取名称
     *
     * @return NAME - 名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置名称
     *
     * @param name 名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取性别
     *
     * @return SEX - 性别
     */
    public String getSex() {
        return sex;
    }

    /**
     * 设置性别
     *
     * @param sex 性别
     */
    public void setSex(String sex) {
        this.sex = sex;
    }

    /**
     * 获取职位
     *
     * @return POSITION - 职位
     */
    public String getPosition() {
        return position;
    }

    /**
     * 设置职位
     *
     * @param position 职位
     */
    public void setPosition(String position) {
        this.position = position;
    }

    /**
     * 获取昵称
     *
     * @return NICKNAME - 昵称
     */
    public String getNickname() {
        return nickname;
    }

    /**
     * 设置昵称
     *
     * @param nickname 昵称
     */
    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    /**
     * 获取手机号
     *
     * @return PHONENUM - 手机号
     */
    public Integer getPhonenum() {
        return phonenum;
    }

    /**
     * 设置手机号
     *
     * @param phonenum 手机号
     */
    public void setPhonenum(Integer phonenum) {
        this.phonenum = phonenum;
    }

    /**
     * 获取邮箱
     *
     * @return EMAIL - 邮箱
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置邮箱
     *
     * @param email 邮箱
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取qq
     *
     * @return QQ - qq
     */
    public Integer getQq() {
        return qq;
    }

    /**
     * 设置qq
     *
     * @param qq qq
     */
    public void setQq(Integer qq) {
        this.qq = qq;
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
     * 获取备注
     *
     * @return REMARKS - 备注
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * 设置备注
     *
     * @param remarks 备注
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    /**
     * 获取二维码
     *
     * @return QR_CODE - 二维码
     */
    public String getQrCode() {
        return qrCode;
    }

    /**
     * 设置二维码
     *
     * @param qrCode 二维码
     */
    public void setQrCode(String qrCode) {
        this.qrCode = qrCode;
    }

    /**
     * 获取客户编号
     *
     * @return CUSTOMER_ID - 客户编号
     */
    public Integer getCustomerId() {
        return customerId;
    }

    /**
     * 设置客户编号
     *
     * @param customerId 客户编号
     */
    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }
}