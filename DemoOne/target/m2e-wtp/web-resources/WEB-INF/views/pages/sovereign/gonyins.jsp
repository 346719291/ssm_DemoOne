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
		<button class="layui-btn layui-btn-fluid" onClick="add_info()">添加</button>
		<table border="" class="stylewh">
			<thead class="stabletr" ></thead>
			<tbody class="tbodyserlds finds"></tbody>
		</table>
		
	</div>
	<div class="addinfo boxstyle box_style">
		<div class="into_goods_list_dfdggg">修改</div>
		<input type="text" class="goodname styles" placeholder="公司"><br>
		<input type="text" class="goodsstyle styles" placeholder="联系人"><br>
		<input type="text" class="guige styles" placeholder="联系电话"> <br>
		<input type="text" class="danwei styles" placeholder="其他联系方式"><br>
		<input type="text" class="dindanhao styles" placeholder="供应商位置"><br>
		<button class="into_goods_list_dfdggg" onClick="sure()">返回</button>
	</div>
	<div class="gongyingshangadd">
		<div class="layui-form-item">
								<label class="layui-form-label ">公司</label>
								<div class="layui-input-block">
									<input type="text" name="title" lay-verify="title"
										autocomplete="off" placeholder="公司"
										class="layui-input changjia">
								</div>
							</div>
		<div class="layui-form-item">
									<label class="layui-form-label">联系人</label>
									<div class="layui-input-block">
										<input type="text" name="date" id="date1" autocomplete="off"
											class="layui-input production_date lianxiren">
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">电话</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input telphone">
									</div>
								</div>
	<div class="layui-inline">
									<label class="layui-form-label">QQ</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input qqlianxi">
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">地址</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input adraess">
									</div>
								</div>
		<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="demo1"
										onClick="upload_upup()">添加</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>					
	</div>
 <%@ include file="sovereignJsp/bootstraptable_footer.jsp" %>
 <script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>
 <script type="text/javascript">
 	function FindAll(){
 		$.post("${jpath}/goods/gonyin_list",{},function (data){
 			var obj=$.parseJSON(data);
 			var strh="";
 			var tdber="";
 			strh+='<tr class="tdwh"><td>公司</td><td>联系人</td><td>电话</td><td>其他联系方式</td><td>地址</td><td>编辑</td></tr>';
 			 for (var i = 0; i < obj.length; i++) {
 				tdber+='<tr>';
		    	tdber+='<td>'+obj[i].username+'</td>';
		    	tdber+='<td>'+obj[i].gongyingshangman+'</td>';
		    	tdber+='<td>'+obj[i].phone+'</td>';
		    	tdber+='<td>'+obj[i].otherOfWay+'</td>';
		    	tdber+='<td>'+obj[i].gysposition+'</td>';
		    	tdber+='<td><button class="layui-btn" onClick="deleted('+obj[i].id+')">删除</button>';
		    	tdber+='<button class="layui-btn" onClick="update()">修改</button>';
		    	tdber+='<button class="layui-btn" onClick="surelist('+obj[i].id+')">确定</button>';
		    	tdber+='</td></tr>';
			}
 			 $(".stabletr").append(strh);
 			$(".tbodyserlds").append(tdber);
 		});
 	}
 	function deleted(id){
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
 		
 	 	var goodname=$(".goodname").val();
 		var goodsstyle=$(".goodsstyle").val();
 		var guige=$(".guige").val();
 		var danwei=$(".danwei").val();
 		var dindanhao=$(".dindanhao").val();
 		if(goodname==null || goodname==""){
 			alert("输入不能为空！！！")
 			return false;
 		}
 		$(".list_hide").show();
		$(".addinfo").hide();
 	};
 	function add_info(){
 		$(".stylewh").toggle();
 		$(".gongyingshangadd").toggle();
 	}
 	function upload_upup(){
 		var changjia=$(".changjia").val();
 		var lianxiren=$(".lianxiren").val();
 		var telphone=$(".telphone").val();
 		var qqlianxi=$(".qqlianxi").val();
 		var adraess=$(".adraess").val();
 		var paremcc={
 				username:changjia,
 				gongyingshangman:lianxiren,
 				phone:telphone,
 				otherOfWay:qqlianxi,
 				gysposition:adraess
 		}
 		if(changjia=="" || changjia==null || lianxiren=="" || lianxiren==null || telphone=="" || telphone==null || qqlianxi=="" || qqlianxi==null || adraess=="" || adraess==null){
 			alert("输入不能为空！！！！！");
 			return false;
 		}else{
 			$.post("${jpath}/goods/gonyinshangadd",paremcc,function (){
 	 			window.location.href="${jpath}/Allpages/gonyinshang";
 	 			alert("添加成功！！！");
 	 		})
 		}
 	}
 	$(function (){
 		FindAll();
 	})
 </script>