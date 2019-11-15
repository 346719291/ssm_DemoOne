<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="d"%>
<%@ include file="sovereignJsp/Form_Head.jsp"%>
<div class="page-wrapper flex-row align-items-center">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="card p-4">
                    <div class="card-header text-center text-uppercase h4 font-weight-light">
                        Register
                    </div>

                    <div class="card-body py-5">
                        <div class="form-group">
                            <label class="form-control-label">用户名</label>
                            <input type="name" class="form-control name">
                        </div>
                        <div class="form-group">
                            <label class="form-control-label">邮箱</label>
                            <input type="email" class="form-control email">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">密码</label>
                            <input type="password" class="form-control password">
                        </div>

                        <div class="form-group">
                            <label class="form-control-label">确认密码</label>
                            <input type="password" class="form-control passwordagin">
                        </div>
                    </div>

                    <div class="card-footer">
                        <button type="submit" class="btn btn-success btn-block" onclick="zhuce()">注册</button>
                    </div>
                    <div class="card-footer" onClick="return_login()">返回登陆</div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="sovereignJsp/boot_login_plugin.jsp"%>