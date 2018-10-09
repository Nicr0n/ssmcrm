package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`employee`")
public class Employee {
    /**
     * 员工编号
     */
    @Id
    @Column(name = "`EMPLOYEE_ID`")
    private Integer employeeId;

    /**
     * 员工名称
     */
    @Column(name = "`EMPLOYEE_NAME`")
    private String employeeName;

    /**
     * 部门编号
     */
    @Column(name = "`DEPARTMENT_ID`")
    private Integer departmentId;

    private Department department;

    /**
     * 职位编号
     */
    @Column(name = "`POSITON_ID`")
    private Integer positonId;

    private EmmPosition emmPosition;
    /**
     * 手机号
     */
    @Column(name = "`PHONE`")
    private String phone;

    /**
     * 邮箱
     */
    @Column(name = "`EMAIL`")
    private String email;

    /**
     * 状态
     */
    @Column(name = "`STATUS`")
    private String status;

    /**
     * 上级员工编号
     */
    @Column(name = "`PARENT_EMPLOYEE_ID`")
    private Integer parentEmployeeId;

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
     * 获取员工编号
     *
     * @return EMPLOYEE_ID - 员工编号
     */
    public Integer getEmployeeId() {
        return employeeId;
    }

    /**
     * 设置员工编号
     *
     * @param employeeId 员工编号
     */
    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    /**
     * 获取员工名称
     *
     * @return EMPLOYEE_NAME - 员工名称
     */
    public String getEmployeeName() {
        return employeeName;
    }

    /**
     * 设置员工名称
     *
     * @param employeeName 员工名称
     */
    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

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
     * 获取职位编号
     *
     * @return POSITON_ID - 职位编号
     */
    public Integer getPositonId() {
        return positonId;
    }

    /**
     * 设置职位编号
     *
     * @param positonId 职位编号
     */
    public void setPositonId(Integer positonId) {
        this.positonId = positonId;
    }

    /**
     * 获取手机号
     *
     * @return PHONE - 手机号
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置手机号
     *
     * @param phone 手机号
     */
    public void setPhone(String phone) {
        this.phone = phone;
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
     * 获取上级员工编号
     *
     * @return PARENT_EMPLOYEE_ID - 上级员工编号
     */
    public Integer getParentEmployeeId() {
        return parentEmployeeId;
    }

    /**
     * 设置上级员工编号
     *
     * @param parentEmployeeId 上级员工编号
     */
    public void setParentEmployeeId(Integer parentEmployeeId) {
        this.parentEmployeeId = parentEmployeeId;
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

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public EmmPosition getEmmPosition() {
        return emmPosition;
    }

    public void setEmmPosition(EmmPosition emmPosition) {
        this.emmPosition = emmPosition;
    }
}