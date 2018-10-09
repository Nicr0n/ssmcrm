<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(function() {
		$("a").each(function() {
			this.onclick = function() {
				var serializeVal = $(":hidden").serialize();
				var href = this.href + "&" + serializeVal;
				window.location.href = href;
				return false;
			};
		});
	});
</script>

<input type="hidden" name="name" value="${param.name }" />
<input type="hidden" name="minAge" value="${param.minAge }" />
<input type="hidden" name="maxAge" value="${param.maxAge }" />
