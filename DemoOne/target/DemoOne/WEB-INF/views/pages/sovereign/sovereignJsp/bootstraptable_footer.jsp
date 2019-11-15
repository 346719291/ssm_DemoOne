    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="jpath" value="${pageContext.request.contextPath }"/>
	<script src="${jpath }/static/pagesOfStyle/sovereignOfStyle/vendor/jquery/jquery.min.js"></script>
	<script src="${jpath }/static/pagesOfStyle/sovereignOfStyle/vendor/popper.js/popper.min.js"></script>
	<script src="${jpath }/static/pagesOfStyle/sovereignOfStyle/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="${jpath }/static/pagesOfStyle/sovereignOfStyle/vendor/chart.js/chart.min.js"></script>
	<script src="${jpath }/static/pagesOfStyle/sovereignOfStyle/js/carbon.js"></script>
	<script src="${jpath }/static/pagesOfStyle/sovereignOfStyle/js/demo.js"></script>


	
	<script src="https://unpkg.com/tableexport.jquery.plugin/tableExport.min.js"></script>
	<script src="${jpath }/static/pagesOfStyle/dist/bootstrap-table.min.js"></script>
	<script src="${jpath }/static/pagesOfStyle/dist/bootstrap-table-locale-all.min.js"></script>
	<script src="${jpath }/static/pagesOfStyle/dist/extensions/export/bootstrap-table-export.min.js"></script>
	<script type="text/javascript" src="${jpath }/static/pagesOfStyle/qianming/jquery.min.js"></script>
	<script type="text/javascript" src="${jpath }/static/pagesOfStyle/qianming/jq-signature.min.js"></script>
	<script type="text/javascript">
	
$(function(){
	//加载签名框
     $('.qianming').jqSignature({width:300,height:200});
	 //清空签名
	 $(".res_qianming").click(function(){
	     $('.qianming').jqSignature('clearCanvas');
		 });
	 //保存签名
	 $(".yes_qianming").click(function(){
	    var qianming_val=$('.qianming').jqSignature('getDataURL');
		$(".qianming_val").val(qianming_val);
		 });
	})
</script>
	</body>
</html>