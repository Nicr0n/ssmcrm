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
					<i class="icon-reorder"></i> 添加职位 <a href="javascript:;"
						class="pull-right" onclick="history.go(-1);"><i
						class="icon-reply"></i> </a>
				</div>
				<div class="widget-content padded clearfix">
					<div id="addPositionFrom" class="form-horizontal">

						<div class="form-group field-manage-name required">
							<label class="control-label col-sm-2" for="positionname">名称</label>
							<div class="col-sm-8">
								<input type="text" id="positionname" class="form-control"
									name="positionname" placeholder="职位名称">
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
								<button type="button" onclick="positionCheck()" class="btn btn-success">创建</button>
								<button type="button" class="btn btn-default"
									onClick="history.go(-1);">返回</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {

        })
			function positionCheck() {
				var positionLevel = $("#positionLevel").val();
				if( 0 == positionLevel){
				 	alert("必须选择职位等级！");
				 	return;
				}
				$.ajax({
                    type : 'post',
                    contentType : "application/json;charset=UTF-8",
					url : 'emmPosition/positionNameCheck',
					data : $("#positionname").val(),
					success : function(data) {
						console.log(data)
						if (data.msg) {
                            addPosition()
						}else{
						    alert("名称已存在");
						}
					},
					error : function() {
						alert("请求失败!");
					}
				});
			}
			function addPosition() {
		    	var data = {};
		    	data.positionName=$("#positionname").val();
                data.positionLevel=$("#positionLevel").val();
                $.ajax({
                    type : 'post',
                    contentType : "application/json;charset=UTF-8",
                    url : 'emmPosition/addPosition',
                    data : JSON.stringify(data),
                    success : function(data) {
                        console.log(data)
						alert(data.msg);
                        location.href="jsp/systemSettings/position/index.jsp";
                    },
                    error : function() {
                        alert("请求失败!");
                    }
                });
            }
	</script>
</body>

</html>
