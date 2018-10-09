package net.wanho.model;

import javax.persistence.*;

@Table(name = "`position_menu_relations`")
public class PositionMenuRelations {
    /**
     * 关系编号
     */
    @Id
    @Column(name = "`RELATION_ID`")
    private Integer relationId;

    /**
     * 职位编号
     */
    @Column(name = "`POSITION_ID`")
    private Integer positionId;

    /**
     * 菜单编号
     */
    @Column(name = "`MENU_ID`")
    private Integer menuId;

    /**
     * 获取关系编号
     *
     * @return RELATION_ID - 关系编号
     */
    public Integer getRelationId() {
        return relationId;
    }

    /**
     * 设置关系编号
     *
     * @param relationId 关系编号
     */
    public void setRelationId(Integer relationId) {
        this.relationId = relationId;
    }

    /**
     * 获取职位编号
     *
     * @return POSITION_ID - 职位编号
     */
    public Integer getPositionId() {
        return positionId;
    }

    /**
     * 设置职位编号
     *
     * @param positionId 职位编号
     */
    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    /**
     * 获取菜单编号
     *
     * @return MENU_ID - 菜单编号
     */
    public Integer getMenuId() {
        return menuId;
    }

    /**
     * 设置菜单编号
     *
     * @param menuId 菜单编号
     */
    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }
}