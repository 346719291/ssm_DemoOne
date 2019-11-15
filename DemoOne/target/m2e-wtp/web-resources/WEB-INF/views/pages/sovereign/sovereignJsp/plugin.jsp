<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${jpath }/static/pagesOfStyle/layui/layui.js"></script>
</body>
</html>
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
		function upcase(){
			$(".upcase").blur(function (){
				var upcase_val = $(".upcase").val();
				var pear="pear";
				if(upcase_val !=pear){
					alert("没有"+upcase_val+"仓库");
				}else{
					alert("分配厂库");
					$.post("${jpath}/cunkuinfo/tbfengcang_find_info", {
						changkuinfo : upcase_val
				});
				}
			});
		}
		function upload_upup(){
			var upcase=$(".upcase").val();//物品的名字
			var baozhiqi=$(".baozhiqi").val();//物品的保质期
			var cunku_up=$(".cunku_up").val();//存库的上限
			var cunku_down=$(".cunku_down").val();//存库的下限
			var cunku_pici=$(".cunku_pici").val();//存库的批次
			var ruku_count=$(".ruku_count").val();//入库的数量
			var ruku_date=$(".ruku_date").val();//入库的日期
			var production_date=$(".production_date").val();//生产的日期
			var parem={
					goodsinfomation : upcase,
					goodsdate : ruku_date,
					pici : cunku_pici,
					number : ruku_count,
					product_time : production_date,
					baozhiqi : baozhiqi
			}
			var paremtwo = {
					number : ruku_count,
					datetime : production_date,
					lasttime : baozhiqi,
					more : cunku_up,
					little : cunku_down,
					count : ruku_count,
					cunkuinfo : upcase,
					tixindate : ruku_date  //提醒的日期
				}
			$.post("${jpath}/cunkuinfo/tbinto_insert", parem)
			$.post("${jpath}/storeinfo/add_info", paremtwo)
		}
		
		$(function (){
			upcase();
		})
	</script> 
	<script>
	function FindAllDate(){//查询仓库的全部的信息
		var pageno=1;
		var pagesize=2;
		var str_tble="";
		$.post("${jpath }/cunkuinfo/cunku_infomation",{
			pageno:pageno,
			pagesize:pagesize
		},function (data){
			var json=$.parseJSON(data);
			for (var i = 0; i < json.length; i++) {
			str_tble+='<tr>';
			str_tble+='<td>';
			str_tble+='<input type="checkbox">';
			str_tble+='</td>';
			str_tble+='<td>'+json[i].cunkuinfo+'</td>';
			str_tble+='<td>'+json[i].number+'</td>';
			str_tble+='<td>'+json[i].datetime+'</td>';
			str_tble+='<td>'+json[i].more+'</td>';
			str_tble+='<td>'+json[i].little+'</td>';
			str_tble+='<td>'+json[i].lasttime+'</td>';
			str_tble+='<td>'+json[i].tixindate+'</td>';
			str_tble+='</tr>';
		}
		 $(".testtbr_").append(str_tble); 
		})
	}
	
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  //总页数大于页码总数
  laypage.render({
  	elem: 'demo1'
    ,count: 70 //数据总数
    ,limit:1
    ,curr:2
    ,jump: function(obj){
    	console.log(obj);
    	var str_tble="";
    	var pageno=obj.curr;//第几页
    	var pagesize=obj.limit;//数据的长度
    	console.log(pageno+"."+pagesize);
    	$.post("${jpath }/cunkuinfo/cunku_infomation",{
			pageno:pageno,
			pagesize:pagesize
		},function (data){
			var json=$.parseJSON(data);
			for (var i = 0; i < json.length; i++) {
			str_tble+='<tr>';
			str_tble+='<td>';
			str_tble+='<input type="checkbox">';
			str_tble+='</td>';
			str_tble+='<td>'+json[i].cunkuinfo+'</td>';
			str_tble+='<td>'+json[i].number+'</td>';
			str_tble+='<td>'+json[i].datetime+'</td>';
			str_tble+='<td>'+json[i].more+'</td>';
			str_tble+='<td>'+json[i].little+'</td>';
			str_tble+='<td>'+json[i].lasttime+'</td>';
			str_tble+='<td>'+json[i].tixindate+'</td>';
			str_tble+='<td> </td>';
			str_tble+='</tr>';
		}
		 $(".testtbr_").append(str_tble);
		})
    }
  });
});
function daichuku_info(){//出库的信息
	 window.location.href="${jpath}/Allpages/chuku_info";
}
$(function (){
	//FindAllDate();
})
</script>

<script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

  //触发事件
  var active = {
    setTop: function(){
      //多窗口模式，层叠置顶
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '当你选择该窗体时，即会在最顶端'
        ,area: ['390px', '460px']
        ,shade: 0
        ,maxmin: true
        ,offset: [ //为了演示，随机坐标
          Math.random()*($(window).height()+300)
          ,Math.random()*($(window).width()-390)
        ] 
        ,content: '//layer.layui.com/test/settop.html'
        ,btn: ['下载', '关闭'] //只是为了演示
        ,yes: function(){
        	$.post("${jpath }/cunkuinfo/panku_caozuo")
        	alert("成功");
        }
      });
    }
  };
  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
});
</script>