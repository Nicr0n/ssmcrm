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
                <i class="icon-table"></i> 仓库列表
                <a class="weiBoxs-dialog btn btn-sm btn-primary-outline pull-right" href="product-warehouse/create.html"
                   dialog-title="添加仓库"><i class="icon-plus"></i> 添加仓库</a></div>
            <div class="widget-content padded clearfix">
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>说明</th>
                        <th style="width: 15%;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><a class="weiBoxs-dialog" href="product-warehouse/update.html?id=1"
                               dialog-title="修改仓库">合肥一号</a></td>
                        <td></td>
                        <td>
                            <a class="btn btn-primary btn-xs weiBoxs-dialog" href="product-warehouse/update.html?id=1"
                               dialog-title="修改仓库"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-danger btn-xs btn-delete-dialog" href="product-warehouse/delete.html?id=1"
                               title="删除" dialog-tip="确定要删除该仓库吗？删除后不可恢复哦！"><i class="glyphicon glyphicon-trash"></i> 删除</a>
                        </td>
                    </tr>
                    <tr>
                        <td><a class="weiBoxs-dialog" href="product-warehouse/update.html?id=2"
                               dialog-title="修改仓库">合肥二号</a></td>
                        <td>这是二号仓库</td>
                        <td>
                            <a class="btn btn-primary btn-xs weiBoxs-dialog" href="product-warehouse/update.html?id=2"
                               dialog-title="修改仓库"><i class="fa fa-edit"></i> 修改</a>
                            <a class="btn btn-danger btn-xs btn-delete-dialog" href="product-warehouse/delete.html?id=2"
                               title="删除" dialog-tip="确定要删除该仓库吗？删除后不可恢复哦！"><i class="glyphicon glyphicon-trash"></i> 删除</a>
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
