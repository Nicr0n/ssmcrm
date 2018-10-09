package net.wanho.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "`individual_task`")
public class IndividualTask {
    /**
     * 任务编号
     */
    @Id
    @Column(name = "`TASK_ID`")
    private Integer taskId;

    /**
     * 话题
     */
    @Column(name = "`TOPIC`")
    private String topic;

    /**
     * 责任人编号
     */
    @Column(name = "`RESPONSIBLE_PERSON`")
    private Integer responsiblePerson;

    /**
     * 结束时间
     */
    @Column(name = "`END_TIME`")
    private Date endTime;

    /**
     * 优先级
     */
    @Column(name = "`PRIORITY`")
    private String priority;

    /**
     * 状态
     */
    @Column(name = "`STATUS`")
    private String status;

    /**
     * 创建人
     */
    @Column(name = "`CREATE_TIME`")
    private Date createTime;

    /**
     * 操作人编号
     */
    @Column(name = "`OPERATOR`")
    private Integer operator;

    /**
     * 链接地址
     */
    @Column(name = "`LINK_URL`")
    private String linkUrl;

    /**
     * 任务类型
     */
    @Column(name = "`TASK_TYPE`")
    private String taskType;

    /**
     * 描述
     */
    @Column(name = "`DESCRIPTION`")
    private String description;

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
     * 获取话题
     *
     * @return TOPIC - 话题
     */
    public String getTopic() {
        return topic;
    }

    /**
     * 设置话题
     *
     * @param topic 话题
     */
    public void setTopic(String topic) {
        this.topic = topic;
    }

    /**
     * 获取责任人编号
     *
     * @return RESPONSIBLE_PERSON - 责任人编号
     */
    public Integer getResponsiblePerson() {
        return responsiblePerson;
    }

    /**
     * 设置责任人编号
     *
     * @param responsiblePerson 责任人编号
     */
    public void setResponsiblePerson(Integer responsiblePerson) {
        this.responsiblePerson = responsiblePerson;
    }

    /**
     * 获取结束时间
     *
     * @return END_TIME - 结束时间
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * 设置结束时间
     *
     * @param endTime 结束时间
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    /**
     * 获取优先级
     *
     * @return PRIORITY - 优先级
     */
    public String getPriority() {
        return priority;
    }

    /**
     * 设置优先级
     *
     * @param priority 优先级
     */
    public void setPriority(String priority) {
        this.priority = priority;
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
     * 获取创建人
     *
     * @return CREATE_TIME - 创建人
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建人
     *
     * @param createTime 创建人
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取操作人编号
     *
     * @return OPERATOR - 操作人编号
     */
    public Integer getOperator() {
        return operator;
    }

    /**
     * 设置操作人编号
     *
     * @param operator 操作人编号
     */
    public void setOperator(Integer operator) {
        this.operator = operator;
    }

    /**
     * 获取链接地址
     *
     * @return LINK_URL - 链接地址
     */
    public String getLinkUrl() {
        return linkUrl;
    }

    /**
     * 设置链接地址
     *
     * @param linkUrl 链接地址
     */
    public void setLinkUrl(String linkUrl) {
        this.linkUrl = linkUrl;
    }

    /**
     * 获取任务类型
     *
     * @return TASK_TYPE - 任务类型
     */
    public String getTaskType() {
        return taskType;
    }

    /**
     * 设置任务类型
     *
     * @param taskType 任务类型
     */
    public void setTaskType(String taskType) {
        this.taskType = taskType;
    }

    /**
     * 获取描述
     *
     * @return DESCRIPTION - 描述
     */
    public String getDescription() {
        return description;
    }

    /**
     * 设置描述
     *
     * @param description 描述
     */
    public void setDescription(String description) {
        this.description = description;
    }
}