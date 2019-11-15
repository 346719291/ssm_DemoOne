<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="sovereignJsp/Form_Head.jsp"%>
<form class="layui-form" action="">
	<div class="layui-form-item">
		<!-- 仓库 -->
		<div class="layui-inline">
			<label class="layui-form-label">物品</label>
			<div class="layui-input-inline">
				<input type="tel" name="phone" lay-verify="required|phone"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">生产--日期</label>
			<div class="layui-input-inline">
				<input type="date" name="date" id="date" lay-verify="date"
					placeholder="yyyy-MM-dd" autocomplete="off"
					class="layui-input production_date">
			</div>
		</div>
		<button class="layui-btn layui-btn-primary layui-btn-lg"
			onClick="delete_goods()">删除</button>
	</div>
</form>
<%@ include file="sovereignJsp/Form_footer.jsp"%>
<script type="text/javascript">
$(function (){
	alert("kpk");
})

</script>
