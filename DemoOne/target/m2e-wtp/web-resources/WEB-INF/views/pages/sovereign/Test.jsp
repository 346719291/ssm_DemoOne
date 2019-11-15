<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ include file="sovereignJsp/Form_Head.jsp"%>

<div class="layui-layout layui-layout-admin">
	<div class="layui-tab layui-tab-brief" lay-filter="demoTitle">
		<ul class="layui-tab-title site-demo-title"></ul>
		<div class="layui-body layui-tab-content site-demo site-demo-body">
			<div class="layui-tab-item layui-show">
				<div class="layui-main">
					<div id="LAY_preview">
						<form class="layui-form" action="">
							<div class="layui-form-item">
								<label class="layui-form-label ">入库物品</label>
								<div class="layui-input-block">
									<input type="text" name="title" lay-verify="title"
										autocomplete="off" placeholder="入库物品"
										class="layui-input upcase">
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">仓库位置</label>
								<div class="layui-input-block">
									<input type="text" name="username" lay-verify="required"
										placeholder="" autocomplete="off" class="layui-input">
								</div>
							</div>
							<div class="layui-form-item layui-form-text">
								<label class="layui-form-label">仓库描述</label>
								<div class="layui-input-block">
									<textarea placeholder="请输入内容" class="layui-textarea"></textarea>
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">保质期</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input baozhiqi">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">存库上限</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input cunku_up">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">存库下限</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input cunku_down">
									</div>
								</div>
							</div>
							<div class="layui-form-item">
								<label class="layui-form-label">批次</label>
								<div class="layui-input-inline">
									<input type="text" name="number" lay-verify="required|number"
										autocomplete="off" class="layui-input cunku_pici">
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">入库数量</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input ruku_count">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">入库日期</label>
									<div class="layui-input-inline">
										<input type="text" name="date" id="date" lay-verify="date"
											placeholder="yyyy-MM-dd" autocomplete="off"
											class="layui-input ruku_date">
									</div>
								</div>
								<div class="layui-form-item">
									<label class="layui-form-label">生产日期</label>
									<div class="layui-input-block">
										<input type="text" name="date" id="date1" autocomplete="off"
											class="layui-input production_date">
									</div>
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="demo1"
										onClick="upload_upup()">立即提交1</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
						<div class="site-demo-button" id="layerDemo" style="margin-bottom:0;">
						  <button data-method="setTop" class="layui-btn">盘库</button>
						  <button class="layui-btn" onClick="daichuku_info()">待出库信息</button>
						</div>
						
						
						<table width="100%" border=1 class="style_s"><!-- id="test"  class="layui-hide " -->
							<thead>
								<tr>
									<td><input type="checkbox" name="checkbox"></td>
									<td>入库的物品</td>
									<td>入库数量</td>
									<td>入库时间</td>
									<td>库存上限</td>
									<td>库存下限</td>
									<td>保质期</td>
									<td>提醒时间</td>
									<td>操作</td>
								</tr>
							</thead>
							<tbody class="testtbr_"></tbody>
						</table>
						<div id="demo1"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="sovereignJsp/plugin.jsp"%>
