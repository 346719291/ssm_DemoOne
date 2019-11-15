<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="${jpath }/static/pagesOfStyle/qianming/layui.js"></script>
</body>
</html>
<script>
	function panku(){
			$.post("${jpath }/cunkuinfo/panku_caozuo");
		}
</script>