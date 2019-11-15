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
		<div class="into_goods_list">供应商</div>
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
		<input type="text" class="goodname styles" placeholder="供应商名称"><br>
		<input type="text" class="goodsstyle styles" placeholder="供应商联系人"><br>
		<input type="text" class="guige styles" placeholder="联系电话"> <br>
		<input type="text" class="danwei styles" placeholder="其他联系方式"><br>
		<input type="text" class="dindanhao styles" placeholder="供应商位置"><br>
		<button class="into_goods_list_dfdggg" onClick="sure()">确认</button>
	</div>
 <%@ include file="sovereignJsp/bootstraptable_footer.jsp" %>
 <script type="text/javascript">
 	function FindAll(){
 		$.post("${jpath}/goods/gonyin_list",{},function (data){
 			var obj=$.parseJSON(data);
			var sel="";
 			var strh="";
 			var tdber="";
 			strh+='<tr class="tdwh"><td>供应商名称</td><td>供应商联系人</td><td>联系电话</td><td>其他联系方式</td><td>供应商位置</td><td>编辑</td></tr>';
 			 for (var i = 0; i < obj.length; i++) {
 				 console.log(obj[i].id);
				sel+='<option value="af-ZA">'+obj[i].username+'</option>';
		    	tdber+='<tr><td>'+obj[i].username+'</td>';
		    	tdber+='<td>'+obj[i].gongyingshangman+'</td>';
		    	tdber+='<td>'+obj[i].phone+'</td>';
		    	tdber+='<td>'+obj[i].otherOfWay+'</td>';
		    	tdber+='<td>'+obj[i].gysposition+'</td>';
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
 		$.post("${jpath}/goods/deluser",{id:id},function (data){
 			 window.location.href="${jpath}/goods/gonyin";
 		});
 	}
 	function update(){
 		$(".list_hide").hide();
 		$(".addinfo").show();
 	
 	}
 	function surelist(id){
 		var goodname=$(".goodname").val();
 		var goodsstyle=$(".goodsstyle").val();
 		var guige=$(".guige").val();
 		var danwei=$(".danwei").val();
 		var dindanhao=$(".dindanhao").val();
 		var parem={
 				id:id,
 				username:goodname,
 				gongyingshangman:goodsstyle,
 				phone:guige,
 				otherOfWay:danwei,
 				gysposition:dindanhao
 		}
 		$.post("${jpath}/goods/updateinfo",parem,function (data){
 			 window.location.href="${jpath}/goods/gonyin";
 		});
 		
 	};
 	function sure(){
 		alert("确定修改");
 	/* 	var goodname=$(".goodname").val();
 		var goodsstyle=$(".goodsstyle").val();
 		var guige=$(".guige").val();
 		var danwei=$(".danwei").val();
 		var dindanhao=$(".dindanhao").val();
 		if(goodname==null){
 			alert("输入不能为空！！！")
 			return false;
 		}else{
 			alert(";;"+dindanhao);
 			
 		} */
 		$(".list_hide").show();
		$(".addinfo").hide();
 	};
 	$(function (){
 		FindAll();
 		 $(".addinfo").hide();
 	})
 </script>
