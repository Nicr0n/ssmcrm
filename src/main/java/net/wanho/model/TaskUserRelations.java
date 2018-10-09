package net.wanho.model;

import javax.persistence.*;

@Table(name = "`task_user_relations`")
public class TaskUserRelations {
    /**
     * 关系编号
     */
    @Id
    @Column(name = "`RELATION_ID`")
    private Integer relationId;

    /**
     * 任务编号
     */
    @Column(name = "`TASK_ID`")
    private Integer taskId;

    /**
     * 员工编号
     */
    @Column(name = "`EMPLOYEE_ID`")
    private Integer employeeId;

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
     * 获取任务编号
     *
     * @return TASK_ID - 任务编号
     */
    public Integer getTaskId() {
        return taskId;
    }

    /**
     * 设置任务编号
     *
     * @param taskId 任务编号
     */
    public void setTaskId(Integer taskId) {
        this.taskId = taskId;
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
}