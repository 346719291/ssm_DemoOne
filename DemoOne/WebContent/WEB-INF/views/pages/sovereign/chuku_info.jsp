<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sovereignJsp/Form_Head.jsp"%>
		<table width="100%" border=1 class="style_s">
  				<thead>
  					<tr>
  						<td>出库物品名称</td>
  						<td>仓库的名称</td>
  						<td>出库日期</td>
  						<td>出库数量</td>
  						<td>小票号</td>
  						<td>操作</td>
  					</tr>
  				</thead>
  				<tbody class="_thead"></tbody>
				</table>

</body>
</html>
<script>
	function findall(){
		$.post("${jpath}/cunkuinfo/TbOut_findall",{},function (data){
			var obj=$.parseJSON(data);
			var tbody_="";
			for (var i = 0; i < obj.length; i++) {
				tbody_+='<tr><td>'+obj[i].shangpingname+'</td>';
				tbody_+='<td>'+obj[i].cangkuname+'</td>';
				tbody_+='<td>'+obj[i].goodsdate+'</td>';
				tbody_+='<td>'+obj[i].goodscount+'</td>';
				tbody_+='<td>'+obj[i].marketid+'</td>';
				tbody_+='<td></td>';
				tbody_+='</tr>';
			}
			$("._thead").append(tbody_);
		})
	}
	$(function (){
		findall();
	})

</script>