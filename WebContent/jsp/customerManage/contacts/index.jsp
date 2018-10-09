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
                <i class="icon-table"></i> 联系人
                <a class="btn btn-sm btn-primary-outline pull-right" href="LinkManServlet?method=getAllCustomer"><i
                        class="icon-plus"></i> 添加联系人</a></div>
            <div class="widget-content padded clearfix">
                <div class="dataTables_filter">
                   <form id="actionFormSo" action="LinkManServlet?method=getOneLinkMan" method="post"> 
<!--                         <div class="btn-group"> -->
<!--                             <button class="btn btn-danger batchSendSms" type="button">发送短信</button> -->
<!--                         </div> -->
                        <div class="btn-group">
                            <input type="text" class="form-control input-sm" name="mobile" id="mobileId" placeholder="手机号">
                        </div>
                        <div class="btn-group">
                            <input type="text" class="form-control input-sm" name="email" id="emailId" placeholder="邮箱">
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn btn-success btn-sm" id="soo"  ><i
                                    class="glyphicon glyphicon-search"></i> 搜索
                            </button>
                        </div>
                   </form> 
                </div>
<!--                <form id="actionForm" action="LinkManServlet?method=getAllLinkMan" method="post">  -->
                    <%-- <input type="hidden" name="_csrf" value="VUp3YjBjcDY3PSEJCRozTgQkRzJ9Wx99CiAGB1wzGW4iHjkqQiUKAQ==">
					<input type="hidden" id="flag" value="${flag }"/> --%>
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
                                    <!-- <th nowrap>所属客户</th> -->
                                    <th nowrap>姓名</th>
                                    <th nowrap>性别</th>
                                    <th nowrap>尊称</th>
                                    <th nowrap>职位</th>
                                    <th nowrap>手机</th>
                                    <th nowrap>电子邮箱</th>
                                    <th nowrap>QQ</th>
                                    <th nowrap>创建时间</th>
                                    <th nowrap>更新时间</th>
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
                                    <td>黄秋</td>
                                    	<td>男</td>
                                    
                                    	<td>黄总</td>
                                    
                                    <td>老板</td>
                                    <td>18999998888</td>
                                    <td>688541644@qq.com</td>
                                    <td><a href="mailto:xxxx@xxx.com">654165841</a></td>
                                    <td>2088-11-25</td>
                                    <td>2199-11-25</td>
                                    <td></td>
                                     <td><button class="btn btn-success btn-sm" 
                                           title="查看"
                                           aria-label="查看" onclick="examine()">查看</button><button class="btn btn-warning btn-sm"
                                                                    
                                                                    title="更新"
                                                                    aria-label="更新" onclick="updateLinkMan()">修改</button></td>
                                </tr>
                                 <tr data-key="4">
                                    <td>
                                        <label class="label-checkbox">
                                            <input type="checkbox" name="selection[]" value="4"><span
                                                class="custom-checkbox"></span></label>
                                    </td>
                                    <td>阿黄</td>
                                    	<td>男</td>
                                    
                                    	<td>黄哥</td>
                                    
                                    <td>员工</td>
                                    <td>18999998888</td>
                                    <td>688541644@qq.com</td>
                                    <td><a href="mailto:xxxx@xxx.com">654165841</a></td>
                                    <td>2088-11-25</td>
                                    <td>2199-11-25</td>
                                    <td></td>
                                     <td><button class="btn btn-success btn-sm" 
                                           title="查看"
                                           aria-label="查看" onclick="examine()">查看</button><button class="btn btn-warning btn-sm"
                                                                    
                                                                    title="更新"
                                                                    aria-label="更新" onclick="updateLinkMan()">修改</button></td>
                                </tr>
                                 <tr data-key="4">
                                    <td>
                                        <label class="label-checkbox">
                                            <input type="checkbox" name="selection[]" value="4"><span
                                                class="custom-checkbox"></span></label>
                                    </td>
                                   <%--  <td><a href="view/customerManage/customer/view.jsp">${listLinkManss.customerName }</a></td> --%>
                                    <td>秋生</td>
                                    	<td>男</td>
                                    
                                    	<td>黄叔</td>
                                    
                                    <td>老板</td>
                                    <td>18999998888</td>
                                    <td>688541644@qq.com</td>
                                    <td><a href="mailto:xxxx@xxx.com">654165841</a></td>
                                    <td>2088-11-25</td>
                                    <td>2199-11-25</td>
                                    <td></td>
                                    <td><button class="btn btn-success btn-sm" 
                                           title="查看"
                                           aria-label="查看" onclick="examine()">查看</button><button class="btn btn-warning btn-sm"
                                                                    
                                                                    title="更新"
                                                                    aria-label="更新" onclick="updateLinkMan()">修改</button></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
<!--                         <div class="datatable-footer"> -->
<!--                             <div class="dataTables_info"> -->
<!--                                 <div class="pull-left">第<b>1-2</b>条，共<b>2</b>条数据.</div> -->
<!--                             </div> -->
<!--                             <div class="dataTables_paginate paging_full_numbers"></div> -->
<!--                         </div> -->
                    </div>
<!--                 </form> -->
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
$(function(){
	$("#soo").on("click",function(){
		var mobile = $("#mobileId").val();
		var email = $("#emailId").val();
		if ((mobile!=null&&mobile!=""&&mobile!="undefined")||(email!=null&&email!=""&&email!="undefined")) {
			$("#actionFormSo").attr("action","LinkManServlet?method=getOneLinkMan");
			$("#actionFormSo").submit();
		}else{
			$("#actionFormSo").attr("action","LinkManServlet?method=getAllLinkMan");
			$("#actionFormSo").submit();
		}
		
		
	});
	
	

});


function examine(){
location.href='LinkManServlet?method=selectByPrimaryKey&type=1';
} 


function updateLinkMan(){
location.href='LinkManServlet?method=selectByPrimaryKey';
}

</script>
</body>

</html>
