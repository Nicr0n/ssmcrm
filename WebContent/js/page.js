$(function() {

	$("#pageNum").change(function() {

		var val = $(this).val();
		val = $.trim(val);

		// 1. 校验 val 是否为数字 1, 2, 而不是 a12, b
		var flag = false;
		var reg = /^\d+$/g;
		var pageNum = 0;

		if (reg.test(val)) {
			// 2. 校验 val 在一个合法的范围内： 1-pages
			pageNum = parseInt(val);
			if (pageNum >= 1
					&& pageNum <= parseInt("${studentpage.pages }")) {
				flag = true;
			}
		}

		if (!flag) {
			alert("输入的不是合法的页码.");
			$(this).val("");
			return;
		}

		// 3. 页面跳转
		var href = "StudentServlet?method=list&pageNo=" + pageNum + "&"
				+ $(":hidden").serialize();
		window.location.href = href;
	
	});

	$("a").each(function() {
		this.onclick = function() {
			var serializeVal = $(":hidden").serialize();
			var href = this.href + "&" + serializeVal;
			window.location.href = href;
			return false;
		};
	});
});