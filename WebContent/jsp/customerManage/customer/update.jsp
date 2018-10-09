<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
					<i class="icon-reorder"></i> 更新客户 <a href="javascript:;"
						class="pull-right" onclick="history.go(-1);"><i
						class="icon-reply"></i> </a>
				</div>
				<div class="widget-content padded clearfix">
					<form id="w0" class="form-horizontal"
						action="view/customerManage/customer/index.jsp" method="get">
						<input type="hidden" name="_csrf"
							value="WE5pUXNvMmQ6OT86ShZxHAkgWQE.V10vByQYNB8/WzwvGicZASlIUw==">
						<input type="hidden" id="customer-owner_id" class="owner_id"
							name="Customer[owner_id]" value="2"> <input type="hidden"
							id="customer-department_id" class="department_id"
							name="Customer[department_id]" value="1"> <input
							type="hidden" id="customer-position_id" class="position_id"
							name="Customer[position_id]" value="1">
						<div class="form-group field-customer-owner_name">
							<label class="control-label col-sm-2" for="customer-owner_name">负责人</label>
							<div class="col-sm-8">
								<input type="hidden" id="customerId" value="1" /> <input
									type="text" id="PRINPICAL"
									class="owner_name form-control weiBoxs-dialog"
									readonly="readonly" name="Customer[owner_name]" value="黄秋"
									dialog-size="large" onclick="selectLinkMan()"
									dialog-title="选择所属人" dialog-url="/manage/select-user.html"
									placeholder="负责人"> <input type="hidden" id="linkManId"
									value="1" />
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						<div class="form-group field-customer-customer_name required">
							<label class="control-label col-sm-2"
								for="customer-customer_name">客户名称</label>

							<div class="col-sm-8">
								<input type="text" id="CUSTOMERNAME" class="form-control"
									name="Customer[customer_name]" value="百度"
									onfocus="$(this).onlypressnum();" placeholder="客户名称">
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						<div class="form-group field-customer-customer_zipcode required">
							<label class="control-label col-sm-2"
								for="customer-customer_zipcode">邮编</label>

							<div class="col-sm-8">
								<input type="text" id="POST_CODE" class="form-control"
									name="Customer[customer_zipcode]" value="210000"
									onfocus="$(this).onlypressnum();" placeholder="邮编">
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						<div class="form-group field-customer-customer_industry required">
							<label class="control-label col-sm-2"
								for="customer-customer_industry">所属行业</label>

							<div class="col-sm-8">
								 <select
									id="FIELD_ID" class="form-control"
									name="Customer[customer_industry]">
									<option value="">请选择...</option>
									<c:forEach items="${listWorkField}" var="list">
										<option value="${list.fieldId }">${list.fieldName }</option>
									</c:forEach>
								</select>
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						<div class="form-group field-customer-customer_origin required">
							<label class="control-label col-sm-2"
								for="customer-customer_origin">客户来源</label>

							<div class="radio-list col-sm-8">
								
								<div id="customer-customer_origin">
									<c:forEach items="${listSource }" var="source">
									<label class="label-radio inline"> 
									<input type="radio"name="Customer[customer_origin]" class="aa" value="${source.sourceId }"> <span class="custom-radio"></span>${source.sourceName } </label>
								</c:forEach>
								</div>
								<div class="help-block help-block-error"></div>
							</div>
						</div>
						
						<div class="form-group field-customer-customer_employee required">
							<label class="control-label col-sm-2"
								for="customer-customer_employee">员工数</label>

							<div class="col-sm-8">
								<select id="EMPLOYEE_NUMBERS" class="form-control"
									name="Customer[customer_employee]">
									<option value="">请选择...</option>
									<option value="5-20" selected>5-20</option>
									<option value="21-50">21-50</option>
									<option value="50以上">50以上</option>
								</select>
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						<div class="form-group field-customer-customer_tag required">
							<label class="control-label col-sm-2" for="customer-customer_tag">地址</label>

							<div class="col-sm-8">
								<input type="text" id="address" class="form-control"
									name="Customer[customer_tag]" value="南京"
									onfocus="$(this).onlypressnum();" placeholder="地址">
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						
						<div class="form-group field-customer-customer_tag required">
							<label class="control-label col-sm-2" for="customer-customer_tag">标签</label>

							<div class="col-sm-8">
								<input type="text" id="TAG" class="form-control"
									name="Customer[customer_tag]" value="1"
									onfocus="$(this).onlypressnum();" placeholder="标签">
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						<div class="form-group field-customer-customer_remarks">
							<label class="control-label col-sm-2"
								for="customer-customer_remarks">备注</label>

							<div class="col-sm-8">
								<textarea id="REMARKS" class="form-control"
									name="Customer[customer_remarks]" style="height: 80px;"
									placeholder="备注">大客户,提成5w+</textarea>
							</div>
							<div class="help-block help-block-error"></div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"></label>

							<div class="col-lg-10">
								<button type="button" class="btn btn-primary"
									onclick="updateCustomer()">修改</button>
								<button type="button" class="btn btn-default"
									onClick="history.go(-1);">返回</button>
								<input type="hidden" name="reback">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- 	联系人模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<input type="hidden" id="referencepositionId"
						name="referencepositionId">
					<h4 class="modal-title" id="myModalLabel">选择关联菜单</h4>
				</div>
				<div class="modal-body">
					<table class="table" id="example">
						<!-- 							<caption>响应式表格布局</caption> -->
						<thead>
							<tr>
								<th>选择</th>
								<th>姓名</th>
								<th>职位</th>
								<th>手机号码</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="radio" name="radioName"
									style=" opacity: 1;margin-top: -6px " id="1" /></td>
								<td id="1_lg">阿萨德</td>
								<td>洒出</td>
								<td>123</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" id="checkPass" class="btn btn-primary"
						onclick="postCheckInfo()()">确认</button>
					<button type="button" id="checkRefuse" class="btn btn-primary"
						onclick="postCheckDocInfo()">取消</button>
				</div>
			</div>

		</div>
	</div>

