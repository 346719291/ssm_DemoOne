<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sovereignJsp/Form_Head.jsp"%>
<button class="layui-btn layui-btn-primary" onClick="add_info()">添加</button>
<div class="layui-layout layui-layout-admin ">
	<div class="layui-tab layui-tab-brief" lay-filter="demoTitle">
		<ul class="layui-tab-title site-demo-title"></ul>
		<div class="layui-body layui-tab-content site-demo site-demo-body">
			<div class="layui-tab-item layui-show">
				<div class="layui-main">
					<div id="LAY_preview">
						<form class="layui-form layui-btn-radius" action="">
							<div class="layui-form-item">
								<label class="layui-form-label">姓名</label>
								<div class="layui-input-block">
									<input type="text" name="username" lay-verify="required"
										placeholder="name" autocomplete="off" class="layui-input usernaccme">
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">积分</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input jifceng">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">折扣率</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
											autocomplete="off" class="layui-input zhekcoulv">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">qq/微信</label>
									<div class="layui-input-inline">
										<input type="text" name="number" lay-verify="required|number"
										placeholder="qq/微信"	 autocomplete="off" class="layui-input qq_orc_weixin">
									</div>
								</div>
							</div>
							
							<div class="layui-form-item">
								<label class="layui-form-label">地址</label>
								<div class="layui-input-block">
									<input type="text" name="username" lay-verify="required"
										placeholder="地址" autocomplete="off" class="layui-input Adcress">
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">生日</label>
									<div class="layui-input-inline">
										<input type="text" name="date" id="date" lay-verify="date"
											placeholder="yyyy-MM-dd" autocomplete="off"
											class="layui-input dirthdacy">
									</div>
								</div>
							</div>
							<div class="layui-form-item">
								<div class="layui-input-block">
									<button class="layui-btn" lay-submit lay-filter="demo1"
										onClick="upload_upup()">注册</button>
									<button type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	 <div>
	 	<table width="100%" border=1 class="style_s">
	 		<thead class="thesad"></thead>
	 		<tbody class="tsbody"></tbody>
	 	</table>
	 </div>
<%@ include file="sovereignJsp/kehuguanli_plugin.jsp"%>