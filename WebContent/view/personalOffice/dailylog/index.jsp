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
        <div class="row">
            <div class="col-md-2 col-sm-2 no-padding-right">
                <div class="list-group">
                    <a class="list-group-item active" href="dailylog/index.html">
                        <p>全部</p>
                    </a>
                    <a class="list-group-item " href="dailylog/index.html?daily_type=1">
                        <p>日报</p>
                    </a>
                    <a class="list-group-item " href="dailylog/index.html?daily_type=2">
                        <p>周报</p>
                    </a>
                    <a class="list-group-item " href="dailylog/index.html?daily_type=3">
                        <p>月报</p>
                    </a>
                </div>
            </div>
            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <strong>视图：</strong>
                        <i class="fa fa-list"></i>
                        <a href="dailylog/index.html?search_status=1" class="at">全部</a> |
                        <a href="dailylog/index.html?search_status=2">我的日志</a> &nbsp;&nbsp;&nbsp;
                        <i class="fa fa-clock-o"></i>
                        <a href="dailylog/index.html?search_status=3">今日的</a> |
                        <a href="dailylog/index.html?search_status=4">本周的</a> |
                        <a href="dailylog/index.html?search_status=5">本月的</a> |
                        <a href="dailylog/index.html?search_status=6">最近更新</a>
                    </div>
                </div>
                <div class="widget-container fluid-height clearfix">
                    <div class="heading clearfix">
                        <i class="icon-table"></i> 工作日志
                        <a id="add-row" class="btn btn-sm btn-primary-outline pull-right"
                           href="view/personalOffice/dailylog/create.jsp"><i class="icon-plus"></i> 新增日志</a></div>
                    <div class="widget-content padded clearfix">
                        <div class="dataTables_filter">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form class="form-inline" action="/dailylog/index.html" method="get">
                                        <input type="hidden" name="search_status">
                                        <input type="hidden" name="daily_type">

                                        <div class="btn-group">
                                            <select id="field" class="form-control" onchange="changeCondition()"
                                                    name="field">
                                                <option class="" value="">--请选择筛选条件--</option>
                                                <option value="subject" class="text">主题</option>
                                                <option class="date" value="created_at">创建时间</option>
                                                <option class="date" value="updated_at">修改时间</option>
                                            </select>

                                            <div class="form-group" id="conditionContent"></div>
                                            <div class="form-group" id="searchContent"></div>
                                        </div>
                                        <div class="btn-group">
                                            <button type="submit" class="btn btn-success"><i
                                                    class="glyphicon glyphicon-search"></i> 搜索
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <form id="actionForm" action="/dailylog/index.html" method="post">
                            <input type="hidden" name="_csrf"
                                   value="WmJieldtLnA4FTQRbhRtCAsMUioaVUE7BQgTHzs9RygtNiwyJStURw==">

                            <div id="w0" class="grid-view">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th nowrap>主题</th>
                                            <th nowrap>负责人</th>
                                            <th nowrap>创建时间</th>
                                            <th nowrap>更新时间</th>
                                            <th nowrap>评论数</th>
                                            <th class="action-column">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr data-key="2">
                                            <td>1</td>
                                            <td><a href="dailylog/view.html?id=2">2015-12-19工作日志</a></td>
                                            <td>admin</td>
                                            <td>2015-12-19 17:28:02</td>
                                            <td>2015-12-19 17:28:17</td>
                                            <td>0</td>
                                            <td><a class="label label-success"
                                                   href="view/personalOffice/dailylog/view.jsp" title="查看"
                                                   aria-label="查看">查看</a></td>
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
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
