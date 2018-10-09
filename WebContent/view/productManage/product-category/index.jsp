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
                <i class="icon-table"></i> 产品类别
                <a class="weiBoxs-dialog btn btn-sm btn-primary-outline pull-right" href="product-category/create.html"
                   dialog-title="添加分类"><i class="icon-plus"></i> 添加分类</a></div>
            <div class="widget-content padded clearfix">
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>名称</th>
                        <th>说明</th>
                        <th style="width: 15%;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>34534534品</td>
                        <td>5345345</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-warning btn-xs weiBoxs-dialog" href="product-category/create.html?id=1"
                               dialog-title="修改类别"><i class="glyphicon glyphicon-plus"></i> 添加子类</a> <a
                                class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=1"
                                dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-default btn-xs" href="#" disabled><i
                                    class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>&nbsp;&nbsp;|-&nbsp;1231234444</td>
                        <td>123123</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=6"
                               dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-danger btn-xs btn-delete-dialog" href="product-category/delete.html?id=6"
                               title="删除" dialog-tip="确定要删除该类别吗？删除后不可恢复哦！"><i class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>&nbsp;&nbsp;|-&nbsp;rthtrh</td>
                        <td>rhrhrrrrrrrrrrrrrrrrrrrrr</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=8"
                               dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-danger btn-xs btn-delete-dialog" href="product-category/delete.html?id=8"
                               title="删除" dialog-tip="确定要删除该类别吗？删除后不可恢复哦！"><i class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>3453</td>
                        <td>4534534</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-warning btn-xs weiBoxs-dialog" href="product-category/create.html?id=2"
                               dialog-title="修改类别"><i class="glyphicon glyphicon-plus"></i> 添加子类</a> <a
                                class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=2"
                                dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-default btn-xs" href="#" disabled><i
                                    class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>&nbsp;&nbsp;|-&nbsp;rthrthrh</td>
                        <td>rhrthrhr</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=7"
                               dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-danger btn-xs btn-delete-dialog" href="product-category/delete.html?id=7"
                               title="删除" dialog-tip="确定要删除该类别吗？删除后不可恢复哦！"><i class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>&nbsp;&nbsp;|-&nbsp;erter</td>
                        <td>tetetet</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=9"
                               dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-danger btn-xs btn-delete-dialog" href="product-category/delete.html?id=9"
                               title="删除" dialog-tip="确定要删除该类别吗？删除后不可恢复哦！"><i class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>345345dfdf</td>
                        <td>345345</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-warning btn-xs weiBoxs-dialog" href="product-category/create.html?id=3"
                               dialog-title="修改类别"><i class="glyphicon glyphicon-plus"></i> 添加子类</a> <a
                                class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=3"
                                dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-default btn-xs" href="#" disabled><i
                                    class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>&nbsp;&nbsp;|-&nbsp;555</td>
                        <td>5555</td>
                        <td class="text-right" nowrap>
                            <a class="btn btn-primary btn-xs weiBoxs-dialog" href="product-category/update.html?id=5"
                               dialog-title="修改类别"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-danger btn-xs btn-delete-dialog" href="product-category/delete.html?id=5"
                               title="删除" dialog-tip="确定要删除该类别吗？删除后不可恢复哦！"><i class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>

</html>
