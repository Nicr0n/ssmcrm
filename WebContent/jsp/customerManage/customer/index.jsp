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
					<i class="icon-table"></i> 客户管理 <a id="add-row"
						class="btn btn-sm btn-primary-outline pull-right"
						href="CustomerServlet?method=getAllDictionary"><i class="icon-plus"></i>
						新建客户</a>
				</div>
				<div class="widget-content padded clearfix">
					<div class="dataTables_filter">
						<form class="form-inline search-form" action="CustomerServlet?method=getAllZd" method="post">
							<div class="btn-group">
								<select id="field" class="form-control" name="field">
									<option value="00">--请选择筛选条件--</option>
									<option value="customer_name">客户名称</option>
									<option value="customer_industry">所属行业</option>
									<option value="customer_source">客户来源</option>
									<option value="create_time">创建时间</option>
								</select>

								<!-- 显示要输入的搜索条件 -->
								<div class="form-group" id="conditionContent">
									
									
								</div>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-success">搜索</button>
							</div>
						</form>
					</div>

					<div id="w0" class="grid-view">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr>
										<th><label class="label-checkbox"> <input
												type="checkbox" class="select-on-check-all"
												name="selection_all" value="1"><span
												class="custom-checkbox"></span> </label>
										</th>
										<th nowrap>客户名称</th>
										<th nowrap>所属行业</th>
										<th nowrap>客户来源</th>
										<th nowrap>地址</th>
										<th nowrap>创建时间</th>
										<th nowrap>更新时间</th>
										<th nowrap>负责人</th>
										<th class="action-column">操作</th>
									</tr>
								</thead>
								<tbody>
									<tr data-key="13">
										<td><label class="label-checkbox"> <input
												type="checkbox" name="selection[]" value="13"><span
												class="custom-checkbox"></span> </label>
										</td>
										<td>百度</td>
										<td>上市公司</td>
										<td>广告</td>
										<td>背景中关村</td>
										<td>2016-06-01</td>
										<td>2017-04-25</td>
										<td>张三丰</td>
										<td>
												<a class="label label-success" href="CustomerServlet?method=selectByPrimaryKeyDetail"
                                           title="查看"
                                           aria-label="查看">查看</a>
                                           <a class="label label-warning edit"
                                            href="CustomerServlet?method=selectByPrimaryKey" title="更新"
                                            aria-label="更新">修改</a>
										</td>
									</tr>
									<tr data-key="13">
										<td><label class="label-checkbox"> <input
												type="checkbox" name="selection[]" value="13"><span
												class="custom-checkbox"></span> </label>
										</td>
										<td>华为</td>
										<td>大型企业</td>
										<td>朋友介绍</td>
										<td>南京软件大道</td>
										<td>2015-06-01</td>
										<td>2017-06-18</td>
										<td>习大大</td>
										<td>
											<a class="label label-success" href="CustomerServlet?method=selectByPrimaryKeyDetail"
                                           title="查看"
                                           aria-label="查看">查看</a>
                                           <a class="label label-warning edit"
                                            href="CustomerServlet?method=selectByPrimaryKey" title="更新"
                                            aria-label="更新">修改</a>
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
</body>

<script>
			
	$("#field").change(function(){
		$("#conditionContent").empty();
		//获取条件
		var condition=$(this).find("option:checked").val();
		
		if(condition=="customer_name"){
			var $input= $("<input>",{
				type:"text",
				name:"customerName",
				class:"form-control"
			});
			$("#conditionContent").append($input);
		}
		
		if(condition=="create_time"){
			var $input1= $("<input>",{
				type:"date",
				name:"startTime",
				class:"form-control"
			});
			var $input2= $("<input>",{
				type:"date",
				name:"endTime",
				class:"form-control"
			});
			$("#conditionContent").append($input1).append("----").append($input2);
		}
		
		if(condition=="customer_industry"){
		
			var industryArray=[];
			industryArray.push({id:1,name:"行业一"});
			industryArray.push({id:2,name:"行业二"});
			var $select=$("<select>",{
				name:"industryId",
				class:"form-control"
			});
			$.each(industryArray,function(index,ele){
				var $option=$("<option>",{
					text:ele.name,
					value:ele.id
				});
				$select.append($option);
			});
			$("#conditionContent").append($select);
		}
		
		if(condition=="customer_source"){
			var sourceArray=[];
			sourceArray.push({id:1,name:"来源一"});
			sourceArray.push({id:2,name:"来源二"});
			var $select=$("<select>",{
				name:"source",
				class:"form-control"
			});
			$.each(sourceArray,function(index,ele){
				var $option=$("<option>",{
					text:ele.name,
					value:ele.id
				});
				$select.append($option);
			});
			$("#conditionContent").append($select);
		}
	});
	
	
</script>

</html>