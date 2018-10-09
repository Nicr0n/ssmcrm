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
                <i class="icon-table"></i> 销售单
                    <span class="pull-right">
          <a class="btn btn-sm btn-primary" href="view/productManage/sales/create.jsp"><i class="icon-plus"></i>
              添加销售单</a>          <a class="btn btn-sm btn-default" href="sales/create.html?type=11"><i
                            class="icon-plus"></i> 添加退货单</a>      </span>
            </div>
            <div class="widget-content padded clearfix">
                <div class="dataTables_filter">
                    <form class="form-inline" action="/sales/index.html" method="get">
                        <div class="btn-group">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                按类型 <i class="caret"></i>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="sales/index.html" class="disabled"><i
                                        class="glyphicon glyphicon-list-alt"></i> 全部</a></li>
                                <li><a href="sales/index.html?type=10" class=""><i class="glyphicon glyphicon-save"></i>
                                    销售单</a></li>
                                <li><a href="sales/index.html?type=11" class=""><i class="glyphicon glyphicon-open"></i>
                                    退货单</a></li>
                            </ul>
                        </div>
                        <div class="btn-group">
                            <a class="btn btn-danger deleteSales"><i class="glyphicon glyphicon-remove"></i> 删除</a>
                        </div>
                        <div class="btn-group">
                            <select id="field" class="form-control" onchange="changeCondition()" name="field">
                                <option class="" value="">--请选择筛选条件--</option>
                                <option class="text" value="number">编号</option>
                                <option class="text" value="created_by">制单人</option>
                                <option class="date" value="send_date">销售日期</option>
                            </select>

                            <div class="form-group" id="conditionContent"></div>
                            <div class="form-group" id="searchContent"></div>
                        </div>
                        <input type="hidden" name="type" value=""/>

                        <div class="btn-group">
                            <button type="submit" class="btn btn-success"><i class="icon-search"></i> 搜索</button>
                        </div>
                    </form>
                </div>
                <div id="w0" class="grid-view">
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>
                                    <label class="label-checkbox">
                                        <input type="checkbox" class="select-on-check-all" name="selection_all"
                                               value="1"><span class="custom-checkbox"></span></label>
                                </th>
                                <th nowrap>编号</th>
                                <th nowrap>主题</th>
                                <th nowrap>客户</th>
                                <th nowrap>总金额</th>
                                <th nowrap>出入库</th>
                                <th nowrap>下单时间</th>
                                <th nowrap>制单人</th>
                                <th nowrap>创建时间</th>
                                <th class="action-column">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr data-key="6">
                                <td>
                                    <label class="label-checkbox">
                                        <input type="checkbox" name="selection[]" value="6"><span
                                            class="custom-checkbox"></span></label>
                                </td>
                                <td><img src="../picture/check.png" alt=""> <a
                                        href="sales/update.html?id=6">CG201602242</a></td>
                                <td><a href="sales/update.html?id=6">zsdfsdfsdf</a></td>
                                <td><a href="customer/view.html?id=1" target="_blank">百度科技有限公司</a></td>
                                <td>999.99</td>
                                <td>已出库</td>
                                <td>2016-02-24</td>
                                <td>admin</td>
                                <td>2016-03-25</td>
                                <td><a class="btn btn-info btn-xs" href="sales/prevprint.html?id=6"
                                       target="_blank">打印</a></td>
                            </tr>
                            <tr data-key="5">
                                <td>
                                    <label class="label-checkbox">
                                        <input type="checkbox" name="selection[]" value="5"><span
                                            class="custom-checkbox"></span></label>
                                </td>
                                <td><img src="../picture/check.png" alt=""> <a
                                        href="sales/update.html?id=5">XS201602241</a></td>
                                <td><a href="sales/update.html?id=5">dfsdfsdfsdf</a></td>
                                <td><a href="customer/view.html?id=1" target="_blank">百度科技有限公司</a></td>
                                <td>999.99</td>
                                <td>已出库</td>
                                <td>2016-02-24</td>
                                <td>admin</td>
                                <td>2016-03-25</td>
                                <td><a class="btn btn-info btn-xs" href="sales/prevprint.html?id=5"
                                       target="_blank">打印</a></td>
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
</div>
</body>

</html>
