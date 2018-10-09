package net.wanho.model;

import javax.persistence.*;

@Table(name = "`log_in`")
public class LogIn {
    /**
     * 用户编号
     */
    @Id
    @Column(name = "`USER_ID`")
    private Integer userId;

    /**
     * 员工编号
     */
    @Column(name = "`EMPLOYEE_ID`")
    private Integer employeeId;

    /**
     * 员工密码
     */
    @Column(name = "`EMM_PASSWORD`")
    private String emmPassword;

    /**
     * 获取用户编号
     *
     * @return USER_ID - 用户编号
     */
    public Integer getUserId() {
        return userId;
    }

    /**
     * 设置用户编号
     *
     * @param userId 用户编号
     */
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

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
     * 获取员工密码
     *
     * @return EMM_PASSWORD - 员工密码
     */
    public String getEmmPassword() {
        return emmPassword;
    }

    /**
     * 设置员工密码
     *
     * @param emmPassword 员工密码
     */
    public void setEmmPassword(String emmPassword) {
        this.emmPassword = emmPassword;
    }
}