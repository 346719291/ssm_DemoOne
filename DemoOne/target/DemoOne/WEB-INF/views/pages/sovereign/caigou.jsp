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
		<div class="into_goods_list">采购信息</div>
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
		<input type="text" class="caihoutime styles" placeholder="采购时间"><br>
		<input type="text" class="goods styles" placeholder="采购物品"><br>
		<input type="text" class="gongyingshang styles" placeholder="供应商"> <br>
		<input type="text" class="price styles" placeholder=" 单价"><br>
		<input type="text" class="count styles" placeholder="数量"><br>
		<input type="text" class="man styles" placeholder="采购员"> <br>
		<input type="text" class="stacus styles" placeholder="审核状态"><br>
		<input type="text" class="dindanhao styles" placeholder="订单号"><br>
		<button class="into_goods_list_dfdggg" onClick="sure()">确认</button>
	</div>
 <%@ include file="sovereignJsp/bootstraptable_footer.jsp" %>
 <script type="text/javascript">
 	function FindAll(){
 		$.post("${jpath}/goods/caigou",{},function (data){
 			var obj=$.parseJSON(data);
			var sel="";
 			var strh="";
 			var tdber="";
 			strh+='<tr class="tdwh"><td>采购时间</td><td>采购物品</td><td>供应商</td><td>单价</td><td>数量</td><td>采购员</td><td>审核状态</td><td>订单号</td><td>编辑</td></tr>';
 			 for (var i = 0; i < obj.length; i++) {
 				 console.log(obj[i].id);
				sel+='<option value="af-ZA">'+obj[i].man+'</option>';
		    	tdber+='<tr><td>'+obj[i].caihoutime+'</td>';
		    	tdber+='<td>'+obj[i].goods+'</td>';
		    	tdber+='<td>'+obj[i].gongyingshang+'</td>';
		    	tdber+='<td>'+obj[i].price+'</td>';
		    	tdber+='<td>'+obj[i].count+'</td>';
		    	tdber+='<td>'+obj[i].man+'</td>';
		    	tdber+='<td>'+obj[i].stacus+'</td>';
		    	tdber+='<td>'+obj[i].dindanhao+'</td>';
		    	tdber+='<td><button onClick="del('+obj[i].id+')">删除</button>';
		    	tdber+='<button class="updatedindan" onClick="update()">修改</button>';
		    	tdber+='<button class="update_queren shure_deque" onClick="surelist('+obj[i].id+')">确认</button>';
		    	tdber+='</td></tr>';
			}
 			 $(".opendup").append(sel);
 			 $(".stabletr").append(strh);
 			$(".tbodyserlds").append(tdber);
 		});
 	}
 	function del(id){
 		$.post("${jpath}/goods/delcaigous",{id:id},function (data){
 			 window.location.href="${jpath}/goods/caigouinfos";
 		});
 	}
 	function update(){
 		$(".list_hide").hide();
 		$(".addinfo").show();
 	
 	}
 	function surelist(id){
 		var caihoutime=$(".caihoutime").val();
 		var goods=$(".goods").val();
 		var gongyingshang=$(".gongyingshang").val();
 		var price=$(".price").val();
 		var count=$(".count").val();
 		var man=$(".man").val();
 		var stacus=$(".stacus").val();
 		var dindanhao=$(".dindanhao").val();
 		var parem={
 				id:id,
 				caihoutime:caihoutime,
 				goods:goods,
 				gongyingshang:gongyingshang,
 				price:price,
 				count:count,
 				man:man,
 				stacus:stacus,
 				dindanhao:dindanhao
 		}
 		$.post("${jpath}/goods/updatecaigou",parem,function (data){
 			 window.location.href="${jpath}/goods/caigouinfos";
 		});
 	};
 	function sure(){
 		alert("确定修改");
 		$(".list_hide").show();
		$(".addinfo").hide();
 	};
 	$(function (){
 		FindAll();
 		 $(".addinfo").hide();
 	})
 </script>
