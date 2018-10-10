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
        <div class="widget-container fluid-height clearfix mwi1200">
            <div class="heading clearfix">
                <i class="icon-reorder"></i> 创建菜单 <a href="javascript:;" class="pull-right" onclick="history.go(-1);"><i
                    class="icon-reply"></i></a>
            </div>
            <div class="widget-content padded clearfix">
                <form id="addMenuFrom" class="form-horizontal">
                    <div class="form-group field-menu-parent_id required">
                        <label class="control-label col-sm-2" for="menu-parent_id">父级</label>
                        <div class="col-sm-8">
                            <select id="menu-parent_id" class="form-control" name="menu-parent_id">
                                <option value="0">顶级节点</option>
                              		<%--<option>|-客户管理</option>--%>
                              		<%--<option>|-系统管理</option>--%>
                            </select>
                        </div>
                        <div class="help-block help-block-error"></div>
                    </div>
                    
                    <div class="form-group field-menu-name required">
                        <label class="control-label col-sm-2" for="menu-name">名称</label>
                        <div class="col-sm-8">
                            <input type="text" id="menu-name" class="form-control" name="menu-name" maxlength="20"
                                   placeholder="名称">
                        </div>
                        <div class="help-block help-block-error"></div>
                    </div>
                    
                    <div class="form-group field-menu-url required">
                        <label class="control-label col-sm-2" for="menu-url">地址</label>
                        <div class="col-sm-8">
                            <input type="text" id="menu-url" class="form-control" name="menu-url" maxlength="50"
                                   placeholder="地址">
                        </div>
                        <div class="help-block help-block-error"></div>
                    </div>
                    
                    <div class="form-group field-menu-icon">
                        <label class="control-label col-sm-2" for="menu-icon">图标</label>
                        <div class="col-sm-8">
                            <input type="text" id="menu-icon" class="form-control" name="menu-icon" maxlength="25"
                                   placeholder="图标">
                        </div>
                        <div class="help-block help-block-error"></div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-lg-10">
                            <button type="button" id="addMenuBtn" class="btn btn-success" onclick="addMetuCheck()">创建</button>
                            <button type="button" class="btn btn-default" onClick="history.go(-1);">返回</button>
                            <input type="hidden" name="reback"></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function() {
        getAllParentMenu();
    })
    function getAllParentMenu() {
        $.ajax({
            url:'/menu/getAllParentMenu',
            success : function(data) {
                console.log(data);
                $.each(data.data,function(index,value) {
                    var str = '<option value="'+value.menuId+'">|-'+value.menuName+'</option>'
                    $("#menu-parent_id").append(str)
                })

            }
        })
    }
	function addMetuCheck(){
			var menuname=$("#menu-name").val();
			if( "" == menuname || undefined == menuname){
				alert("请设置菜单名");
				return ;
			}
	
			var menuurl=$("#menu-url").val();
			if( "" == menuurl || undefined == menuurl){
				alert("请设置菜单路径");
				return ;
			}

            var data = {};
			data.menuName=$("#menu-name").val();
			data.menuUrl=$("#menu-url").val();
            data.pictures=$("#menu-icon").val();
            data.parentMenuId=$("#menu-parent_id").val();
			$.ajax({
                type : 'post',
                contentType : "application/json",
                url : 'menu/addMenu',
                data : JSON.stringify(data),
                success : function(data) {
                    console.log(data);
                }
            })
	}
</script>
</html>
