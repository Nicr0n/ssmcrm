	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="navbar navbar-fixed-top scroll-hide">
    <div class="container-fluid top-bar">
        <div class="pull-right">
            <ul class="nav navbar-nav pull-right">
                <li class="dropdown notifications hidden-xs"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span
                        aria-hidden="true" class="se7en-flag"></span>

                    <div class="sr-only">Notifications</div>
                </a></li>
                <li class="dropdown messages hidden-xs"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span
                        aria-hidden="true" class="se7en-envelope"></span>

                    <div class="sr-only">Messages</div>
                </a></li>
                <li class="dropdown user hidden-xs"><a data-toggle="dropdown" class="dropdown-toggle" href="#"> <img
                        width="34" height="34" src="picture/2_avatar_middle.jpg">${sessionScope.currentUser.employeeName}<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="login/logout"><i class="icon-signout"></i>Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <button class="navbar-toggle">
            <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
        </button>
        <a class="logo" href="#">weiboxs</a>
    </div>
    <div class="container-fluid main-nav clearfix">
        <div class="nav-collapse">
            <ul class="nav">
            
                <li class="">
                	<a href="control/countAll" class="">
                		<span aria-hidden="true" class="se7en-home"></span>控制台
                	</a>
                </li>
                <li class="">
                	<a href="javascript:;" class="" data-toggle="dropdown" data-hover="dropdown">
						<span aria-hidden="true" class="se7en-star"></span> 客户管理<b class="caret"></b>
                	</a>
                    <ul class="dropdown-menu">
                        <li><a href="customer/getAllCustomer" class="">客户</a></li>
                        <li><a href="linkMan/getAllLinkMan" class="">联系人</a></li>
                        <li><a href="buiness/getAllBusiness" class="">商机</a></li>
                    </ul>
                </li>
                
                
                 <li class=""><a href="javascript:;" class="" data-toggle="dropdown" data-hover="dropdown"> <span
                        aria-hidden="true" class="se7en-flag"></span> 个人办公<b class="caret"></b>
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="view/personalOffice/task/index.jsp" class="">我的任务</a></li>
                        <li><a href="view/personalOffice/dailylog/index.jsp" class="">工作日志</a></li>
                        <li><a href="view/personalOffice/mail/index.jsp" class="">电子邮件</a></li>
                    </ul>
                </li>
                
                <li class=""><a href="javascript:;" class="" data-toggle="dropdown" data-hover="dropdown"> <span
                        aria-hidden="true" class="se7en-forms"></span> 产品管理<b class="caret"></b>
                </a>
                    <ul class="dropdown-menu">
                        <li><a href="view/productManage/product/index.jsp" class="">产品</a></li>
                        <li><a href="view/productManage/sales/index.jsp" class="">销售单</a></li>
                        <li><a href="view/productManage/purchase/index.jsp" class="">采购单</a></li>
                        <li><a href="view/productManage/stock/index.jsp" class="">出入库</a></li>
                        <li><a href="view/productManage/stock-detail/index.jsp" class="">库存明细</a></li>
                        <li><a href="view/productManage/product-category/index.jsp" class="">产品类别</a></li>
                        <li><a href="view/productManage/product-warehouse/index.jsp" class="">仓库管理</a></li>
                    </ul>
                </li>
                
                
                <li class="current"><a href="javascript:;" class="current" data-toggle="dropdown" data-hover="dropdown">
                    <span aria-hidden="true" class="se7en-gear"></span> 系统设置<b class="caret"></b>
                	</a>
                    <ul class="dropdown-menu">
                        <li><a href="jsp/systemSettings/manage/index.jsp" class="">员工管理</a></li>
                        <li><a href="jsp/systemSettings/position/index.jsp" class="">职位管理</a></li>
                        <li><a href="jsp/systemSettings/menu/index.jsp" class="">菜单管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>