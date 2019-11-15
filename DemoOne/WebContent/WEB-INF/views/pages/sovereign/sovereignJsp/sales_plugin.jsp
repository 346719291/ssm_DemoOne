<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>
</body>
</html>
<script>
	function show_table(){
		var pageno=0;
		var pagesize=3;
		var _thead="";
		$.post("${jpath}/sales/find_by_page",{
			pageno:pageno,
			pagesize:pagesize
		},function (data){
			var obj=$.parseJSON(data);
			for (var i = 0; i < obj.length; i++) {
				_thead+='<tr><td><input type="checkbox" name="checkbox"></td>';
				_thead+='<td>'+obj[i].memberid+'</td>';
				_thead+='<td>'+obj[i].marketid+'</td>';
				_thead+='<td>'+obj[i].credits+'</td>';
				_thead+='<td>'+obj[i].xiaosoudate+'</td>';
				_thead+='<td>';
				_thead+='<button data-method="setTop" class="layui-btn" onClick="xiangxi_info('+obj[i].marketid+')">详细信息</button>';
				_thead+='</td>';
				_thead+='<td><button class="layui-btn" onClick="del('+obj[i].marketid+')"><i class="layui-icon"></i></button><button class="layui-btn" onClick="update_date()">修改</button><button class="layui-btn" onClick="upload_upup('+obj[i].marketid+')">确认</button></td>';
				_thead+='</tr>';
			}
			 $(".head_table").append(_thead);
		})
	}
	function xiangxi_info(marketid){
		 setTimeout(window.open('xiangxi_info?marketid='+marketid), 500)
	}
	function del(marketid){
		alert(marketid);
		$.post("${jpath}/sales/del",{marketid:marketid},function (){
			 window.location.href="${jpath}/Allpages/sales_table";
		})
	}
	function update_date(){
		$(".margin-top").toggle();
	}
	function upload_upup(marketid){
		var huiyuanhao=$(".huiyuanhao").val();
		var jifen=$(".jifen").val();
		var xiaoshou_date=$(".xiaoshou_date").val();
		var parem={
				memberid:huiyuanhao,
				credits:jifen,
				xiaosoudate:xiaoshou_date,
				marketid:marketid
		}
		$.post("${jpath}/sales/update_sales",parem,function (){
			window.location.href="${jpath}/Allpages/sales_table";
		})
	}
	function down_update(){
		$(".margin-top").toggle();
	}
	function add_info_goods(){
		$(".addinfomation").toggle();
		$(".display_erweima").show();
		$(".return-s").show();
	}
	function return_(){
		$(".addinfomation").toggle();
		$(".display_erweima").hide();
		$(".return-s").hide();
	}
	$(function(){//添加货物
		show_table();
		$(".upcase").blur(function (){
			var upcase=$(".upcase").val();
			$.post("${jpath}/storeinfo/store_danbiaofind",{
				erweima:upcase
			},function (data){
				var obj=$.parseJSON(data);
				
			})
		})
	})
	function add_finfo(erweima){
		
	}
</script>
<script>
		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
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
									if (value.length < 3) {
										return '标题至少得3个字符啊';
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
		
	</script> 