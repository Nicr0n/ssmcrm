<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="/common.jsp"></jsp:include>
</head>

<body class="navbar-top">
<div class="modal-shiftfix">
    <jsp:include page="/menu.jsp"></jsp:include>
    <div class="container-fluid main-content">
        <div class="row">
            <div class="col-md-9 col-sm-9">
                <div class="widget-container fluid-height clearfix">
                    <div class="heading clearfix">
                        <i class="icon-table"></i> 出入库
                        <a href="javascript:;" class="pull-right" onclick="history.go(-1);"><i
                                class="icon-reply"></i></a>
                    </div>
                    <div class="widget-content padded clearfix">
                        <div id="w0" class="grid-view">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th nowrap>编号</th>
                                        <th nowrap>主题</th>
                                        <th nowrap>客户</th>
                                        <th nowrap>总金额</th>
                                        <th nowrap>下单时间</th>
                                        <th nowrap>制单人</th>
                                        <th nowrap>创建时间</th>
                                        <th class="action-column">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr data-key="6">
                                        <td><a href="sales/prevprint.html?id=6" target="_blank">CG201602242</a></td>
                                        <td><a href="sales/prevprint.html?id=6" target="_blank">zsdfsdfsdf</a></td>
                                        <td><a href="customer/view.html?id=1" target="_blank">百度科技有限公司</a></td>
                                        <td>999.99</td>
                                        <td>2016-02-24</td>
                                        <td>admin</td>
                                        <td>2016-03-25</td>
                                        <td><span>已出库</span></td>
                                    </tr>
                                    <tr data-key="5">
                                        <td><a href="sales/prevprint.html?id=5" target="_blank">XS201602241</a></td>
                                        <td><a href="sales/prevprint.html?id=5" target="_blank">dfsdfsdfsdf</a></td>
                                        <td><a href="customer/view.html?id=1" target="_blank">百度科技有限公司</a></td>
                                        <td>999.99</td>
                                        <td>2016-02-24</td>
                                        <td>admin</td>
                                        <td>2016-03-25</td>
                                        <td><span>已出库</span></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="datatable-footer">
                                <div class="dataTables_info">
                                    <div class="pull-left">第<b>1-2</b>条，共<b>2</b>条数据.</div>
                                </div>
                                <div class="dataTables_paginate paging_full_numbers"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3">
                <div class="list-group">
                    <a href="stock/storage.html" class="list-group-item active">
                        <p>全部</p>
                    </a>
                    <a href="stock/storage.html?status=10" class="list-group-item  ">
                        <p>等待入库</p>
                    </a>
                    <a href="stock/storage.html?status=20" class="list-group-item  ">
                        <p>已入库单</p>
                    </a>
                    <a href="stock/storage.html?status=30" class="list-group-item  ">
                        <p>等待出库</p>
                    </a>
                    <a href="stock/storage.html?status=40" class="list-group-item  ">
                        <p>已出库单</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
