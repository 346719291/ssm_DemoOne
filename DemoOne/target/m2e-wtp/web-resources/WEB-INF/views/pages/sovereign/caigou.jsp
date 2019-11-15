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
		<button class="layui-btn" onClick="add_info()">添加</button>
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
	<div class="gongyingshangadd">
		<div class="layui-form-item">
								<label class="layui-form-label ">时间</label>
								<div class="layui-input-block">
									<input type="text" name="title" lay-verify="title"
										autocomplete="off" placeholder="时间"
										class="layui-input caigoutime">
								</div>
							</div>
		<div class="layui-form-item">
									<label class="layui-form-label">采购物品</label>
									<div class="layui-input-block">
										<input type="text" name="date" id="date1" autocomplete="off"
											class="layui-input production_date caigouwuping">
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">供应商</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input gongyngshang">
									</div>
								</div>
	<div class="layui-inline">
									<label class="layui-form-label">单价</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input danjia">
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">数量</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input shuliang">
									</div>
								</div>
			<div class="layui-inline">
									<label class="layui-form-label">采购员</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input caigouyuan"> 
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">审核状态</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input shenghezhuangtai">
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">订单号</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input dindanhacco">
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
 <script type="text/javascript">
 	function FindAll(){
 		$.post("${jpath}/goods/caigou",{},function (data){
 			var obj=$.parseJSON(data);
 			var strh="";
 			var tdber="";
 			strh+='<tr class="tdwh"><td>采购时间</td><td>采购物品</td><td>供应商</td><td>单价</td><td>数量</td><td>采购员</td><td>审核状态</td><td>订单号</td><td>编辑</td></tr>';
 			 for (var i = 0; i < obj.length; i++) {
 				 console.log(obj[i].id);
		    	tdber+='<tr><td>'+obj[i].caihoutime+'</td>';
		    	tdber+='<td>'+obj[i].goods+'</td>';
		    	tdber+='<td>'+obj[i].gongyingshang+'</td>';
		    	tdber+='<td>'+obj[i].price+'</td>';
		    	tdber+='<td>'+obj[i].count+'</td>';
		    	tdber+='<td>'+obj[i].man+'</td>';
		    	tdber+='<td>'+obj[i].stacus+'</td>';
		    	tdber+='<td>'+obj[i].dindanhao+'</td>';
		    	tdber+='<td><button class="layui-btn" onClick="del('+obj[i].id+')">删除</button>';
		    	tdber+='<button class="layui-btn" onClick="update()">修改</button>';
		    	tdber+='<button class="layui-btn" onClick="surelist('+obj[i].id+')">确定</button>';
		    	tdber+='</td></tr>';
			}
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
 		$.post("${jpath}/goods/updatecaigou",parem,function (){
 			 window.location.href="${jpath}/goods/caigouinfos";
 		});
 	};
 	function sure(){
 		var caihoutime=$(".caihoutime").val();
 		if(caihoutime==null || caihoutime==""){
 			alert("输入不能为空");
 			return false;
 		}
 		$(".list_hide").show();
		$(".addinfo").hide();
 	};
 	function upload_upup(){
 		var caigoutime=$(".caigoutime").val();
 		var caigouwuping=$(".caigouwuping").val();
 		var gongyngshang=$(".gongyngshang").val();
 		var danjia=$(".danjia").val();shuliang   
 		var shuliang=$(".shuliang").val();
 		var caigouyuan=$(".caigouyuan").val();
 		var shenghezhuangtai=$(".shenghezhuangtai").val();
 		var dindanhao=$(".dindanhacco").val();
 		var parem_list={
 				caihoutime:caigoutime,
 				goods:caigouwuping,
 				gongyingshang:gongyngshang,
 				price:danjia,
 				count:shuliang,
 				man:caigouyuan,
 				stacus:shenghezhuangtai,
 				dindanhao:dindanhao
 		}
 		$.post("${jpath}/goods/caigouadd",parem_list,function (){
 			 window.location.href="${jpath}/goods/caigouinfos";
 		})
 	}
 	function add_info(){
 		$(".gongyingshangadd").toggle();
 		$(".stylewh").toggle();
 	}
 	$(function (){
 		FindAll();
 		 $(".addinfo").hide();
 	})
 </script>
