<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>

	<div>
		<input type="text" id="ddate" value="" placeholder="请输入1--5的数字">
		<button class="" onClick="slectsingle()">查询</button>
		<button onClick="adduser()">添加</button>
		<!-- <button onClick="allshow()">全部显示</button> -->
		
	</div>
	<div class="table_display"> 
		<table border=" ">
			<thead>
				<tr>
					<td>编号</td>
					<td>姓名</td>
					<td>性别</td>
					<td>编辑</td>
				</tr>
			</thead>
			<tbody class="listdate"></tbody>
		</table>
	</div>
	<div class="userstyle">
	
		<input type="text" class="usrname" value="" placeholder="用户名">
		<input type="text" class="usersex" value="" placeholder="性别用1或2表示">
		
	</div>
	<div class="adduser">
		<input type="text" class="addusername" value="" placeholder="用户名" />
		<input type="text" class="addusersex" value="" placeholder="性别用1或2表示">
		<button onClick="ok()">ok</button>
	</div>
	<div>
		<form action="${jpath}/findall" method="post">
		
			<input type="submit" value="全部">
		</form>
	</div>
</body>
<script type="text/javascript">
	
	$(function(){
		$(".adduser").hide();
		$(".userstyle").hide();
		$(".table_display").hide();
		slectsingle();
		}); 
		function slectsingle(){
				var id=$("#ddate").val();
				 $.post("${jpath}/selectall",{id:id},function(data){
					 var json = $.parseJSON(data);	
					 var str='';
					   if(id>0 && id<5){
						   $(".table_display").show();
						 
							  str+='<tr>';
							 str+='<td>'+json[0].id+'</td>';
							 str+='<td>'+json[0].username+'</td>';
							 str+='<td>'+json[0].sex+'</td>';
							 str+='<td onClick="update(\''+json[0].id+'\')">修改</td>';
							 str+='<td onClick="deleteuser(\''+json[0].id+'\')">删除</td>';
							 str+='<td onClick="sure()">编辑</td>';
							 str+='</tr>'; 	
					   }
					$("#ddate").val("");
					 $(".listdate").append(str);
				 });
		}
		
		function update(id){
			var username=$(".usrname").val();
			   var usersex=$(".usersex").val();
			   $.post("${jpath}/userupdate",{
			   username:username,
			   sex:usersex,
			   id:id
		   },function(data){
			   var json = $.parseJSON(data);	
			   alert(json[0].id);
		   })
		   $(".userstyle").hide(); 
		}
		function sure(){
			$(".userstyle").show();
		}
		function adduser(){
			$(".adduser").show();
		}
		function ok(){
			var name=$(".addusername").val();
			var sex=$(".addusersex").val();
			$.post("${jpath}/insertuser",{
				username:name,
				sex:sex
			},function(data){
				 var json = $.parseJSON(data);	
			});
			$(".adduser").hide();
		}
		function deleteuser(id){
			$.post("${jpath}/deleteuser",{
				id:id
			},function(data){
				 var json = $.parseJSON(data);
			})
		}
		function allshow(){
			$.post("${jpath}/findall",{},function (data){
				var json = $.parseJSON(data);
			});
		}
		function showall(){
			alert("25");
		}
		
</script> 
</html>