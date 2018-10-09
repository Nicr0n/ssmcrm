<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						<input type="hidden" id="customer_id" name="Contacts[customer_id]"
						value="1">
						<div class="form-group field-task-subject required">
							<label class="control-label col-sm-2" for="task-subject">创建人</label>
							<div class="col-sm-8">
								<input type="text" id="topic_id" class="form-control" value="尼古拉斯赵四"
									name="topic" maxlength="40" placeholder="创建人" readonly="readonly"/>
									<input
								type="hidden" id="creator"
								value="2" />
							</div>
						</div>
	         
						


						<div class="form-group field-task-status">
							<label class="control-label col-sm-2" for="task-status">推进状态</label>
							<div class="col-sm-8">
								<select id="advanceStatus" class="form-control" name="status">
								<option value="">请选择...</option>
								<option value="1" selected>进一步了解</option>
								<option value="2">签订合同</option>
								</select>
							</div>
						</div>
   
						<div class="form-group field-task-content">
							<label class="control-label col-sm-2" for="task-content">本次推进内容</label>
							<div class="col-sm-8">
								<textarea id="advanceContent" class="form-control"
									name="description" rows="6" placeholder="内容">客户已经慢慢上套,但是还没有签单,这次两亿的项目一定得拿下...</textarea>
							</div>
						</div>
						<div class="form-group field-task-subject required">
							<label class="control-label col-sm-2" for="task-subject">下次推进时间</label>
							<div class="col-sm-8">
								<input type="date" id="topic_id" class="form-control" value="${sessionScope.currentUser.employeeName }"
									name="topic" maxlength="40" placeholder="创建人" />
									<input
								type="hidden" id="creator"
								value="2" />
							</div>
						</div>
<div class="form-group field-task-content">
							<label class="control-label col-sm-2" for="task-content">下次推进内容</label>
							<div class="col-sm-8">
								<textarea id="advanceContent" class="form-control"
									name="description" rows="6" placeholder="内容"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>
							<div class="col-lg-10">
							<input type="hidden" id="linkManid">
								<button type="button" class="btn btn-success"
									onclick="addTuiJin()">推进</button>
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





















					
				

				
				</div>
			</div>

		</div>
	</div> 
</body>

<script type="text/javascript">
	function addTuiJin() {
		var data = {};
		data.businessId = $("#customer_id").val();
		data.creator = $("#creator").val();
		data.advanceContent = $("#advanceContent").val();
		data.advanceStatus = $("#advanceStatus option:selected").val();
		$
				.ajax({
					type : 'post',
					url : 'AdvanceLogServlet?method=addAdvanceLog',
					data : data,
					cache : false,
					sync : true,
					success : function(msg) {
						var json = JSON.parse(msg);
						if (0 == json.flag) {
							alert(json.msg);
							return;
						} else {
							window.location.href = 'BuinessServlet?method=getAllBusiness';
						}

					},
					error : function() {
						alert("请求失败");
						return false;
					}
				});
	}
</script>
</html>
