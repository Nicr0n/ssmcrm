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
            <div class="col-md-7 col-sm-7">
                <div class="widget-container fluid-height clearfix">
                    <div class="heading clearfix">
                        <i class="icon-reorder"></i> 任务详情
                        <a href="javascript:;" class="pull-right" onclick="history.go(-1);"><i
                                class="icon-reply"></i></a>
                    </div>
                    <div class="widget-content padded clearfix">
                        <div class="search-header">
                            <a class="h4 inline-block">2015-12-19工作日志 </a>

                            <div class="text-muted"><a class="weiBoxs-dialog" href="manage/ajax-info.html?manage_id=1"
                                                       dialog-title="管理员信息" dialog-button="false">admin</a> : 2015-12-19
                                17:28:02 评论(0)
                            </div>
                        </div>
                        <p class="m-top-sm">

                        <p>4444444444444444444hhhhhhhhhhh</p>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-5 col-sm-5">
                <div class="widget-container fluid-height clearfix list rating-widget">
                    <div class="heading clearfix">日志评论</div>
                    <div class="widget-content padded clearfix">
                        <form method="post" id="comment_form">
                            <p class="m-top-sm">
                                <textarea rows="2" class="form-control" name="content" id="content"
                                          placeholder="评论内容"></textarea>
                                <input type="hidden" name="subject_id" value="2">
                                <input type="hidden" name="owner_id" value="1">
                                <input type="hidden" name="comment_type" value="10"></p>
                            <a class="btn btn-sm btn-primary margin-top-10" onclick="">提交</a>
                        </form>
                    </div>
                    <div id="tasks-list" data-pjax-container="" data-pjax-push-state data-pjax-timeout="1000">
                        <ul>
                            <li>
                                <div class="reviewer-info">
                                    <div class="star-rating pull-right">
                                        <a class="btn-delete-communicate" href="communicate/delete.html?id=6"
                                           onclick=""><i class="fa fa-trash-o"></i> 删除</a>
                                    </div>
                                    <img width="30" height="30" src="${pageContext.request.contextPath }/picture/1_avatar_middle.jpg">admin<em>2016-05-17
                                    08:22:21</em>
                                </div>
                                <div class="review-text">
                                    <p>2222</p>
                                </div>
                            </li>
                            <li>
                                <div class="reviewer-info">
                                    <div class="star-rating pull-right">
                                        <a class="btn-delete-communicate" href="communicate/delete.html?id=5"
                                           onclick=""><i class="fa fa-trash-o"></i> 删除</a>
                                    </div>
                                    <img width="30" height="30" src="${pageContext.request.contextPath }/picture/1_avatar_middle.jpg">admin<em>2016-05-14
                                    08:53:59</em>
                                </div>
                                <div class="review-text">
                                    <p>dfsdfsdf</p>
                                </div>
                            </li>
                        </ul>
                        <div class="text-right" style="margin: 10px;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
