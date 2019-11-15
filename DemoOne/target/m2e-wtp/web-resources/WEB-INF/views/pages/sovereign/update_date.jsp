<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ include file="sovereignJsp/Form_Head.jsp"%>
	<button class="ff"> 点击</button>
</body>
</html>
<script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>
<script type="text/javascript">
	$(function (){
		$(".ff").click(function(){
			alert("ok");
		});
	})
</script>
