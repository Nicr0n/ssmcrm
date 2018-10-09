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
            <div class="col-sm-2">
                <div class="list-group">
                    <a class="list-group-item active" href="view/personalOffice/mail/index.jsp">
                        <p>收件箱</p>
                    </a>
                    <a class="list-group-item " href="view/personalOffice/mail/index.jsp">
                        <p>
                            星标邮件
                        </p>
                    </a>
                    <a class="list-group-item " href="view/personalOffice/mail/index.jsp">
                        <p>
                            重要邮件
                        </p>
                    </a>
                    <a class="list-group-item " href="view/personalOffice/mail/index.jsp">
                        <p>发件箱</p>
                    </a>
                </div>
            </div>
            <!-- /.col -->
            <div class="col-sm-10">
                <div class="widget-container fluid-height clearfix">
                    <div class="widget-content padded clearfix">
                        <form action="" method="get">
                            <div class="input-group">
                                <input class="form-control" type="text" name="k" placeholder="主题关键字..."><span
                                    class="input-group-btn"><button class="btn btn-default" type="submit">搜索
                            </button></span>
                            </div>
                        </form>
                        <div class="dataTables_filter clearfix">
                            <label class="label-checkbox inline" style="margin-left:8px;">
                                <input type="checkbox" id="chk-all">
                                <span class="custom-checkbox"></span>
                            </label>
                            <a class="btn btn-sm btn-success" href="view/personalOffice/mail/write.jsp">写邮件</a>
                            <a class="btn btn-sm btn-danger mail-delete">删除</a>

                            <div class="pull-right">
                                <div class="btn-group">
                                    <button class="btn btn-warning-outline dropdown-toggle btn-sm"
                                            data-toggle="dropdown"><i class="icon-reorder"></i>操作<span
                                            class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="mail/set-read.html"><i class="icon-envelope"></i> 标为已读</a></li>
                                        <li><a href="mail/set-read.html?cancel=1"><i class="icon-envelope"
                                                                                     style="color: #f5a532"></i>
                                            标为未读</a></li>
                                        <li><a href="mail/set-star.html"><i class="icon-star"
                                                                            style="color: #f5a532"></i> 设为星标</a></li>
                                        <li><a href="mail/set-star.html?cancel=1"><i class="icon-star"></i> 取消星标</a>
                                        </li>
                                        <li><a href="mail/set-important.html"><i class="icon-bookmark"
                                                                                 style="color:red"></i> 设为重要</a></li>
                                        <li><a href="mail/set-important.html?cancel=1"><i class="icon-bookmark"></i>
                                            取消重要</a></li>
                                    </ul>
                                </div>
                                <!-- /btn-group -->
                            </div>
                        </div>
                        <div>还没有邮件！</div>
                        <div>
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>
                                        <label class="label-checkbox">
                                            <input type="checkbox" class="select-on-check-all" name="selection_all"
                                                   value="1"><span class="custom-checkbox"></span></label>
                                    </th>
                                    <th>状态</th>
                                    <th nowrap>发件人</th>
                                    <th nowrap>主题</th>
                                    <th nowrap>时间</th>
                                    <th class="action-column">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr data-key="4">
                                    <td>
                                        <label class="label-checkbox">
                                            <input type="checkbox" name="selection[]" value="4"><span
                                                class="custom-checkbox"></span></label>
                                    </td>
                                    <td><i class="icon-envelope"></i>已读</td>
                                    <td>陆杰</td>
                                    <td>明天开会</td>
                                    <td>2016-02-22 09:19:29</td>
                                    <td><a class="label label-success" href="view/personalOffice/mail/view.jsp"
                                           title="查看"
                                           aria-label="查看">查看</a>
                                    </td>
                                </tr>
                                <tr data-key="4">
                                    <td>
                                        <label class="label-checkbox">
                                            <input type="checkbox" name="selection[]" value="4"><span
                                                class="custom-checkbox"></span></label>
                                    </td>
                                    <td><i class="icon-envelope" style="color:#f5a532"></i>未读</td>
                                    <td>陆杰</td>
                                    <td>明天开会</td>
                                    <td>2016-02-22 09:19:29</td>
                                    <td><a class="label label-success" href="view/personalOffice/mail/view.jsp"
                                           title="查看"
                                           aria-label="查看">查看</a>
                                    </td>
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
