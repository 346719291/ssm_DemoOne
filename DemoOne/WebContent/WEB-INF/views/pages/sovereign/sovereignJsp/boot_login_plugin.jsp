<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>

<script src="${jpath }/static/pagesOfStyle/plugin/dist/vendor/jquery/jquery.min.js"></script>
<script src="${jpath }/static/pagesOfStyle/plugin/dist/vendor/popper.js/popper.min.js"></script>
<script src="${jpath }/static/pagesOfStyle/plugin/dist/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${jpath }/static/pagesOfStyle/plugin/dist/vendor/chart.js/chart.min.js"></script>
<script src="${jpath }/static/pagesOfStyle/plugin/dist/js/carbon.js"></script>
<script src="${jpath }/static/pagesOfStyle/plugin/dist/js/demo.js"></script>
</body>
</html>

 <script type="text/javascript">
	function zhuche(){
		 window.location.href="${jpath}/Allpages/register";
	}
	function return_login(){
		 window.location.href="${jpath}/Allpages/login_index";
		
	}
	function login(){
		var username=$(".username").val();
		var passworld=$(".passworld").val();
		$.post("${jpath}/admin/login_up",{
			adminname:username,
			adminpassword:passworld
		},function (data){
			var obj=$.parseJSON(data);
			if(obj!=1){
				alert("没有该用户！！！");
				return false;
			}else{
				alert("成功");

				 window.location.href="${jpath}/Allpages/login_up";
			}
			
		})
	}
	function zhuce(){
		var name=$(".name").val();
		var email=$(".email").val();
		var password=$(".password").val();
		var passwordagin=$(".passwordagin").val();
		var parem={
				adminname:name,
				adminpassword:password,
				adminemail:email
		}
			alert("成功");
			$.post("${jpath}/admin/add_user",parem)
		
		
		/* if(password.equals(passwordagin)){
			$.post("${jpath}/admin/add_user",parem)
			$(".name").val("");
			$(".email").val("");
			$(".password").val("");
			$(".passwordagin").val("");
			}
		else{
			alert("密码错误！！");	
		} */
		
	}
	
</script>