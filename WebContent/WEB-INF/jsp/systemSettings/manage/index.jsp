<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="/common.jsp"></jsp:include>
</head>

<body class="navbar-top">
<div class="modal-shiftfix">
    <jsp:include page="/menu.jsp"></jsp:include>
    <div class="container-fluid main-content">
        <div class="widget-container fluid-height clearfix">
            <div class="heading clearfix">
                <i class="icon-table"></i> 员工管理 <a
                    class="btn btn-sm btn-primary pull-right"
                    href="employee/getDeapartAndPostionInfo"><i
                    class="icon-plus"></i> 添加员工</a>
            </div>
            <div class="widget-content padded clearfix">
                <div class="dataTables_filter">
                    <form class="form-inline"
                          action="EmployeeServlet?method=getAllEmployee" method="post">
                        <div class="btn-group">
                            <span>工号：</span> <input type="text" class="form-control"
                                                    id="emmployeeId" name="emmployeeId" value="">
                        </div>
                        <div class="btn-group">
                            <span>姓名：</span> <input type="text" class="form-control"
                                                    id="emmployeename" name="emmployeename"
                                                    value="">
                        </div>
                        <div class="btn-group">
                            <button type="submit" class="btn btn-success">
                                <i class="glyphicon glyphicon-search"></i> 搜索
                            </button>
                        </div>
                    </form>
                </div>
                <div id="w0" class="grid-view">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th nowrap>工号</th>
                                <th nowrap>姓名</th>
                                <th nowrap>部门</th>
                                <th nowrap>职位</th>
                                <th nowrap>手机</th>
                                <th nowrap>电子邮箱</th>
                                <th nowrap>状态</th>
                                <th nowrap>创建时间</th>
                                <th nowrap>更新时间</th>
                                <th class="action-column">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr data-key="1">
                                <td>1</td>
                                <td>小明</td>
                                <td>产品一部</td>
                                <td>总监</td>
                                <td>18988888888</td>
                                <td>10086@qq.com</td>
                                <td>禁用</td>
                                <td>2017-04-21 21:17</td>
                                <td>2017-04-21 21:17</td>
                                <td>
                                    <button type="button" id="recevorbtn" name="recevorbtn"
                                            class="btn btn-success btn-sm"
                                            onclick="updateEmployeeStatus('1','1')">恢复正常
                                    </button>
                                </td>
                            </tr>
                            <tr data-key="1">
                                <td>2</td>
                                <td>小红</td>
                                <td>产品二部</td>
                                <td>普通员工</td>
                                <td>15012345678</td>
                                <td>10086@qq.com</td>
                                <td>正常</td>
                                <td>2017-04-21 21:17</td>
                                <td>2017-04-21 21:17</td>
                                <td>
                                    <button type="button" id="forbidbtn" name="forbidbtn"
                                            class="btn btn-danger btn-sm"
                                            onclick="updateEmployeeStatus('2','0')">禁用账户
                                    </button>
                                    <button type="button" id="updatebtn" name="updatebtn"
                                            class="btn btn-info btn-sm"
                                            onclick="updateEmployeeDetail('2')">修改用户信息
                                    </button>
                                </td>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    function updateEmployeeStatus(employeeId, status) {

        location.href = 'employee/updateEmployeeStatus?employeeId='
            + employeeId + '&status=' + status;

    }
    function updateEmployeeDetail(employeeId) {
        location.href = 'employee/findEmployeeById?employeeId='
            + employeeId;
    }
</script>
</body>

</html>
