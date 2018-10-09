<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href=" <%=basePath%>">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>南京万和CMS</title>
<meta name="description" content="" />
<meta name="viewport"
	content="initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width" />
<link href="${pageContext.request.contextPath }/css/bootstrap.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/google-fonts.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/font-awesome.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/isotope.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/dataTables.bootstrap-1.10.13.css" />
	
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.0.0.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-ui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bootstrap-3.3.4.js"></script>
<script type="JavaScript"
	src="${pageContext.request.contextPath }/js/angular.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery.dataTables-1.10.13.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/dataTables.bootstrap-1.10.13.js"></script>