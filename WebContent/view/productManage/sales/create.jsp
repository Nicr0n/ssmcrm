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
                <i class="icon-reorder"></i> 新增销售单 <a href="javascript:;" class="pull-right"
                                                      onclick="history.go(-1);"><i class="icon-reply"></i></a>
            </div>
            <div class="widget-content padded clearfix">
                <form id="billForm" class="form-horizontal" action="view/productManage/sales/index.jsp" method="get">
                    <div class="form-body">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:10px;">
                            <tr>
                                <td align="right"
                                    style="font-weight:bold; color:red; font-size:18px; line-height:40px;">——
                                    XS201703294
                                </td>
                            </tr>
                            <tr>
                                <td class="form-inline">
                                    <label>客户：</label>
                                    <input type="hidden" name="customer_id" id="customer_id" value="">
                                    <input type="text" value="" name="customer_name"
                                           class="form-control weiBoxs-dialog selectCustomer" id="customer_name"
                                           dialog-title="选择客户" dialog-size="large"
                                           dialog-url="/customer/dialog-list.html">
                                    <label style="margin-left:10px;">主题：</label>
                                    <input type="text" name="subject" class="form-control" id="subject" value="">
                                    <label style="margin-left:10px;">销售日期：</label>
                                    <input type="text" id="w0" class="form-control form_datetime" name="send_date"
                                           value="2017-03-29" readonly style="width:170px;">

                                    <div style="float:right;">
                                        <label style="margin-left:10px;">制单人：</label>
                                        <input type="text" class="form-control" value="小明" name="created_by"
                                               readonly="true">
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="row-fluid">
                            <div class="span12">
                                <table class="table table-bordered" id="no-input-border" width="95%" border="0"
                                       cellspacing="1" cellpadding="0">
                                    <thead>
                                    <tr>
                                        <th colspan="12" valign="center">商品信息</th>
                                        <th style="border: none;float: right;">
                                            <input type="button" class="btn btn-primary weiBoxs-dialog"
                                                   dialog-callback="productCallBacks" dialog-title="选择产品"
                                                   dialog-size="large" dialog-url="/product/dialog-list.html"
                                                   value="+添加产品">
                                        </th>
                                    </tr>
                                    <tr style="background-color:#E0E8FF;text-align:center;">
                                        <td style="width: 2%;">&nbsp;</td>
                                        <td style="width: 15%;">商品</td>
                                        <td>规格</td>
                                        <td>数量</td>
                                        <td>售价</td>
                                        <td>折扣率(%)</td>
                                        <td>折扣额</td>
                                        <td>税率(%)</td>
                                        <td>税额</td>
                                        <td>税前</td>
                                        <td>税后</td>
                                        <td style="width: 10%;">仓库</td>
                                        <td>备注</td>
                                    </tr>
                                    </thead>
                                    <tbody id="view_row">
                                    <tr id="row_1">
                                        <td style="text-align:center;">
                                            <a href="javascript:void(0);" class="reduce_one"><i
                                                    class="glyphicon glyphicon-minus"></i></a>
                                        </td>
                                        <td>
                                            <input type="hidden" name="product[1][product_id]" id="product_id_1"
                                                   class="product_id" value="0">
                                            <input type="text" id="product_name_1" class="form-control"
                                                   name="product[1][name]">
                                        </td>
                                        <td><span id="product_standard_1"
                                                  style="display:inline-block;min-width:50px;"></span></td>
                                        <td>
                                            <input type="text" name="product[1][amount]" id="product_amount_1"
                                                   class="amount form-control" onkeyup="product_calculate(1)"
                                                   onfocus="$(this).onlypressnum();">
                                        </td>
                                        <td>
                                            <input type="text" name="product[1][unit_price]" id="product_unit_price_1"
                                                   onkeyup="product_calculate(1)" class="form-control">
                                        </td>
                                        <td>
                                            <input type="text" name="product[1][discount_rate]"
                                                   id="product_discount_rate_1" class="form-control"
                                                   onkeyup="product_calculate(1)">
                                        </td>
                                        <td>
                                            <input type="text" id="product_discount_1"
                                                   class="product_discount form-control" readonly="readonly">
                                        </td>
                                        <td>
                                            <input type="text" name="product[1][tax_rate]" id="product_tax_rate_1"
                                                   onkeyup="product_calculate(1)" class="form-control">
                                        </td>
                                        <td>
                                            <input type="text" id="product_tax_price_1" class="tax_price form-control"
                                                   readonly="readonly">
                                        </td>
                                        <td>
                                            <input type="text" id="product_no_tax_price_1"
                                                   class="no_tax_price form-control" readonly="readonly">
                                        </td>
                                        <td>
                                            <input type="text" name="product[1][price]" id="product_prime_price_1"
                                                   class="prime_price form-control" readonly="readonly">
                                        </td>
                                        <td>
                                            <div class="divSelect">
                                                <select name="product[1][warehouse]" id="product_warehouse_id_1"
                                                        class="form-control" style="padding: 0px;">
                                                    <option value="1">合肥一号</option>
                                                    <option value="2">合肥二号</option>
                                                </select>
                                            </div>
                                        </td>
                                        <td>
                                            <input type="text" name="product[1][description]" class="form-control">
                                        </td>
                                    </tr>
                                    </tbody>
                                    <tbody id="add_products">
                                    </tbody>
                                    <tbody>
                                    <tr style="background-color:#FFFFF3">
                                        <td></td>
                                        <td>合计</td>
                                        <td></td>
                                        <td id="total_amount_val">0</td>
                                        <td></td>
                                        <td></td>
                                        <td id="total_product_discount_val">0</td>
                                        <td></td>
                                        <td id="total_tax_price_val">0</td>
                                        <td id="total_no_tax_price_val">0</td>
                                        <td id="total_prime_price_val">0</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr style="background-color:#FFFFF1">
                                        <td>&nbsp;</td>
                                        <td>其他费用</td>
                                        <td colspan="2">
                                            <input type="text" name="discount_price" class="form-control"
                                                   placeholder="0.00" id="discount_price" value="0"
                                                   onkeyup="cal_discount_price()">
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>最终应付</td>
                                        <td colspan="2">
                                            <input type="text" name="total_price" class="form-control"
                                                   placeholder="0.00" id="total_price" readonly="true" value="">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>地址</td>
                                        <td colspan="12">
                                            <input type="text" class="normal_input form-control" name="address" value=""
                                                   placeholder="发货地址...">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>备注</td>
                                        <td colspan="12">
                                            <textarea style="min-height:50px;" name="description"
                                                      class="form-control"></textarea>
                                        </td>
                                    </tr>
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <td style="text-align:center;" colspan="13">
                                            <input id="submitForm" class="btn btn-success" type="submit" value="保存">&nbsp;
                                            <input type="hidden" name="type" value="10"/>
                                            <input class="btn btn-default" type="button"
                                                   onclick="javascript:history.go(-1)" value="返回">&nbsp;
                                            <input type="hidden" name="reback"></td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
