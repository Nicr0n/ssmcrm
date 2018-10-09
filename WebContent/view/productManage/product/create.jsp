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
                <i class="icon-reorder"></i> 新增产品 <a href="javascript:;" class="pull-right"
                                                          onclick="history.go(-1);"><i class="icon-reply"></i></a>
            </div>
            <div class="widget-content padded clearfix">get
                <form id="w0" class="form-horizontal" action="view/productManage/product/index.jsp" method="get">
                    <input type="hidden" name="_csrf" value="UUlJQlQ4MDczPh8pbUFzTwAneRIZAF98DiM4JzhoWW8mHQcKJn5KAA==">

                    <div class="form-body">
                        <div class="form-group field-product-name required">
                            <label class="control-label col-sm-2" for="product-name">名称</label>

                            <div class="col-sm-8">
                                <input type="text" id="product-name" class="form-control" name="Product[name]"
                                       value="111" maxlength="60" placeholder="名称">
                            </div>
                            <div class="help-block help-block-error"></div>
                        </div>
                        <div class="form-group field-product-category_id required">
                            <label class="control-label col-sm-2" for="product-category_id">类别</label>

                            <div class="col-sm-8">
                                <select id="product-category_id" class="form-control" name="Product[category_id]">
                                    <option value="">请选择...</option>
                                    <option value="1">34534534品</option>
                                    <option value="6">---|-1231234444</option>
                                    <option value="8" selected>---|-rthtrh</option>
                                    <option value="2">3453</option>
                                    <option value="7">---|-rthrthrh</option>
                                    <option value="9">---|-erter</option>
                                    <option value="3">345345dfdf</option>
                                    <option value="5">---|-555</option>
                                </select>
                            </div>
                            <div class="help-block help-block-error"></div>
                        </div>
                        <div class="form-group field-product-cost_price required">
                            <label class="control-label col-sm-2" for="product-cost_price">成本价</label>

                            <div class="col-sm-8">
                                <input type="text" id="product-cost_price" class="form-control"
                                       name="Product[cost_price]" value="222" onfocus="$(this).onlypressnum();"
                                       placeholder="成本价">
                            </div>
                            <div class="help-block help-block-error"></div>
                        </div>
                        <div class="form-group field-product-suggested_price required">
                            <label class="control-label col-sm-2" for="product-suggested_price">零售价</label>

                            <div class="col-sm-8">
                                <input type="text" id="product-suggested_price" class="form-control"
                                       name="Product[suggested_price]" value="999.99" onfocus="$(this).onlypressnum();"
                                       placeholder="零售价">
                            </div>
                            <div class="help-block help-block-error"></div>
                        </div>
                        <div class="form-group field-product-standard">
                            <label class="control-label col-sm-2" for="product-standard">规格</label>

                            <div class="col-sm-8">
                                <input type="text" id="product-standard" class="form-control" name="Product[standard]"
                                       value="" onfocus="$(this).onlypressnum();" placeholder="规格">
                            </div>
                            <div class="help-block help-block-error"></div>
                        </div>
                        <div class="form-group field-product-description">
                            <label class="control-label col-sm-2" for="product-description">备注</label>

                            <div class="col-sm-8">
                                <textarea id="product-description" class="form-control" name="Product[description]"
                                          style="height:80px;" placeholder="备注"></textarea>
                            </div>
                            <div class="help-block help-block-error"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>

                        <div class="col-lg-10">
                            <button type="submit" class="btn btn-primary">新增</button>
                            <button type="button" class="btn btn-default" onClick="history.go(-1);">返回</button>
                            <input type="hidden" name="reback"></div>
                        <!-- /.col -->
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>

</html>
