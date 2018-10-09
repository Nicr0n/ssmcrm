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
        <div class="widget-container fluid-height clearfix">
            <div class="heading clearfix">
                <i class="icon-table"></i> 库存明细
                <a href="javascript:;" class="pull-right" onclick="history.go(-1);"><i class="icon-reply"></i></a>
            </div>
            <div class="widget-content padded clearfix">
                <div class="dataTables_filter">
                    <form class="form-inline" action="/stock/index.html" method="get">
                        <div class="btn-group">
                            <button class="btn btn-blue dropdown-toggle" type="button" data-toggle="dropdown"
                                    aria-expanded="true">按仓库查看<i class="caret"></i></button>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="stock/index.html">全部</a></li>
                                <li><a href="stock/index.html?warehouse_id=1">合肥一号</a></li>
                                <li><a href="stock/index.html?warehouse_id=2">合肥二号</a></li>
                            </ul>
                        </div>
                        <div class="btn-group">
                            <input type="text" class="form-control" name="name" value="" placeholder="产品名称"></div>
                        <div class="btn-group">
                            <button type="submit" class="btn btn-success"><i class="glyphicon glyphicon-search"></i> 搜索
                            </button>
                        </div>
                    </form>
                </div>
                <div id="w0" class="grid-view">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th nowrap>产品</th>
                                <th nowrap>规格</th>
                                <th nowrap>仓库</th>
                                <th nowrap>库存</th>
                                <th nowrap>最后更新</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr data-key="30">
                                <td>123123</td>
                                <td>123</td>
                                <td>合肥一号</td>
                                <td>
                                    <input type="text" class="form-control input-sm" name="number30" value="6665"
                                           push_id="30" style="width:80px; text-align:center;"
                                           onFocus="$(this).onlypressnum();">
                                </td>
                                <td>2017-03-14 22:07:31</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="datatable-footer">
                        <div class="dataTables_info">
                            <div class="pull-left">第<b>1-1</b>条，共<b>1</b>条数据.</div>
                        </div>
                        <div class="dataTables_paginate paging_full_numbers"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
