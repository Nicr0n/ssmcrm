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
                    href="/jsp/systemSettings/manage/create.jsp"><i
                    class="icon-plus"></i> 添加员工</a>
            </div>
            <div class="widget-content padded clearfix">
                <div class="dataTables_filter">
                    <form class="form-inline">
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
                            <tbody class="table-main">

                            </tbody>
                        </table>
                        <nav aria-label="Page navigation">
                            <ul class="pagination table-nav">
                                <%--<li>--%>
                                    <%--<a href="#" aria-label="Previous">--%>
                                        <%--<span aria-hidden="true">&laquo;</span>--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                                <%--<li><a href="#">1</a></li>--%>
                                <%--<li><a href="#">2</a></li>--%>
                                <%--<li><a href="#">3</a></li>--%>
                                <%--<li><a href="#">4</a></li>--%>
                                <%--<li><a href="#">5</a></li>--%>
                                <%--<li>--%>
                                    <%--<a href="#" aria-label="Next">--%>
                                        <%--<span aria-hidden="true">&raquo;</span>--%>
                                    <%--</a>--%>
                                <%--</li>--%>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        getAllEmployee(1);
    })
    function getAllEmployee(page) {
        $.ajax({
            url:"http://localhost:8080/employee/getAllEmployee",
            data:{"pn":page},
            success:function (data) {
                var temp = data.data.list;
                console.log(data);
                $(".table-main").html(" ");
                $.each(temp, function (index,value) {
                    console.log(value)
                    var str = '<tr data-key="1"><td>'+value.employeeId+'</td>' +
                        '<td>'+value.employeeName+'</td>' +
                        '<td>'+value.department.departmentName+'</td>' +
                        '<td>'+value.emmPosition.positionName+'</td>' +
                        '<td>'+value.phone+'</td>' +
                        '<td>'+value.email+'</td>' +
                        '<td>'+(value.status==0 ? "禁用" : "正常")+'</td>' +
                        '<td>'+timeFormatter(value.createTime)+'</td>' +
                        '<td>'+timeFormatter(value.updateTime)+'</td>' +
                        '<td>'+(value.status==0 ? '<button type="button" id="recevorbtn" name="recevorbtn" class="btn btn-success btn-sm" onclick="updateEmployeeStatus('+value.employeeId+')">恢复正常</button>' +
                            '<button type="button" id="recevorbtn3" name="recevorbtn3" class="btn btn-info btn-sm" onclick="updateEmployeeDetail('+value.employeeId+')">修改用户信息</button>' :
                        '<button type="button" id="recevorbtn2" name="recevorbtn2" class="btn btn-danger btn-sm" onclick="updateEmployeeStatus('+value.employeeId+')">禁用账户</button>')
                        +                 '</td></tr>'
                    $(".table-main").append(str);
                });
                var str = (data.data.pageNum == 1 ? '' : '<li><a href="javascript:;" aria-label="Previous"  onclick="getAllEmployee('+1+')"><span aria-hidden="true">&laquo;</span></a></li>');
                $.each(data.data.navigatepageNums,function (index,value) {
                    str += '<li><a href="javascript:;" onclick="getAllEmployee('+value+')">'+value+'</a></li>';
                })
                str += (data.data.pageNum == data.data.pages ? '' : '<li><a href="javascript:;" aria-label="Next" onclick="getAllEmployee('+data.data.pages+')"><span aria-hidden="true">&raquo;</span></a></li>');
                $(".table-nav").html(str);
            }
        })
    }
    
    
    
    
    function updateEmployeeStatus(employeeId) {
        $.ajax({
            url:"http://localhost:8080/employee/updateEmployeeStatus/"+employeeId ,
            success:function (data) {
                console.log(data);
                if (data.status==200) {
                    alert(data.msg);
                    getAllEmployee(1);
                }
            }
        })
    }
    function updateEmployeeDetail(employeeId) {
        location.href = '/jsp/systemSettings/manage/update.jsp?employeeId='
            + employeeId;
    }
    function timeFormatter(time) {
        var transTime = new Date( time );
        return transTime.toLocaleDateString()+' '+transTime.toTimeString().substring(0,8);
    }
</script>
</body>

</html>
