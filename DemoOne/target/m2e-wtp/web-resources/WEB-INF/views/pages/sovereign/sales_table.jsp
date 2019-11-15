<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="sovereignJsp/Form_Head.jsp"%>
	
<style>
	.margin-top{
			margin-top: 100px;
			display: none;
		}
	.display_erweima{
		display: none;
	}
</style>
<button class="layui-btn addinfomation" onClick="add_info_goods()">添加</button>
<div class="layui-form-item display_erweima">
	<label class="layui-form-label ">扫描二维码</label>
	<div class="layui-input-block">
		<input type="text" name="title" lay-verify="title" autocomplete="off"
			placeholder="请输入二维码" class="layui-input upcase">
	</div>
</div>
<button class="layui-btn display_erweima return-s" onClick="return_()">返回</button>
<table width="100%" border=1 class="style_s">
  		<thead>
  			<tr>
  				<td><input type="checkbox" name="checkbox"></td>
  				<td>会员号</td>
  				<td>小票号</td>
  				<td>积分</td>
  				<td>销售日期</td>
  				<td>详细信息</td>
  				<td>操作</td>
  			</tr>
  		</thead>
  		<tbody class="head_table"></tbody>
	</table>
	<div>
		
	</div>
		<ul class="layui-tab-title site-demo-title"></ul>
		
						<form class="layui-form margin-top" action="">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">会员号</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input huiyuanhao">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">积分</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input jifen">
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
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="demo1"
										onClick="down_update()">关闭</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
<%@ include file="sovereignJsp/sales_plugin.jsp"%>