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
                        <i class="icon-table"></i> 产品管理
                        <a class="btn btn-sm btn-primary-outline pull-right" href="view\productManage\product\create.jsp"><i
                                class="icon-plus"></i> 添加产品</a></div>
                    <div class="widget-content padded clearfix">
                        <div class="dataTables_filter">
                            <div class="row">
                                <div class="col-md-8 col-sm-8">
                                    <form class="form-inline" action="http://demo1.weiboxs.com/product/index.html">
                                        <div class="btn-group">
                                            <button class="btn btn-danger btn-sm deleteProducts" type="button"><i
                                                    class="glyphicon glyphicon-remove"></i> 删除
                                            </button>
                                        </div>
                                        <input type="hidden" value="" name="category_id"/>

                                        <div class="btn-group">
                                            <input type="text" class="form-control input-sm" id="glyphicon-search"
                                                   name="name" value="" placeholder="产品名称">
                                        </div>
                                        <div class="btn-group">
                                            <button class="btn btn-success btn-sm" type="submit"><i
                                                    class="icon-search"></i> 搜索
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
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
                                        <th nowrap>名称</th>
                                        <th nowrap>规格</th>
                                        <th nowrap>创建时间</th>
                                        <th nowrap>更新时间</th>
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
                                        <td>111</td>
                                        <td></td>
                                        <td>1970-01-01 08:00:00</td>
                                        <td>1970-01-01 08:00:00</td>
                                        <td><a class="label label-warning edit"
                                               href="view/productManage/product/update.jsp" title="更新"
                                               aria-label="更新">修改</a></td>
                                    </tr>
                                    <tr data-key="5">
                                        <td>
                                            <label class="label-checkbox">
                                                <input type="checkbox" name="selection[]" value="5"><span
                                                    class="custom-checkbox"></span></label>
                                        </td>
                                        <td>156</td>
                                        <td></td>
                                        <td>1970-01-01 08:00:00</td>
                                        <td>1970-01-01 08:00:00</td>
                                        <td><a class="label label-warning edit" href="product/update.html?id=5"
                                               title="更新" aria-label="更新">修改</a></td>
                                    </tr>
                                    <tr data-key="4">
                                        <td>
                                            <label class="label-checkbox">
                                                <input type="checkbox" name="selection[]" value="4"><span
                                                    class="custom-checkbox"></span></label>
                                        </td>
                                        <td>123123</td>
                                        <td>123</td>
                                        <td>2015-11-04 21:41:06</td>
                                        <td>2015-11-04 21:41:06</td>
                                        <td><a class="label label-warning edit" href="product/update.html?id=4"
                                               title="更新" aria-label="更新">修改</a></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="datatable-footer">
                                <div class="dataTables_info">
                                    <div class="pull-left">第<b>1-3</b>条，共<b>3</b>条数据.</div>
                                </div>
                                <div class="dataTables_paginate paging_full_numbers"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-3">
                <div class="list-group">
                    <a href="view/productManage/product/index.jsp" class="list-group-item active">
                        <p>全部</p>
                    </a>
                    <a href="product/index.html?category_id=1" class="list-group-item ">
                        <p>34534534品</p>
                    </a>
                    <a href="product/index.html?category_id=6" class="list-group-item ">
                        <p>&nbsp;&nbsp;|-&nbsp;1231234444</p>
                    </a>
                    <a href="product/index.html?category_id=8" class="list-group-item ">
                        <p>&nbsp;&nbsp;|-&nbsp;rthtrh</p>
                    </a>
                    <a href="product/index.html?category_id=2" class="list-group-item ">
                        <p>3453</p>
                    </a>
                    <a href="product/index.html?category_id=7" class="list-group-item ">
                        <p>&nbsp;&nbsp;|-&nbsp;rthrthrh</p>
                    </a>
                    <a href="product/index.html?category_id=9" class="list-group-item ">
                        <p>&nbsp;&nbsp;|-&nbsp;erter</p>
                    </a>
                    <a href="product/index.html?category_id=3" class="list-group-item ">
                        <p>345345dfdf</p>
                    </a>
                    <a href="product/index.html?category_id=5" class="list-group-item ">
                        <p>&nbsp;&nbsp;|-&nbsp;555</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
