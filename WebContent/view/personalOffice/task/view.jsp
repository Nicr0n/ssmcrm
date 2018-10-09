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
			<div class="widget-container fluid-height clearfix " style="margin: 0 auto ">
				<div class="heading clearfix">
					<i class="icon-reorder"></i>任务详情<a href="javascript:;"
						class="pull-right" onclick="history.go(-1);"><i
						class="icon-reply"></i> </a>
				</div>

				<div class="panel panel-default">
					<div class="panel-body">
						<strong>视图：</strong> <i class="fa fa-list"></i> <a
							href="IndividualTaskServlet?method=getAllTaskAsPage" class="at">全部</a>
						| <a
							href="IndividualTaskServlet?method=getAllTaskAsPage&relationPersonName=${sessionScope.currentUser.employeeName}">我的任务</a>
						| <a
							href="IndividualTaskServlet?method=getAllTaskAsPage&operatorName=${sessionScope.currentUser.employeeName}">我添加的</a>
						&nbsp;&nbsp;&nbsp; <a
							href="IndividualTaskServlet?method=getAllTaskAsPage&status=0">未启动</a>
						| <a
							href="IndividualTaskServlet?method=getAllTaskAsPage&status=10">推迟</a>
						| <a
							href="IndividualTaskServlet?method=getAllTaskAsPage&status=20">进行中</a>
						| <a
							href="IndividualTaskServlet?method=getAllTaskAsPage&status=30">已完成</a>
					</div>
				</div>

				<div class="widget-content padded clearfix">
					<form method="post" action="" id="writeForm">

						<div class="form-group clearfix">
							<span class="pull-left">负责人：小明</span>
						</div>


						<div class="form-group clearfix">
							<span class="pull-left">创建时间：2017-04-25 16:39 </span>
						</div>

						<div class="form-group clearfix">
							<span class="pull-left">结束时间：2017-04-25 16:39</span>

						</div>

						<div class="form-group">
							<div class="input-group">
								<span class="input-group-addon">主&nbsp;&nbsp;&nbsp;&nbsp;题</span>
								<input type="text" name="mailContent" class="form-control"
									value="主题1" readonly="readonly">
							</div>
						</div>

						<div class="form-group">
							<h5 style="margin-top: 30px">任务详情</h5>
							<textarea class="form-control" readonly style="height:200px">今晚打老虎</textarea>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
