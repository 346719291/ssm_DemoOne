<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:set var="jpath" value="${pageContext.request.contextPath }"/>
<html lang="en">
<head>
    <%@ include file="sovereignJsp/head.jsp" %>
</head>

<body class="sidebar-fixed header-fixed">
<div class="page-wrapper">
    <div class="page-header">
        <nav class="navbar page-header">
            <a href="javascript:void(0)" class="btn btn-link sidebar-mobile-toggle d-md-none mr-auto">
                <i class="fa fa-bars"></i>
            </a>

            <a class="navbar-brand" href="javascript:void(0)">
                <img src="./imgs/logo.png" alt="logo">
            </a>

            <a href="javascript:void(0)" class="btn btn-link sidebar-toggle d-md-down-none">
                <i class="fa fa-bars"></i>
            </a>

            <ul class="navbar-nav ml-auto">
                <li class="nav-item d-md-down-none">
                    <a href="javascript:void(0)">
                        <i class="fa fa-bell"></i>
                        <span class="badge badge-pill badge-danger">5</span>
                    </a>
                </li>

                <li class="nav-item d-md-down-none">
                    <a href="javascript:void(0)">
                        <i class="fa fa-envelope-open"></i>
                        <span class="badge badge-pill badge-danger">5</span>
                    </a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="javascript:void(0)" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="./imgs/avatar-1.png" class="avatar avatar-sm" alt="logo">
                        <span class="small ml-1 d-md-down-none">John Smith</span>
                    </a>

                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-header">Account</div>

                        <a href="javascript:void(0)" class="dropdown-item">
                            <i class="fa fa-user"></i> Profile
                        </a>

                        <a href="javascript:void(0)" class="dropdown-item">
                            <i class="fa fa-envelope"></i> Messages
                        </a>

                        <div class="dropdown-header">Settings</div>

                        <a href="javascript:void(0)" class="dropdown-item">
                            <i class="fa fa-bell"></i> Notifications
                        </a>

                        <a href="javascript:void(0)" class="dropdown-item">
                            <i class="fa fa-wrench"></i> Settings
                        </a>

                        <a href="javascript:void(0)" class="dropdown-item">
                            <i class="fa fa-lock"></i> Logout
                        </a>
                    </div>
                </li>
            </ul>
        </nav>
    </div>

    <div class="main-container">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">Navigation</li>
                    <li class="nav-item nav-dropdown">
                        <a href="javascript:void(0)" class="nav-link nav-dropdown-toggle">
                            <i class="icon icon-target"></i> 货物管理 <i class="fa fa-caret-left"></i>
                        </a>

                        <ul class="nav-dropdown-items">
                           <%--  <li class="nav-item">
                                <a href="javascript:void(0)"  ifhref="${jpath }/goods/caigou" class="nav-link tis-bord" onclick="setIf(this)">
                                    <i class="icon icon-target"></i> 进货详情
                                </a>
                            </li> --%>

                            <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/goods/gonyin" class="nav-link tis-bord" onclick="setIf(this)">
                                    <i class="icon icon-target"></i> 供应商信息管理
                                </a>
                            </li>

                          <%--   <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/goods/systemlist" class="nav-link tis-bord" onclick="setIf(this)">
                                    <i class="icon icon-target"></i>系统物料管理
                                </a>
                            </li> --%>

                            <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/goods/caigoulist" class="nav-link tis-bord" onclick="setIf(this)">
                                    <i class="icon icon-target"></i> 采购信息管理
                                </a>
                            </li> 
                            <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/Allpages/spsmanage" class="nav-link" onclick="setIf(this)">
                                    <i class="icon icon-target"></i> 进货信息管理
                                </a>
                            </li> 
                           <%--   <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/Allpages/cun_info" class="nav-link" onclick="setIf(this)">
                                    <i class="icon icon-target"></i>存库--信息
                                </a>
                            </li>  --%>
                            <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/Allpages/panku_manager" class="nav-link" onclick="setIf(this)">
                                    <i class="icon icon-target"></i>库存--管理
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/Allpages/sales_table" class="nav-link" onclick="setIf(this)">
                                    <i class="icon icon-target"></i>销售
                                </a>
                            </li>
                             <li class="nav-item">
                                <a href="javascript:void(0)" ifhref="${jpath }/Allpages/kehuguanli" class="nav-link" onclick="setIf(this)">
                                    <i class="icon icon-target"></i>客户管理
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>

        <div class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header bg-light">
                            <iframe src="" width="100%" height="1000px" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="YES" id="newpages"></iframe>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-12" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content bg-warning">
            <div class="modal-header border-0">
                <h5 class="modal-title text-white">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-white p-5">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Pellentesque lacinia non massa a euismod.
            </div>

            <div class="modal-footer border-0">
                <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-warning">Continue</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-13" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content bg-danger">
            <div class="modal-header border-0">
                <h5 class="modal-title text-white">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body text-white p-5">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Pellentesque lacinia non massa a euismod.
            </div>

            <div class="modal-footer border-0">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-danger">Continue</button>
            </div>
        </div>
    </div>
</div>

 <%@ include file="sovereignJsp/footer.jsp" %>
 <script type="text/javascript">
 		function setIf(_this){
 			var ifhref= $(_this).attr("ifhref");
 			$("#newpages").attr("src",ifhref);
 		}
 </script>
