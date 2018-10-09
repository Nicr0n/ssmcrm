<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="/common.jsp"></jsp:include>
</head>

<body class="navbar-top">
	<div class="modal-shiftfix">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="container-fluid main-content">
			<div class="widget-container fluid-height clearfix mwi1200">
				<div class="heading clearfix">
					<i class="icon-reorder"></i> 创建任务 <a href="javascript:;"
						class="pull-right" onclick="history.go(-1);"><i
						class="icon-reply"></i> </a>
				</div>

				<div class="widget-content padded clearfix">
					<form id="create_task_id" class="form-horizontal"
						action="IndividualTaskServlet?method=addTask" method="post">

						<div class="form-group field-task-subject required">
							<label class="control-label col-sm-2" for="task-subject">主题</label>
							<div class="col-sm-8">
								<input type="text" id="topic_id" class="form-control"
									name="topic" maxlength="40" placeholder="主题">
							</div>
						</div>

						<div class="form-group form-inline">
							<label class="control-label col-sm-2" for="task-relation_id">关联客户</label>
							<div class="col-sm-8">
								<input type="text" id="customerName" readOnly="true"
									class="form-control weiBoxs-dialog" data-toggle="modal"
									data-target="#myModal1" placeholder="点击选择关联客户"
									style="width:100%;" /> <input hidden id="customerId"
									name="responsiblePerson" />
							</div>
						</div>

						<div class="form-group field-owner_name required">
							<label class="control-label col-sm-2" for="owner_name">负责人</label>
							<div class="col-sm-8">
								<input type="text" id="employeeName" readOnly="true"
									class="form-control weiBoxs-dialog" maxlength="255"
									dialog-title="负责人" data-toggle="modal" data-target="#myModal2"
									placeholder="点击选择相关人" /> <input hidden id="employeeId"
									name="employeeName" />
							</div>
						</div>

						<div class="form-group form-inline">
							<label class="control-label col-sm-2" for="task-relation_id">结束时间</label>
							<div class="col-sm-5">
								<input type="date" id="endDate_id"
									class="form-control form_datetime" name="endTime"
									style="width:170px;">
							</div>
						</div>

						<div class="form-group field-task-priority required">
							<label class="control-label col-sm-2" for="task-priority">优先级</label>
							<div class="col-sm-8">
								<select id="task-priority" class="form-control" name="priority">
									<option value="10">高</option>
									<option value="20">低</option>
									<option value="30">普通</option>
								</select>
							</div>
						</div>

						<div class="form-group field-task-status">
							<label class="control-label col-sm-2" for="task-status">状态</label>
							<div class="col-sm-8">
								<select id="task-status" class="form-control" name="status">
									<option value="0">未启动</option>
								</select>
							</div>
						</div>

						<div class="form-group field-task-content">
							<label class="control-label col-sm-2" for="task-content">内容</label>
							<div class="col-sm-8">
								<textarea id="content_id" class="form-control"
									name="description" rows="6" placeholder="内容"></textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-lg-10">
								<button type="button" class="btn btn-success"
									onclick="commitCheck()">创建</button>
								<button type="button" class="btn btn-default"
									onClick="history.go(-1);">返回</button>
								<input type="hidden" name="reback">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>




	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">选择关联客户</h4>
				</div>
				<div class="modal-body">
					<table id="example" class="table exampleTable">
						<thead>
							<tr>
								<th>选择</th>
								<th>姓名</th>
								<th>性别</th>
								<th>尊称</th>
								<th>职位</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${linkMans }" var="linkMan">
								<tr>
									<td><input type="radio" name="linkMan" style="opacity: 1;"
										value="${linkMan.linkMainId }" /></td>
									<td>${linkMan.name }</td>
									<td>${linkMan.sex }</td>
									<td>${linkMan.nickname }</td>
									<td>${linkMan.position }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" id="confirm01">提交更改</button>
				</div>
			</div>
		</div>
	</div>


	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">选择相关负责人</h4>
				</div>
				<div class="modal-body ">
					<table id="example" class="table exampleTable">
						<thead>
							<tr>
								<th>选择</th>
								<th>姓名</th>
								<th>部门</th>
								<th>职位</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${employeeDtos }" var="employeeDto">
								<tr>
									<td><input type="radio" name="employeeDto"
										style="opacity: 1;" value="${employeeDto.employeeId }" /></td>
									<td>${employeeDto.employeeName }</td>
									<td>${employeeDto.departmentName }</td>
									<td>${employeeDto.positionName }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" id="confirm02">提交更改</button>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		$("#confirm01").click(
				function() {
					var id = $("input[name='linkMan']:checked").val();
					var customerName = $("input[name='linkMan']:checked")
							.parent().next().text();
					$("#customerId").val(id);
					$("#customerName").val(customerName);
					$("#myModal1").modal("hide");
				});

		$("#confirm02").click(
				function() {
					var id = $("input[name='employeeDto']:checked").val();
					var employeeName = $("input[name='employeeDto']:checked")
							.parent().next().text();
					$("#employeeId").val(id);
					$("#employeeName").val(employeeName);
					$("#myModal2").modal("hide");
				});

		function commitCheck() {
			var topic = $("#topic_id").val();
			var customerId = $("#customerId").val();
			var employeeId = $("#employeeId").val();
			var content = $("#content_id").val();
			var endDate = $("#endDate_id").val();

			if (topic.length == 0) {
				alert("主题不能为空！");
				return;
			}

			if (customerId.length == 0) {
				alert("请选择一个关联客户！");
				return;
			}

			if (employeeId.length == 0) {
				alert("请选则一个负责人！");
				return;
			}
			if (endDate == 0) {
				alert("请指定完成时间！");
				return;
			}

			if (content.length == 0) {
				alert("内容不能为空！");
				return;
			}
			$("#create_task_id").submit();

		}
	</script>

	<script type="text/javascript">
		$.extend($.fn.dataTable.defaults, {
			"searching" : false,
			"ordering" : false
		});
		$(".exampleTable").DataTable({
			language : {
				"sProcessing" : "处理中...",
				"sLengthMenu" : "显示 _MENU_ 项结果",
				"sZeroRecords" : "没有匹配结果",
				"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
				"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
				"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
				"sInfoPostFix" : "",
				"sSearch" : "搜索:",
				"sUrl" : "",
				"sEmptyTable" : "表中数据为空",
				"sLoadingRecords" : "载入中...",
				"sInfoThousands" : ",",
				"oPaginate" : {
					"sFirst" : "首页",
					"sPrevious" : "上页",
					"sNext" : "下页",
					"sLast" : "末页"
				}
			}
		});
	</script>

</body>

</html>
