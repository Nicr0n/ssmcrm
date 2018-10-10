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
					<i class="icon-table"></i> 职位设置 <a
						class="btn btn-sm btn-primary pull-right weiBoxs-dialog"
						href="emmPosition/addPosition" dialog-title="添加职位"><i
						class="icon-plus"></i> 添加职位</a>
				</div>
				<div class="widget-content padded clearfix">
					<div class="dataTables_filter">
						<form id="positionForm" class="form-inline"
							action="emmPosition/getAllEmmPosition"
							method="post">
							<div class="btn-group">
								<span>职位名：</span> <input type="text" class="form-control"
									id="positionname" name="positionname" value="">
							</div>
							<div class="btn-group">
								<button type="button" id="searchButton" class="btn btn-success">
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
										<th nowrap>等级</th>
										<th nowrap>名称</th>
										<th nowrap>创建时间</th>
										<th nowrap>更新时间</th>
										<th class="action-column">操作</th>
									</tr>
								</thead>
								<tbody class="table-main">
									<%--<tr>--%>
										<%--<td>1</td>--%>
										<%--<td>1</td>--%>
										<%--<td>总监</td>--%>
										<%--<td>2017-04-18 11:29</td>--%>
										<%--<td>2017-04-18 11:29</td>--%>
										<%--<td>--%>
											<%--<div class="col-lg-20">--%>
												<%--<button type="button" id="updatebtn" name="updatebtn"--%>
													<%--class="btn btn-warning btn-sm" onclick="updateposition(1)">修改--%>
												<%--</button>--%>
												<%--<button type="button" id="delbtn" name="delbtn"--%>
													<%--class="btn btn-danger btn-sm" onclick="deleteposition(1)">删除--%>
												<%--</button>--%>
												<%--<button type="button" id="linkbtn" name="linkbtn"--%>
													<%--class="btn btn-success btn-sm" onclick="showselectmodel(1)">关联职位</button>--%>
											<%--</div>--%>
										<%--</td>--%>
									<%--</tr>--%>
									<%--<tr>--%>
										<%--<td>2</td>--%>
										<%--<td>2</td>--%>
										<%--<td>经理</td>--%>
										<%--<td>2017-04-18 11:29</td>--%>
										<%--<td>2017-04-18 11:29</td>--%>
										<%--<td>--%>
											<%--<div class="col-lg-20">--%>
												<%--<button type="button" id="updatebtn" name="updatebtn"--%>
													<%--class="btn btn-warning btn-sm" onclick="updateposition(2)">修改--%>
												<%--</button>--%>
												<%--<button type="button" id="delbtn" name="delbtn"--%>
													<%--class="btn btn-danger btn-sm" onclick="deleteposition(2)">删除--%>
												<%--</button>--%>
												<%--<button type="button" id="linkbtn" name="linkbtn"--%>
													<%--class="btn btn-success btn-sm" onclick="showselectmodel(2)">关联职位</button>--%>
											<%--</div>--%>
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
						<div id="checkedAllMenu" style="height:10px;display:none"></div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 这边是选择菜单的模态框  begin -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<input type="hidden" id="referencepositionId"
						name="referencepositionId">
					<h4 class="modal-title" id="myModalLabel">选择关联菜单</h4>
				</div>
				<div class="modal-body">
					<table id="example" class="table">
						<thead>
							<tr>
								<th></th>
								<th>名称</th>
								<th>地址</th>
								<th>上级菜单</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" name="checkedemployee"
									id="checkedbox1" value="1" onclick="movetochecked(1)"
									style="opacity: 1;" /></td>
								<td>系统管理</td>
								<td>url</td>
								<td></td>
							</tr>

							<tr>
								<td><input type="checkbox" name="checkedemployee"
									id="checkedbox1" value="2" onclick="movetochecked(2)"
									style="opacity: 1;" /></td>
								<td>员工管理</td>
								<td>url</td>
								<td>系统设置</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer" style="text-align: center;">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary"
						onclick="submittochange()">确认</button>
				</div>
			</div>

		</div>
	</div>
	<!-- 这边是选择菜单的的模态框  end  -->

	<script type="text/javascript">
        $(document).ready(function () {
            var pageNumber = 1;
            getAllEmmPosition(pageNumber);
        })
        function getAllEmmPosition(page) {
            $.ajax({
                url:"http://localhost:8080/emmPosition/getAllEmmPosition",
                data:{"pn":page},
                success:function (data) {
                    var temp = data.data.list;
                    console.log(data);
                    $(".table-main").html(" ");
                    $.each(temp, function (index,value) {
                        console.log(value)
                        var str = '<tr><td>'+value.positionId+'</td>' +
							'<td>'+value.positionLevel+'</td>' +
							'<td>'+value.positionName+'</td>' +
							'<td>'+timeFormatter(value.createTime)+'</td>' +
							'<td>'+timeFormatter(value.updateTime)+'</td>' +
							'<td><div class="col-lg-20"><button type="button" id="updatebtn" name="updatebtn"class="btn btn-warning btn-sm" onclick="updateposition(\''+value.positionName+'\')">修改</button>' +
							'<button type="button" id="delbtn" name="delbtn"class="btn btn-danger btn-sm" onclick="deleteposition('+value.positionId+')">删除</button>' +
							'<button type="button" id="linkbtn" name="linkbtn"class="btn btn-success btn-sm" onclick="showselectmodel('+value.positionId+')">关联职位</button></div></td></tr>'
                        $(".table-main").append(str);
                    });
                    var str = (data.data.pageNum == 1 ? '' : '<li><a href="javascript:;" aria-label="Previous"  onclick="getAllEmmPosition('+1+')"><span aria-hidden="true">&laquo;</span></a></li>');
                    $.each(data.data.navigatepageNums,function (index,value) {
                        str += '<li class="'+(value == data.data.pageNum ? "active" : "" )+'"><a href="javascript:;" onclick="getAllEmmPosition('+value+')" >'+value+'</a></li>';
                    })
                    str += (data.data.pageNum == data.data.pages ? '' : '<li><a href="javascript:;" aria-label="Next" onclick="getAllEmmPosition('+data.data.pages+')"><span aria-hidden="true">&raquo;</span></a></li>');
                    $(".table-nav").html(str);
                }
            })
        }
        function timeFormatter(time) {
            var transTime = new Date( time );
            return transTime.toLocaleDateString()+' '+transTime.toTimeString().substring(0,8);
        }
	</script>
	<script type="text/javascript">
		function deleteposition(positionId) {
			var data = {};
			data.positionId = positionId;
			$.ajax({
				type : 'post',
				url : 'emmPosition/deletePostionCheck',
				data : data,
				cache : false,
				sync : true,
				success : function(msg) {
					var json = JSON.parse(msg);
					//alert(json.status);
					if (0 == json.status) {
						alert(json.msg);
					} else {
						location.href = 'emmPosition/deletePosition?positionId='
								+ positionId;
					}
				},
				error : function() {
					alert("请求失败");
				}
			});
		}
	</script>

	<script type="text/javascript">
		function updateposition(positionName) {
			location.href = '/jsp/systemSettings/position/update.jsp?positionName='
					+ positionName;

		}

		function submittochange() {
			var referencepositionId = $("#referencepositionId").val();
			var checkflag = true;
			$("[name=checkedemployee]:checkbox").each(function() {
				if (this.checked) {
					checkflag = false;
				}
			});
			if (checkflag) {
				alert("至少选择一个关联菜单");
				return;
			}
			var list = document.getElementsByName("selectMenu");
			var s = "";
			for ( var i = 0; i < list.length; i++) {
				if (list[i].checked == true) {
					s += list[i].value + ",";
				}
			}

			window.location.href = 'emmPosition/positionLinks?menuIds='
					+ s + '&positionId=' + referencepositionId;

		}

		function showselectmodel(positionId) {
			$("#myModal").modal("show");
			$("#referencepositionId").val(positionId);
		}
	</script>

	<script type="text/javascript">
		function movetochecked(menuId) {
			var checkedboxid = 'checkedbox' + menuId;
			var checkedivid = 'checkeddiv' + menuId;
			if ($("#" + checkedboxid + "").is(':checked')) {
				$("#checkedAllMenu").append('<div id='+checkedivid+'><input type="checkbox"   checked="checked" name="selectMenu" onclick="$(this).parent().remove();" value='+ menuId + '>' + menuId + '</div>');
			} else {
				$("#" + checkedboxid + "").prop("checked", false);
				$("div#" + checkedivid + "").remove();
			}
		}
	</script>

	<script type="text/javascript">
		$.extend($.fn.dataTable.defaults, {
			"searching" : false,
			"ordering" : false
		});
		$('#example').DataTable({
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
