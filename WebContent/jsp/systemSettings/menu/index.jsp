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
			<div class="widget-container fluid-height clearfix">
				<div class="heading clearfix">
					<i class="icon-table"></i> 菜单管理 <a
						class="btn btn-sm btn-primary pull-right"
						href="menu/getAllParentMenu"><i
						class="icon-plus"></i> 创建菜单</a>
				</div>
				<div class="widget-content padded clearfix">
					<div class="dataTables_filter">
						<form class="form-inline" action="menu/getAllMenu"
							method="post">
							<div class="btn-group">
							<span>菜单名：</span>
								<input type="text" class="form-control" id="name" name="name"
									value="" placeholder="名称">
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
										<th nowrap>ID</th>
										<th nowrap>名称</th>
										<th nowrap>地址</th>
										<th nowrap>图标</th>
										<th nowrap>创建时间</th>
										<th nowrap>更新时间</th>
										<th nowrap>上级菜单</th>
										<th class="action-column">操作</th>
									</tr>
								</thead>
								<tbody>
									<tr data-key="1">
										<td>11</td>
										<td>系统管理</td>
										<td>url1</td>
										<td>tubiao1</td>
										<td>2020-18-36 08:35</td>
										<td>2020-18-36 08:35</td>
										<td></td>
										<td>
											<button type="button" id="updatebtn" name="updatebtn"
												class="btn btn-warning btn-sm" onclick="updateMenu(1)">修改
											</button>
											<button type="button" id="delbtn" name="delbtn"
												class="btn btn-danger btn-sm" onclick="deleteMenu(1)">删除
											</button>
										</td>
									</tr>
									<tr data-key="1">
										<td>12</td>
										<td>客户管理</td>
										<td>url2</td>
										<td>tubiao2</td>
										<td>2020-18-36 08:35</td>
										<td>2020-18-36 08:35</td>
										<td></td>
										<td>
											<button type="button" id="updatebtn" name="updatebtn"
												class="btn btn-warning btn-sm" onclick="updateMenu(2)">修改
											</button>
											<button type="button" id="delbtn" name="delbtn"
												class="btn btn-danger btn-sm" onclick="deleteMenu(2)">删除
											</button>
										</td>
									</tr>
									<tr data-key="1">
										<td>13</td>
										<td>员工</td>
										<td>url3</td>
										<td>tubiao3</td>
										<td>2020-18-36 08:35</td>
										<td>2020-18-36 08:35</td>
										<td>客户管理</td>
										<td>
											<button type="button" id="updatebtn" name="updatebtn"
												class="btn btn-warning btn-sm" onclick="updateMenu(3)">修改
											</button>
											<button type="button" id="delbtn" name="delbtn"
												class="btn btn-danger btn-sm" onclick="deleteMenu(3)">删除
											</button>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function deleteMenu(menuId){
		if(confirm("删除后不可恢复，确认删除？")){
			var data ={};
			data.menuId = menuId;
			$.ajax({
				type : 'post',
				url : 'menu/checkDeleteMenuId',
				data : data,
				cache : false,
				sync : true,
				success : function(msg) {
					var json = JSON.parse(msg);
					if (0 == json.status) {
						alert(json.msg);
					} else {
						location.href='menu/deleteMenuById?menuId='+menuId;
					}
				},
				error : function() {
					alert("请求失败!");
				}
			});
		}
	}

	function updateMenu(menuId){
		location.href='menu/getUpdateMenudetailById?menuId=menuId';
	}
</script>
</body>

</html>
