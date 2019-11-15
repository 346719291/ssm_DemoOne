<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

</body>
</html>
<script>
	function production_list() {//生成表单
		var ruku_goods = $(".ruku_goods").val();//入库物品
		var ruku_date = $(".ruku_date").val();//入库日期
		var ruku_number = $(".ruku_number").val();//入库数量
		var pici = $(".pici").val();//批次
		var production_date = $(".production_date").val();//生产日期
		var baozhiqi = $(".baozhiqi").val();//保质期
		var good_shangxian = $(".good_shangxian").val();//上限
		var xiaxian = $(".xiaxian").val();//库存下线
		var count = "ok";
		var tixindate = "riqi";
		var parem = {
			goodsinfomation : ruku_goods,
			goodsdate : ruku_date,
			pici : pici,
			number : ruku_number,
			product_time : production_date,
			baozhiqi : baozhiqi
		}
		var paremtwo = {
			number : ruku_number,
			datetime : production_date,
			lasttime : baozhiqi,
			more : good_shangxian,
			little : xiaxian,
			count : count,
			cunkuinfo : ruku_goods,
			tixindate : tixindate
		}
		var $parems = ruku_goods != null && ruku_goods != "";
		var $ruku_date = ruku_date != null && ruku_date != "";
		var $ruku_number = ruku_number != null && ruku_number != "";
		var $pici = pici != null && pici != "";
		var $production_date = production_date != null && production_date != "";
		var $baozhiqi = baozhiqi != null && baozhiqi != "";
		var $good_shangxian = good_shangxian != null && good_shangxian != "";
		var $xiaxian = xiaxian != null && xiaxian != "";
		if ($parems && $ruku_date && $ruku_number && $pici && $production_date
				&& $baozhiqi && $good_shangxian && $xiaxian) {
			$.post("${jpath}/cunkuinfo/tbinto_insert", parem, function() {})
			$.post("${jpath}/storeinfo/add_info", paremtwo, function() {})
		} else {
			alert("输入不能空");
			return false;
		}
	}
	

	function $table_list() {
		var pageNo = 3;
		var pageSize = 5;
		$.post("${jpath}/storeinfo/find_list",
						{
							pageno : pageNo,
							pagesize : pageSize
						},
						function(data) {
							var obj = $.parseJSON(data);
							var _tbody = "";//tbody
							var $_ul="";//ul
							$_ul+='<ul><li onClick="pageup('+pageNo+')">上一页</li><li onClick="pageDown('+pageNo+')">下一页</li></ul>';
							var _thead = '<tr><td>仓库--位置</td><td>仓库--描述</td><td>入库--货物</td><td>入库--日期</td><td>入库--数量</td><td>入库--批次</td><td>生产--日期</td><td>保质期</td><td>库存--上限</td><td>库存--下限</td><td>描述</td></tr>';
							for (var i = 0; i < obj.length; i++) {
								_tbody += '<tr>';
								_tbody += '<td>' + obj[i].position + '</td>';
								_tbody += '<td>' + obj[i].cunkuinfo + '</td>';
								_tbody += '<td>' + obj[i].cunkuinfo + '</td>';
								_tbody += '<td>' + obj[i].datetime + '</td>';
								_tbody += '<td>' + obj[i].number + '</td>';
								_tbody += '<td>' + obj[i].pici + '</td>';
								_tbody += '<td>' + obj[i].datetime + '</td>';
								_tbody += '<td>' + obj[i].baozhiqi + '</td>';
								_tbody += '<td>' + obj[i].more + '</td>';
								_tbody += '<td>' + obj[i].little + '</td>';
								_tbody += '<td></td>';
								_tbody += '</tr>';
								
							}
							$(".table_list").append(_thead);
							$(".tbody").append(_tbody);
							$("#demo6").append($_ul);
						})
	}
	 	function pageup(pageNo){
			pageNo=pageNo-1;
			alert(pageNo);
			return pageNo;
		}
		function pageDown(pageNo){
			pageNo=pageNo+1;
			alert(pageNo);
			return pageNo;
		} 
		function layer_delete(){//库存删除
			window.location.href="${jpath}/Allpages/panku_delete";
		}
	$(function() {
		$(".ruku_goods").blur(function() {
			var ruku_goods = $(".ruku_goods").val();
			$.post("${jpath}/cunkuinfo/tbfengcang_find_info", {
				changkuinfo : ruku_goods
			}, function(data) {})
		});
		$table_list();
	})
</script>