<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="sovereignJsp/Form_Head.jsp"%>
<button class="layui-btn layui-btn-primary layui-btn-lg" onClick="layer_delete()">删除</button>
<form class="layui-form" action="">
	<div class="layui-form-item">
		<!-- 仓库 -->
		<div class="layui-inline">
			<label class="layui-form-label">入库--物品</label>
			<div class="layui-input-inline">
				<input type="tel" name="phone" lay-verify="required|phone"
					autocomplete="off" class="layui-input ruku_goods">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">仓库位置</label>
			<div class="layui-input-inline cangku_potition">
				<input type="text" name="点击" value="${list }" class="layui-input">
			</div>
		</div>
		<p>${list[0].position }</p>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">仓库描述</label>
			<div class="layui-input-block ">
				<textarea placeholder="亲输入" class="layui-textarea"></textarea>
			</div>
		</div>
		<!-- 入库 -->
		<div class="layui-inline">
			<label class="layui-form-label">入库--日期</label>
			<div class="layui-input-inline">
				<input type="date" name="date" id="date" lay-verify="date"
					placeholder="yyyy-MM-dd" autocomplete="off"
					class="layui-input ruku_date">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">入库数量</label>
			<div class="layui-input-inline">
				<input type="text" name="number" lay-verify="required|number"
					autocomplete="off" class="layui-input ruku_number">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">批次</label>
			<div class="layui-input-inline">
				<input type="text" name="number" lay-verify="required|number"
					autocomplete="off" class="layui-input pici">
			</div>
		</div>
		<!-- 存库 -->
		<div class="layui-inline">
			<label class="layui-form-label">生产--日期</label>
			<div class="layui-input-inline">
				<input type="date" name="date" id="date" lay-verify="date"
					placeholder="yyyy-MM-dd" autocomplete="off"
					class="layui-input production_date">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">保质期</label>
			<div class="layui-input-inline">
				<input type="text" name="number" lay-verify="required|number"
					autocomplete="off" class="layui-input baozhiqi">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">上限</label>
			<div class="layui-input-inline">
				<input type="text" name="date" id="date" lay-verify="date"
					autocomplete="off" class="layui-input good_shangxian">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">下线</label>
			<div class="layui-input-inline">
				<input type="text" name="number" lay-verify="required|number"
					autocomplete="off" class="layui-input xiaxian">
			</div>
		</div>
		<div style="width: 216px; margin: 0;">
			<!-- layui 2.2.5 新增 -->
			<button class="layui-btn layui-btn-fluid" onClick="production_list()">上传</button>
		</div>
	</div>
</form>
<div>
	<table border=" " width="100%">
		<thead class="table_list"></thead>
		<tbody class="tbody"></tbody>
	</table>
</div>
<!-- 表单生成 -->
<div id="demo6"></div>
<br class="br" />
<%@ include file="sovereignJsp/Form_footer.jsp"%>
