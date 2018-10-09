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
                <i class="icon-table"></i> 采购单
                    <span class="pull-right">
          <a class="btn btn-sm btn-primary" href="view/productManage/purchase/create.jsp"><i class="icon-plus"></i>
              添加采购单</a>          <a class="btn btn-sm btn-default" href="purchase/create.html?type=21"><i
                            class="icon-plus"></i> 添加退货单</a>      </span>
            </div>
            <div class="widget-content padded clearfix">
                <div class="dataTables_filter">
                    <form class="form-inline" action="/purchase/index.html" method="get">
                        <div class="btn-group">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                按类型 <i class="caret"></i>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="purchase/index.html" class="disabled"><i
                                        class="glyphicon glyphicon-list-alt"></i> 全部</a></li>
                                <li><a href="purchase/index.html?type=20" class=""><i
                                        class="glyphicon glyphicon-save"></i> 采购单</a></li>
                                <li><a href="purchase/index.html?type=21" class=""><i
                                        class="glyphicon glyphicon-open"></i> 退货单</a></li>
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
                                <option class="date" value="send_date">采购日期</option>
                            </select>

                            <div class="form-group" id="conditionContent"></div>
                            <div class="form-group" id="searchContent"></div>
                        </div>
                        <input type="hidden" name="type" value=""/>

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
                            <tr data-key="7">
                                <td>
                                    <label class="label-checkbox">
                                        <input type="checkbox" name="selection[]" value="7"><span
                                            class="custom-checkbox"></span></label>
                                </td>
                                <td><a href="purchase/update.html?id=7">CG201702233</a></td>
                                <td><a href="purchase/update.html?id=7">123</a></td>
                                <td><a href="customer/view.html?id=12" target="_blank">小米科技</a></td>
                                <td>999.99</td>
                                <td>待操作</td>
                                <td>2017-02-23</td>
                                <td>小明</td>
                                <td>2017-02-23</td>
                                <td><a class="btn btn-danger btn-xs btn-delete-dialog" href="purchase/audit.html?id=7"
                                       dialog-tip="确定要执行该操作吗?"><i class="glyphicon glyphicon-flag"></i> 审核</a> <a
                                        class="btn btn-primary btn-xs" href="purchase/update.html?id=7"><i
                                        class="fa fa-edit"></i> 编辑</a> <a class="btn btn-default btn-xs"
                                                                          href="purchase/prevprint.html?id=7"
                                                                          target="_blank"><i class="fa  fa-print"></i>
                                    打印</a></td>
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