</body>
<script type="text/javascript">
	$(function(){
		$("#FIELD_ID").val('2');
		var list = document.getElementsByName("Customer[customer_origin]");
		for ( var i = 0; i < list.length; i++) {
			if (list[i].value==2) {
				list[i].checked=true;
			}
		}
	});
	function selectLinkMan() {
		$("#myModal").modal("show");
		// 	$("#divshow").show();
	}

	function postCheckInfo() {
		var list = document.getElementsByName("radioName");
		for ( var i = 0; i < list.length; i++) {
			if (list[i].checked == true) {
				var id = list[i].id;
				var textName = document.getElementById(id + "_lg").innerText;
				$("#PRINPICAL").val("");
				$("#linkManId").val("");
				$("#PRINPICAL").val(textName);
				$("#linkManId").val(id);
			}
		}
		$("#myModal").modal("hide");
	}

	function postCheckDocInfo() {
		$("#myModal").modal("hide");
	}

	
	function updateCustomer() {
		var list = document.getElementsByName("Customer[customer_origin]");
		var SOURCE_ID = null;
		for ( var i = 0; i < list.length; i++) {
			if (list[i].checked == true) {
				SOURCE_ID = list[i].value;
			}
		}
		// 		var PRINPICAL=$("#PRINPICAL").val();
		var CUSTOMERNAME = $("#CUSTOMERNAME").val();
		var POST_CODE = $("#POST_CODE").val();
		var FIELD_ID = $("#FIELD_ID").find("option:selected").val();
		
		var EMPLOYEE_NUMBERS = $("#EMPLOYEE_NUMBERS").find("optio:selected")
				.val();
		var ADDRESS = $("#ADDRESS").val();//
		var TAG = $("#TAG").val();
		var REMARKS = $("#REMARKS").val();
		var linkManId = $("#linkManId").val();
		var customerId = $("#customerId").val();
		var data = {

		};
		// 		data.PRINPICAL=PRINPICAL;
		data.CUSTOMERNAME = CUSTOMERNAME;
		data.POST_CODE = POST_CODE;
		data.FIELD_ID = FIELD_ID;
		data.SOURCE_ID = SOURCE_ID;
		data.EMPLOYEE_NUMBERS = EMPLOYEE_NUMBERS;
		data.ADDRESS = ADDRESS;
		data.TAG = TAG;
		data.REMARKS = REMARKS;
		data.linkManId = linkManId;
		data.customerId = customerId;
		var str = /^\+?[1-9][0-9]*$/;
		if (!str.test(data.POST_CODE)) {
			alert("qq请输入数字类型");
			return;
		}
		$.ajax({
			type : 'post',
			url : 'CustomerServlet?method=updateCustomer',
			data : data,
			cache : false,
			sync : true,
			success : function(msg) {
				var json = JSON.parse(msg);
				if (0 == json.flag) {
					alert(json.msg);
					return;
				} else {
					window.location.href = 'CustomerServlet?method=getAllCustomer';
				}

			},
			error : function(msg) {
				alert("请求失败1");
				return;
			}
		});
	}
</script>

<script type="text/javascript">
	$.extend($.fn.dataTable.defaults, {
		"searching" : false,
		"ordering" : false
	});
	$('#example').DataTable({
		language : {
			"sProcessing" : "处理中...",
			"sLengthMenu" : "显示 _MENU_ 项结果",
			"sZeroRecords" : "没有匹配结果",
			"sInfo" : "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
			"sInfoEmpty" : "显示第 0 至 0 项结果，共 0 项",
			"sInfoFiltered" : "(由 _MAX_ 项结果过滤)",
			"sInfoPostFix" : "",
			"sSearch" : "搜索:",
			"sUrl" : "",
			"sEmptyTable" : "表中数据为空",
			"sLoadingRecords" : "载入中...",
			"sInfoThousands" : ",",
			"oPaginate" : {
				"sFirst" : "首页",
				"sPrevious" : "上页",
				"sNext" : "下页",
				"sLast" : "末页"
			}
		}
	});
</script>
</html>
