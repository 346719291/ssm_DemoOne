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
		<button class="layui-btn layui-btn-fluid" onClick="add_info()">编辑</button>
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
	<div class="gongyingshangadd">
		<div class="layui-form-item">
								<label class="layui-form-label ">物料名称</label>
								<div class="layui-input-block">
									<input type="text" name="title" lay-verify="title"
										autocomplete="off" placeholder="物料名称"
										class="layui-input wuliaomingcheng">
								</div>
							</div>
		<div class="layui-form-item">
									<label class="layui-form-label">物料类型</label>
									<div class="layui-input-block">
										<input type="text" name="date" id="date1" autocomplete="off"
											class="layui-input production_date wuliaoleixing">
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">规格</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input guigecc">
									</div>
								</div>
	<div class="layui-inline">
									<label class="layui-form-label">单位</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input danwcccei">
									</div>
								</div>
		<div class="layui-inline">
									<label class="layui-form-label">订单号</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input dinccdanhao">
									</div>
								</div>
		<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn"
										onClick="upload_upup()">添加</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
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
		    	tdber+='<td><button class="layui-btn" onClick="del('+obj[i].id+')">删除</button>';
		    	tdber+='<button class="layui-btn" onClick="update()">修改</button>';
		    	tdber+='<button class="layui-btn" onClick="surelist('+obj[i].id+')">确认</button>';
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
	    var guige=$(".guigecc").val();
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
	function add_info(){
		$(".gongyingshangadd").toggle();
		$(".stylewh").toggle();
	}
		
	function upload_upup(){
		var wuliaomingcheng=$(".wuliaomingcheng").val();
		var wuliaoleixing=$(".wuliaoleixing").val();
		var guige=$(".guigecc").val();
		var danwei=$(".danwcccei").val();
		var dindanhao=$(".dinccdanhao").val();
		var state='false';
		var qmname='aa';
		var paremjinguo={
				goodsname:wuliaomingcheng,
				typeofgoods:wuliaoleixing,
				guige:guige,
				danwei:danwei,
				dindanhao:dindanhao,
				qmname:qmname,
				state:state
		}
	
		$.post("${jpath}/goods/sysadd",paremjinguo,function (){
			 window.location.href="${jpath}/Allpages/spsmanage";
		})
	}
		

  $(function() {
	// sjidns();
		goodsname();
		$(".addinfo").hide();
		$(".qianmings").hide();
  })
</script>
