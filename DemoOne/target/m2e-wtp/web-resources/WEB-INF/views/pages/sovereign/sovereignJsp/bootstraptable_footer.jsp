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
	<script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>
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
<script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

  //触发事件
  var active = {
    setTop: function(){
      //多窗口模式，层叠置顶
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '当你选择该窗体时，即会在最顶端'
        ,area: ['390px', '460px']
        ,shade: 0
        ,maxmin: true
        ,offset: [ //为了演示，随机坐标
          Math.random()*($(window).height()+300)
          ,Math.random()*($(window).width()-390)
        ] 
        ,content: '//layer.layui.com/test/settop.html'
        ,btn: ['下载', '关闭'] //只是为了演示
        ,yes: function(){
        	$.post("${jpath }/cunkuinfo/panku_caozuo")
        	alert("成功");
        }
      });
    }
  };
  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
});
</script>
	</body>
</html>