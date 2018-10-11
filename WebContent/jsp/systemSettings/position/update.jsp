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
					<i class="icon-reorder"></i> 修改职位 <a href="javascript:;"
						class="pull-right" onclick="history.go(-1);"><i
						class="icon-reply"></i> </a>
				</div>
				<div class="widget-content padded clearfix">
					<form id="updatePositionFrom" class="form-horizontal">
					

						<input type="hidden" id="positionId" name="positionId" value='1'>
						<div class="form-group field-manage-name required">
							<label class="control-label col-sm-2" for="manage-name">名称</label>
							<div class="col-sm-8">
								<input type="text" id="positionname" class="form-control"
									name="positionname">
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						
						<div class="form-group field-manage-department_id required">
							<label class="control-label col-sm-2" for="positionLevel">等级</label>
							<div class="col-sm-8">
								<select id="positionLevel" class="form-control"	name="positionLevel">
									<option value="0">选择等级</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
								</select>
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>

							<div class="col-lg-10">
								<button type="button" class="btn btn-success" onclick="positionCheck()">修改</button>
								<button type="button" class="btn btn-default"
									onClick="history.go(-1);">返回</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
            getPositionInfo('<%= request.getParameter("positionId")%>');
        })
		function getPositionInfo(positionId) {
			$.ajax({
				url : "/emmPosition/selectById/"+positionId,
				success : function (data) {
					console.log(data);
					$("#positionname").val(data.data.positionName);
					$("#positionLevel").val(data.data.positionLevel);
                    $("#positionId").val(data.data.positionId);
                }
			})
        }
			function positionCheck() {
				var positionLevel = $("#positionLevel").val();
				if( 0 == positionLevel){
				 	alert("必须选择职位等级！");
				 	return ;
				}
				$.ajax({
					type : 'post',
					contentType : "application/json;charset=UTF-8",
					url : 'emmPosition/positionNameCheck',
					data : $("#positionname").val(),
                    dataType:"json",
					success : function(data) {
						console.log(data)
						if (data.msg) {
                            updatePosition();
						}
						// location.href="/jsp/systemSettings/position/index.jsp";
					},
					error : function() {
						alert("请求失败!");
					}
				});
			}
			function updatePosition() {
		    var data = {};
                data.positionId=$("#positionId").val();
                data.positionName=$("#positionname").val();
                data.positionLevel=$("#positionLevel").val();
                $.ajax({
                    type : 'post',
                    contentType : "application/json",
                    url : 'emmPosition/updatePosition',
                    data : JSON.stringify(data),
					success : function (data) {
						console.log(data)
						alert(data.msg);
                         location.href="/jsp/systemSettings/position/index.jsp";
                    }
				})
            }


	</script>
</body>
</html>
