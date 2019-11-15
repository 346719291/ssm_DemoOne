<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<html lang="en">
<head>
    <%@ include file="sovereignJsp/bootstrapt_table.jsp" %>
</head>
<body>
	<div class="list_hide">
		<div class="into_goods_list">进货单</div>
		<div class="select">
		 	 <select class="form-control opendup" id="locale"></select>
		</div>
		<div id="toolbar">
		  <button id="remove" class="btn btn-danger" disabled>
		    <i class="glyphicon glyphicon-remove"></i> Delete
		  </button>
		</div>
		<table border="" class="stylewh">
			<thead class="stabletr" ></thead>
			<tbody class="tbodyserlds finds"></tbody>
		</table>
	</div>
	<div class="addinfo boxstyle box_style">
		<div class="into_goods_list_dfdggg">修改</div>
		<input type="text" class="goodname styles" placeholder="物料名称"><br>
		<input type="text" class="goodsstyle styles" placeholder="物料类型"><br>
		<input type="text" class="guige styles" placeholder="规格"> <br>
		<input type="text" class="danwei styles" placeholder="单位"><br>
		<input type="text" class="dindanhao styles" placeholder="订单号"><br>
		<div class="qianming_div" style="width: 300px; margin: 0 auto;">
			<div class="qianming"></div>
			<input class="qianming_val" placeholder="签名路径（base64）" />
			<button class="yes_qianming into_goods_listfsds">生成</button>
			<button class=" into_goods_listfsds" onClick="queren()">确认</button>
			<button class="res_qianming into_goods_listfsds">重签</button>
		</div>
	</div>
	<%@ include file="sovereignJsp/bootstraptable_footer.jsp" %>
 <script type="text/javascript">
  function goodsname(){
	  $.post("${jpath}/goods/systemlist",{},function (data){ 
		 var obj=$.parseJSON(data);
		  var str="";
		  var taber="";
		  var tdber="";
		  taber+='<tr class="tdwh"><td>物料名称</td><td>物料类型</td><td>规格</td><td>单位</td><td>订单号</td><td>编辑</td></tr>';
		    for (var i = 0; i < obj.length; i++) {
		    	str+=' <option value="af-ZA">'+obj[i].goodsname+'</option>';
		    	tdber+='<tr class="tdwh">';
		    	tdber+='<td>'+obj[i].goodsname+'</td>';
		    	tdber+='<td>'+obj[i].typeofgoods+'</td>';
		    	tdber+='<td>'+obj[i].guige+'</td>';
		    	tdber+='<td>'+obj[i].danwei+'</td>';
		    	tdber+='<td>'+obj[i].dindanhao+'</td>';
		    	tdber+='<td><button onClick="del('+obj[i].id+')">删除</button>';
		    	tdber+='<button class="updatedindan" onClick="update()">修改</button>';
		    	tdber+='<button class="update_queren shure_deque" onClick="surelist('+obj[i].id+')">确认</button>';
		    	tdber+='</td></tr>';
			}  
		    $(".opendup").append(str);
		    $(".stabletr").append(taber);
		    $(".tbodyserlds").append(tdber);
	  });
  }
  function del(id){
	  alert("确定删除");
	  $.post("${jpath}/goods/delsyso",{
		  id:id
	  },function (data){
		  location.href="${jpath}/Allpages/spsmanage";
	  });
  }
  function update(){//修改订单表
		$(".list_hide").hide();
	  	$(".addinfo").show();
  }
  
  function surelist(id){
	    alert("确定修改");
	    var goodname=$(".goodname").val();
	    var typeofgoods=$(".goodsstyle").val();
	    var guige=$(".guige").val();
	    var danwei=$(".danwei").val();
	    var dindanhao=$(".dindanhao").val();
		var sji= $(".qianming_val").val();
	    var parem={id:id,goodsname:goodname,typeofgoods:typeofgoods,guige:guige,danwei:danwei,dindanhao:dindanhao,qmname:sji}
	    $.post("${jpath}/goods/updatesystem",parem,function (data){
	    window.location.href="${jpath}/Allpages/spsmanage";
	   });
  };
	function queren(){
		$(".list_hide").show();
	  	$(".addinfo").hide();
	}
	function sjidns(){
		$.post("${jpath}/goods/Find_By_page",{},function (data){
			
		})
	};
  $(function() {
	// sjidns();
		goodsname();
		$(".addinfo").hide();
		$(".qianmings").hide();
  })
</script>
