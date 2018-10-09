<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="/common.jsp"></jsp:include>
</head>

<body class="navbar-top">
<div class="modal-shiftfix">
    <!-- 菜单 -->
    <jsp:include page="/menu.jsp"></jsp:include>

    <div class="container-fluid main-content">
        <div class="row">
            <div class="col-lg-12">
                <div class="widget-container stats-container">
                    <div class="col-md-3">
                        <div class="number">
                            <div class="icon visitors"></div>
                            <span id="customerCount">1</span>
                            <small>个</small>
                        </div>
                        <div class="text">近七日新增客户</div>
                    </div>
                    <div class="col-md-3">
                        <div class="number">
                            <div class="icon globe"></div>
                            <span id="businessCount">3</span>
                            <small>个</small>
                        </div>
                        <div class="text">近七日新增商机</div>
                    </div>
                    <div class="col-md-3">
                        <div class="number">
                            <div class="icon money"></div>
                            <span id="salesCount">6</span>
                            <small>单</small>
                        </div>
                        <div class="text">近七日新增销售单</div>
                    </div>
                    <div class="col-md-3">
                        <div class="number">
                            <div class="icon chat-bubbles"></div>
                            <span id="customerTotal">6</span>
                            
                        </div>
                        <div class="text">月度新增客户</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <div class="widget-container fluid-height">
                    <div class="heading">
                        <i class="icon-bar-chart"></i>本月客户,商机
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                     <th nowrap>来源</th>
                                    <th nowrap>名称</th>
                                    <th nowrap>负责人</th>
                                    <th nowrap>商机来源</th>
                                    <th nowrap>更新时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr data-key="8">
                                    <td>阿是</td>
                                    <td>个</td>
                                    <td>的</td>
                                    <td>对比</td>
                                    <td>根本</td>
                                </tr>
                                 </tbody>
                            </table>
                    </div>
                    <div class="widget-content" id="main" style="height: 280px;"></div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="widget-container fluid-height clearfix">
                    <div class="heading">
                        <i class="icon-table"></i>我最近的任务
                    </div>
                    <div class="widget-content padded clearfix">
                        <table class="table" style="color: #007aff;">
                            <thead>
                            <th>名称</th>
                            <th>状态</th>
                            <th>待完成时间</th>
                            </thead>
                            <tbody>
		                            <tr>
			                            <td>双方各</td>
											<td>未启动</td>
											<td>推迟</td>
											<td>进行中</td>
											<td>完成</td>
										<td>2012-12-18 11:26:38</td>
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
