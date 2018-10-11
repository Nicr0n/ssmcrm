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
						href="jsp/systemSettings/menu/create.jsp"><i
						class="icon-plus"></i> 创建菜单</a>
				</div>
				<div class="widget-content padded clearfix">
					<div class="dataTables_filter">
						<div class="form-inline">
							<div class="btn-group">
							<span>菜单名：</span>
								<input type="text" class="form-control" id="name" name="name"
									value="" placeholder="名称">
							</div>
							<div class="btn-group">
								<div class="btn btn-success" onclick="selectMenuByName()">
									<i class="glyphicon glyphicon-search"></i> 搜索
								</div>
							</div>
						</div>
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
								<tbody class="table-main">
									<%--<tr data-key="1">--%>
										<%--<td>11</td>--%>
										<%--<td>系统管理</td>--%>
										<%--<td>url1</td>--%>
										<%--<td>tubiao1</td>--%>
										<%--<td>2020-18-36 08:35</td>--%>
										<%--<td>2020-18-36 08:35</td>--%>
										<%--<td></td>--%>
										<%--<td>--%>
											<%--<button type="button" id="updatebtn" name="updatebtn"--%>
												<%--class="btn btn-warning btn-sm" onclick="updateMenu(1)">修改--%>
											<%--</button>--%>
											<%--<button type="button" id="delbtn" name="delbtn"--%>
												<%--class="btn btn-danger btn-sm" onclick="deleteMenu(1)">删除--%>
											<%--</button>--%>
										<%--</td>--%>
									<%--</tr>--%>
									<%--<tr data-key="1">--%>
										<%--<td>12</td>--%>
										<%--<td>客户管理</td>--%>
										<%--<td>url2</td>--%>
										<%--<td>tubiao2</td>--%>
										<%--<td>2020-18-36 08:35</td>--%>
										<%--<td>2020-18-36 08:35</td>--%>
										<%--<td></td>--%>
										<%--<td>--%>
											<%--<button type="button" id="updatebtn" name="updatebtn"--%>
												<%--class="btn btn-warning btn-sm" onclick="updateMenu(2)">修改--%>
											<%--</button>--%>
											<%--<button type="button" id="delbtn" name="delbtn"--%>
												<%--class="btn btn-danger btn-sm" onclick="deleteMenu(2)">删除--%>
											<%--</button>--%>
										<%--</td>--%>
									<%--</tr>--%>
									<%--<tr data-key="1">--%>
										<%--<td>13</td>--%>
										<%--<td>员工</td>--%>
										<%--<td>url3</td>--%>
										<%--<td>tubiao3</td>--%>
										<%--<td>2020-18-36 08:35</td>--%>
										<%--<td>2020-18-36 08:35</td>--%>
										<%--<td>客户管理</td>--%>
										<%--<td>--%>
											<%--<button type="button" id="updatebtn" name="updatebtn"--%>
												<%--class="btn btn-warning btn-sm" onclick="updateMenu(3)">修改--%>
											<%--</button>--%>
											<%--<button type="button" id="delbtn" name="delbtn"--%>
												<%--class="btn btn-danger btn-sm" onclick="deleteMenu(3)">删除--%>
											<%--</button>--%>
										<%--</td>--%>
									<%--</tr>--%>
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
                var pageNumber = 1;
                getAllMenu(pageNumber);
            })
            function getAllMenu(page) {
                    $.ajax({
                            url:"menu/getAllMenu",
                            data:{"pn":page},
                            success:function (data) {
                                console.log(data);
                                tableData(data);
                            }
                    })
            }

            function selectMenuByName() {
                $.ajax({
                        url:"menu/getAllMenu",
                        data:{"pn":page},
                        success:function (data) {
                                console.log(data);
                                tableData(data);
                        }
                })
        }
            
     function tableData(data) {
                var temp = data.data.list;
                pageNumber=data.data.pageNum;
                $(".table-main").html(" ");
                $.each(temp, function (index,value) {
                console.log(value)
                var str = '<tr data-key="1">' +
                '<td>'+value.menuId+'</td>' +
                '<td>'+value.menuName+'</td>' +
                '<td>'+value.menuUrl+'</td>' +
                '<td>'+(value.pictures==null ? "" : value.pictures)+'</td>' +
                '<td>'+timeFormatter(value.createTime)+'</td>' +
                '<td>'+timeFormatter(value.updateTime)+'</td>' +
                '<td>'+(value.parentMenuId==null ? "" : value.parentMenuId)+'</td>' +
                '<td><button type="button" class="btn btn-warning btn-sm" onclick="updateMenu('+value.menuId+')">修改</button>' +
                '<button type="button" class="btn btn-danger btn-sm" onclick="deleteMenu('+value.menuId+')">删除</button></td></tr>'
                $(".table-main").append(str);
                });

                var str = (data.data.pageNum == 1 ? '' : '<li><a href="javascript:;" aria-label="Previous"  onclick="getAllMenu('+1+')"><span aria-hidden="true">&laquo;</span></a></li>');
                $.each(data.data.navigatepageNums,function (index,value) {
                str += '<li class="'+(value == data.data.pageNum ? "active" : "" )+'"><a href="javascript:;" onclick="getAllMenu('+value+')">'+value+'</a></li>';
                })

                str += (data.data.pageNum == data.data.pages ? '' : '<li><a href="javascript:;" aria-label="Next" onclick="getAllMenu('+data.data.pages+')"><span aria-hidden="true">&raquo;</span></a></li>');
                $(".table-nav").html(str);
        }   



	function deleteMenu(menuId){
		if(confirm("删除后不可恢复，确认删除？")){
			var data ={};
			data.menuId = menuId;
			$.ajax({
				url : '/menu/deleteMenuById/'+menuId,
				success : function (data) {
                        console.log(data);
                        alert(data.msg);
                        getAllMenu(pageNumber);
				},
				error : function() {
					alert("请求失败!");
				}
			});
		}
	}

	function updateMenu(menuId){
		location.href='/jsp/systemSettings/menu/update.jsp?menuId='+menuId;
	}
	function timeFormatter(time) {
        var transTime = new Date( time );
        return transTime.toLocaleDateString()+' '+transTime.toTimeString().substring(0,8);
    }
</script>
</body>

</html>
