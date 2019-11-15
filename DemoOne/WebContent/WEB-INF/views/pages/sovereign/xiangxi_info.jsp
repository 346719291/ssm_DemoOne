<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="sovereignJsp/Form_Head.jsp"%>
<style>
	.margin-top{
			margin-top: 100px;
			display: none;
		}
</style>
	 <div style="width: 216px; margin: 0;">
      <button class="layui-btn layui-btn-fluid" onClick="$return_()">返回</button>
    </div>
	<table width="100%" border=1 class="style_s">
		<thead>
			<tr>
				<td>货物编号</td>
				<td>销售数量</td>
				<td>小票号</td>
				<td>销售日期</td>
				<td>收银员姓名</td>
				<td>编辑</td>
			</tr>
		</thead>
		<tbody class="head_table"></tbody>
	</table>
	<ul class="layui-tab-title site-demo-title"></ul>
		
						<form class="layui-form margin-top" action="">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">销售数量</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input huiyuanhao">
									</div>
								</div>
							</div>
							<div class="layui-inline">
									<label class="layui-form-label">销售日期</label>
									<div class="layui-input-inline">
										<input type="text" name="date" id="date" lay-verify="date"
											placeholder="yyyy-MM-dd" autocomplete="off"
											class="layui-input xiaoshou_date">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">收银员</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input shouyingyuan">
									</div>
								</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="demo1"
										onClick="down_update()">关闭</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
</body>
</html>
<script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>
<script>
	function $_tbody(){
		urlinfo=window.location.href; //获取当前页面的url
		 len=urlinfo.length;//获取url的长度
		 offset=urlinfo.indexOf("?");//设置参数字符串开始的位置
		 newsidinfo=urlinfo.substr(offset,len)//取出参数字符串 这里会获得类似“id=1”这样的字符串
		 newsids=newsidinfo.split("=");//对获得的参数字符串按照“=”进行分割
		 newsid=newsids[1];//得到参数值
		 newsname=newsids[0];//得到参数名字
		$.post("${jpath}/sales/find_by_where",{
			marketid:newsid
		},function (data){
			var obj=$.parseJSON(data);
			console.log(obj)
			var $_tbody="";
			for (var i = 0; i < obj.length; i++) {
				$_tbody+='<tr><td>'+obj[i].goodsid+'</td>';
				$_tbody+='<td>'+obj[i].number+'</td>';
				$_tbody+='<td>'+obj[i].marketid+'</td>';
				$_tbody+='<td>'+obj[i].xiaosoudate+'</td>';
				$_tbody+='<td>'+obj[i].username+'</td>';
				$_tbody+='<td><button class="layui-btn" onClick="del('+obj[i].marketid+')"><i class="layui-icon"></i></button><button class="layui-btn" onClick="update_date()">修改</button><button class="layui-btn" onClick="upload_upup('+obj[i].marketid+')">确认</button></td></tr>';
			}
			$(".head_table").append($_tbody);
		}) 
	}
	function del(marketid){
		$.post("${jpath}/sales/del_xiangxi",{marketid:marketid},function (){
			 window.location.href="${jpath}/Allpages/xiangxi_info";
		})
	}
	function $return_(){
		window.location.href="${jpath}/Allpages/login_up";
	}
	function update_date(){
		$(".margin-top").toggle();
	}
	function upload_upup(marketid){
		var huiyuanhao=$(".huiyuanhao").val();
		var xiaoshou_date=$(".xiaoshou_date").val();
		var shouyingyuan=$(".shouyingyuan").val();
		var parem={
				number:huiyuanhao,
				marketid:marketid,
				xiaosoudate:xiaoshou_date,
				username:shouyingyuan
		}
		$.post("${jpath}/sales/update_xiangxi",parem,function (){
			window.location.href="${jpath}/Allpages/xiangxi_info";
		})
	}
	function down_update(){
		$(".margin-top").toggle();
	}
	$(function (){
		$_tbody();
	})
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