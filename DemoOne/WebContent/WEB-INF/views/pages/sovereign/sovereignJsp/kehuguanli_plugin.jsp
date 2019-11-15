<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>
</body>
</html>
<script>
		layui.use([ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form, layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;
							//日期
							laydate.render({
								elem : '#date'
							});
							laydate.render({
								elem : '#date1'
							});

							//创建一个编辑器
							var editIndex = layedit.build('LAY_demo_editor');

							//自定义验证规则
							form.verify({
								title : function(value) {
									if (value.length < 18) {
										return '标题至少得18个字符啊';
									}
								}
							});
							//监听提交
							form.on('submit(demo1)', function(data) {
								layer.alert(JSON.stringify(data.field), {
									title : '最终的提交信息'
								})
								return false;
							});
						});
	
		function s_style(){
			$(".layui-btn-radius").click(function (){
				$(".layui-btn-radius").toggle(300);
			});
		}
		
		function upload_upup(){
			var sfz_code=$(".sfz_code").val();//身份证
			var username=$(".username").val();//用户的名字
			var jifeng =$(".jifeng").val();//积分
			var zhekoulv=$(".zhekoulv").val();//折扣率
			var qq_or_weixin=$(".qq_or_weixin").val();//QQ或微信
			var Adress=$(".Adress").val();//地址
			var dirthday=$(".dirthday").val();//生日
			var parem={
					cardnumber:sfz_code,
					credidsname:username,
					credits:jifeng,
					discountrate:zhekoulv,
					creditsqq:qq_or_weixin,
					creditsaddress:Adress,
					dirthday:dirthday
			}
			
			$.post("${jpath}/credites/add_user",parem);
		}
		
		function add_info(){
			$(".layui-btn-radius").toggle(400);
			$(".style_s").toggle(400);
		}
		
		function $table_(){
			var $thead="";
			var tbocdy="";
			$.post("${jpath}/credites/findAll",{},function (data){
				var obj=$.parseJSON(data);
				$thead+='<tr><td width="80px">身份证号码</td>';
				$thead+='<td width="100px">用户名</td>';
				$thead+='<td width="100px">积分</td>';
				$thead+='<td width="100px">折扣率</td>';
				$thead+='<td width="100px">QQ/微信</td>';
				$thead+='<td width="100px">地址</td>';
				$thead+='<td width="100px">生日</td>';
				$thead+='<td width="100px">编辑</td>';
				$thead+='</tr>';
				for (var i = 0; i < obj.length; i++) {
					tbocdy+='<tr><td>'+obj[i].cardnumber+'</td>';
					tbocdy+='<td>'+obj[i].credidsname+'</td>';
					tbocdy+='<td>'+obj[i].credits+'</td>';
					tbocdy+='<td>'+obj[i].discountrate+'</td>';
					tbocdy+='<td>'+obj[i].creditsqq+'</td>';
					tbocdy+='<td>'+obj[i].creditsaddress+'</td>';
					tbocdy+='<td>'+obj[i].dirthday+'</td>';
					//tbocdy+='<td><button class="layui-btn" onClick="updateadsd()">编辑</button><button class="layui-btn" onClick="sure_sesd('+obj[i].cardnumber+')">确定</button></td>';
					tbocdy+='<td><button onClick="setonclick()">点击</button></td>';
					tbocdy+='</tr>';
				}
				 $(".thesad").append($thead);
				 $(".tsbody").append(tbocdy);
			})
		}
		
		function update(){
			//$(".layui-btn-radiusxx").toggle(400);
			console.log("lll");
		}
		function $table_sys(){
			var $thead='';
			var tbocdy='';
			$thead+='<tr><td width="80px">身份证号码</td>';
			$thead+='<td width="100px">用户名</td>';
			$thead+='<td width="100px">积分</td>';
			$thead+='<td width="100px">折扣率</td>';
			$thead+='<td width="100px">QQ/微信</td>';
			$thead+='<td width="100px">地址</td>';
			$thead+='<td width="100px">生日</td>';
			$thead+='<td width="100px">编辑</td>';
			$thead+='</tr>';
			$.post("${jpath}/credites/findAll",{},function (data){
				var obj=$.parseJSON(data);
				for (var i = 0; i < obj.length; i++) {
					tbocdy+='<tr><td>'+obj[i].cardnumber+'</td>';
					tbocdy+='<td>'+obj[i].credidsname+'</td>';
					tbocdy+='<td>'+obj[i].credits+'</td>';
					tbocdy+='<td>'+obj[i].discountrate+'</td>';
					tbocdy+='<td>'+obj[i].creditsqq+'</td>';
					tbocdy+='<td>'+obj[i].creditsaddress+'</td>';
					tbocdy+='<td>'+obj[i].dirthday+'</td>';
					tbocdy+='<td><button id="update">修改</button></td>';
					tbocdy+='</tr>';
				}
				$(".thesad").append($thead);
				$(".tsbody").append(tbocdy);
				
			})
		}
		
		
		
		function sure_sesd(cardnumber){
			var usernaccme=$(".usernaccme").val();
			var jifceng=$(".jifceng").val();
			var zhekcoulv=$(".zhekcoulv").val();
			var qq_orc_weixin=$(".qq_orc_weixin").val();
			var Adcress=$(".Adcress").val();
			var dirthdacy=$(".dirthdacy").val();
			var parems={cardnumber:cardnumber,
					credidsname:usernaccme,
					credits:jifceng,
					discountrate:zhekcoulv,
					creditsqq:qq_orc_weixin,
					creditsaddress:Adcress,
					dirthday:dirthdacy
			}
			$.post("${jpath}/credites/findAll",parems,function (){
				window.location.href="${jpath}/Allpages/kehuguanli";
			})
		}
		$(function (){
			s_style();
			//$table_();
			$table_sys();
			$("#update").click(function (){
				alert("dd");
			})
		})
	</script>