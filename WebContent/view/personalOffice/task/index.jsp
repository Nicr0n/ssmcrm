<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<jsp:include page="/common.jsp"></jsp:include>
<style>
.status_style {
	color: #D3D6DA;
}

.status_style strong {
	color: #001930;
}

.at {
	font-weight: bold;
	color: #000000;
}
</style>
</head>

<body class="navbar-top">
	<div class="modal-shiftfix">
		<jsp:include page="/menu.jsp"></jsp:include>
		<div class="container-fluid main-content">
			<div class="panel panel-default">
				<div class="panel-body">
					<strong>视图：</strong> <i class="fa fa-list"></i> <a href="#">全部</a> | <a href="#">我的任务</a> | <a
						href="#">我添加的</a> &nbsp;&nbsp;&nbsp;
					<a href="#">未启动</a> | <a
						href="#">推迟</a> | <a
						href="#">进行中</a> | <a
						href="#">已完成</a>
				</div>
			</div>

			<div class="widget-container fluid-height clearfix">
				<div class="heading clearfix">
					<i class="icon-table"></i> 任务管理 <a id="add-row"
						class="btn btn-sm btn-primary-outline pull-right"
						href="${pageContext.request.contextPath }/view/personalOffice/task/create.jsp"><i
						class="icon-plus"></i> 新建任务</a>
				</div>

				<div class="widget-content padded clearfix">
					<div id="w0" class="grid-view">
						<div class="table-responsive">
							<table class="table table-hover">
								<thead>
									<tr>
										<th nowrap>主题</th>
										<th nowrap>关联人</th>
										<th nowrap>负责人</th>
										<th nowrap>结束时间</th>
										<th nowrap>优先级</th>
										<th nowrap>状态</th>
										<th nowrap>创建时间</th>
										<th nowrap>操作人</th>
										<th class="action-column">操作</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>主题1</td>
										<td>小明</td>
										<td>小红</td>
										<td>2016-02-22 09:19:29</td>
										<td>高</td>
										<td>推迟</td>
										<td>2017-02-25 10:30:41</td>
										<td>小明</td>
										<td><a class="label label-success" href="${pageContext.request.contextPath }/view/personalOffice/task/view.jsp" title="查看"
											aria-label="查看">查看</a> <a class="label label-danger" href="#">删除</a>
											<a class="label label-primary" href="">进行</a> <a
											class="label label-primary" href="">完成</a>
										</td>
									</tr>
									<tr>
										<td>主题2</td>
										<td>小明</td>
										<td>小红</td>
										<td>2016-02-22 09:19:29</td>
										<td>高</td>
										<td>进行</td>
										<td>2017-02-25 10:30:41</td>
										<td>小明</td>
										<td><a class="label label-success" href="${pageContext.request.contextPath }/view/personalOffice/task/view.jsp" title="查看"
											aria-label="查看">查看</a> <a class="label label-danger" href="#">删除</a>
											<a class="label label-primary" href="#">推迟</a> <a
											class="label label-primary" href="#">完成</a>
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

</html>
