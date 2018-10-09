package net.wanho.model;

import javax.persistence.*;

@Table(name = "`department`")
public class Department {
    /**
     * 部门编号
     */
    @Id
    @Column(name = "`DEPARTMENT_ID`")
    private Integer departmentId;

    /**
     * 部门名称
     */
    @Column(name = "`DEPARTMENT_NAME`")
    private String departmentName;

    /**
     * 获取部门编号
     *
     * @return DEPARTMENT_ID - 部门编号
     */
    public Integer getDepartmentId() {
        return departmentId;
    }

    /**
     * 设置部门编号
     *
     * @param departmentId 部门编号
     */
    public void setDepartmentId(Integer departmentId) {
        this.departmentId = departmentId;
    }

    /**
     * 获取部门名称
     *
     * @return DEPARTMENT_NAME - 部门名称
     */
    public String getDepartmentName() {
        return departmentName;
    }

    /**
     * 设置部门名称
     *
     * @param departmentName 部门名称
     */
    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
    }
}