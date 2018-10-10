package net.wanho.model;

import java.util.Date;
import java.util.List;
import javax.persistence.*;
import javax.swing.text.Position;

@Table(name = "`menu`")
public class Menu {
    /**
     * 菜单 编号
     */
    @Id
    @Column(name = "`MENU_ID`")
    private Integer menuId;

    /**
     * 菜单名称
     */
    @Column(name = "`MENU_NAME`")
    private String menuName;

    /**
     * 菜单链接
     */
    @Column(name = "`MENU_URL`")
    private String menuUrl;

    /**
     * 图片
     */
    @Column(name = "`PICTURES`")
    private String pictures;

    /**
     * 状态
     */
    @Column(name = "`STATUS`")
    private String status;

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
     * 父菜单名称
     */
    @Column(name = "`PARENT_MENU_ID`")
    private Integer parentMenuId;

    /**
     * 绑定的职位
     */
    private List<PositionMenuRelations> bindPosition;
    /**
     * 获取菜单 编号
     *
     * @return MENU_ID - 菜单 编号
     */
    public Integer getMenuId() {
        return menuId;
    }

    /**
     * 设置菜单 编号
     *
     * @param menuId 菜单 编号
     */
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    /**
     * 获取菜单名称
     *
     * @return MENU_NAME - 菜单名称
     */
    public String getMenuName() {
        return menuName;
    }

    /**
     * 设置菜单名称
     *
     * @param menuName 菜单名称
     */
    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    /**
     * 获取菜单链接
     *
     * @return MENU_URL - 菜单链接
     */
    public String getMenuUrl() {
        return menuUrl;
    }

    /**
     * 设置菜单链接
     *
     * @param menuUrl 菜单链接
     */
    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl;
    }

    /**
     * 获取图片
     *
     * @return PICTURES - 图片
     */
    public String getPictures() {
        return pictures;
    }

    /**
     * 设置图片
     *
     * @param pictures 图片
     */
    public void setPictures(String pictures) {
        this.pictures = pictures;
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
     * 获取父菜单名称
     *
     * @return PARENT_MENU_ID - 父菜单名称
     */
    public Integer getParentMenuId() {
        return parentMenuId;
    }

    /**
     * 设置父菜单名称
     *
     * @param parentMenuId 父菜单名称
     */
    public void setParentMenuId(Integer parentMenuId) {
        this.parentMenuId = parentMenuId;
    }

    public List<PositionMenuRelations> getBindPosition() {
        return bindPosition;
    }

    public void setBindPosition(List<PositionMenuRelations> bindPosition) {
        this.bindPosition = bindPosition;
    }
}