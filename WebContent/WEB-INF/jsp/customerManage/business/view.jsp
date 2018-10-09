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
            <div class="col-md-2 col-sm-2">
                <div class="list-group">
                    <a class="list-group-item" href="#message1" data-toggle="tab">
                        <p>基本信息</p>
                    </a>
                   
                    <a class="list-group-item" href="#message3" data-toggle="tab">
                        <p>
                            <span class="badge">1</span>推进记录
                        </p>
                    </a>
                </div>
            </div>
            <div class="col-md-10 col-sm-10 tab-content">
                <div class="tab-pane fade in active" id="message1">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="widget-container fluid-height clearfix">
                                <div class="heading clearfix">
                                    基本信息 <i class="icon-reply pull-right" onclick="history.go(-1);"></i>
                                </div>
                                <div class="widget-content padded">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <tbody>
                                            <tr>
                                                <th>负责人：</th>
                                                <td><a class="weiBoxs-dialog" href="manage/ajax-info.html?manage_id=1"
                                                       dialog-title="管理员信息" dialog-button="false">安抚</a></td>
                                                <th>创建时间：</th>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <th>修改时间：</th>
                                                <td></td>
                                                <th>客户：</th>
                                                <td><a href="customer/view.html?id=1" target="_blank"></a>安抚</td>
                                            </tr>
                                            <tr>
                                                <th>联系人：</th>
                                                <td>安抚</td>
                                                <th>性别：</th>
                                                	<td>男</td>
                                                	<!-- <td>女</td> -->
                                            </tr>
                                            <tr>
                                                <th>尊称：</th>
                                                <td>阿斯钢</td>
                                                <th>手机：</th>
                                                <td>这些</td>
                                            </tr>
                                            <tr>
                                                <th>QQ：</th>
                                                <td>ad</td>
                                                <th>Email：</th>
                                                <td>qq@qq.com</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>商机名：</th>
                                                <td colspan="3">阿萨德</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>商机类型：</th>
                                                <td colspan="3">阿斯钢</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>状态：</th>
                                                	<td colspan="3">初步沟通</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>商机来源：</th>
                                                <td colspan="3">阿斯钢</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>赢单率：</th>
                                                <td colspan="3">21</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>预计价格：</th>
                                                <td colspan="3">13</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>下次联系时间：</th>
                                                <td colspan="3">2018-02-01</td>
                                            </tr>
                                            <tr>
                                                <th style="width: 15%" nowrap>下次联系内容：</th>
                                                <td colspan="3">爱干啥 </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               
            <div class="tab-pane fade in" id="message3">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="widget-container fluid-height clearfix">
                                <div class="heading clearfix">
                                    推进记录 <i class="icon-reply pull-right" onclick="history.go(-1);"></i> <i
                                        class="icon-plus pull-right weiBoxs-dialog"
                                        href="propel/create.html?subject_id=8&propel_type=10&status=3"
                                        dialog-title="添加推进"></i>
                                </div>
                                <div class="widget-content padded clearfix">
                                    <div id="propel" data-pjax-container="" data-pjax-push-state
                                         data-pjax-timeout="1000">
                                        <div id="w0" class="grid-view">
                                            <div class="table-responsive">
                                                <table class="table table-hover">
                                                    <thead>
                                                    <tr>
                                                        <th nowrap>推进状态</th>
                                                        <th nowrap>下次联系时间</th>
                                                        <th nowrap>下次联系内容</th>
                                                        <th nowrap>备注说明</th>
                                                        <th nowrap>创建时间</th>
                                                        <th nowrap>创建人</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
	                                                    <tr data-key="14">
						                                   		<td>初步沟通</td> 
						                                   		<!-- <td>签订合同</td>  -->
						                                   		<td></td> 
	                                                        <td>2018-03-04</td>
	                                                        <td>爱干啥</td>
	                                                        <td>按规定</td>
	                                                        <td>2099-02-14</td>
	                                                        <td>阿斯钢</td>
	                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>
</div>
</body>

</html>