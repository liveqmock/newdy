<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/taglibs.jsp" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>特自由旅行网</title>
<link href="${contextPath}/teziyou/css/reset.css" type="text/css" rel="stylesheet">
<link href="${contextPath}/teziyou/css/index.css" rel="stylesheet" type="text/css">
<script src="${contextPath}/teziyou/js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="${contextPath}/teziyou/js/layout.js" type="text/javascript"></script>
</head>

<body>
<!--这里是头部-->
<div class="header">

	<!--这里是logo-->
	<div class="logo">
    	<a href="#"><img src="${contextPath}/teziyou/images/logo.png" title="特自由旅行网"></a>
    </div>
    <!--这里是横向导航
    <div class="menu fl">
    	<ul>
        	<li><a href="#"><span></span>系统管理</a></li>
        	<li><a href="#" class="click"><span style=" background-position:-35px "></span>财务结算</a></li>
        	<li><a href="#"><span style=" background-position:-70px "></span>权限管理</a></li>
        	<li><a href="#"><span style=" background-position:-105px "></span>运营管理</a></li>
        	<li><a href="#"><span style=" background-position:-140px "></span>营销管理</a></li>
        	<li><a href="#"><span style=" background-position:-175px "></span>客服系统</a></li>
        	<li><a href="#"><span style=" background-position:-210px "></span>OA办公系统</a></li>
        </ul>
    </div>
    -->
    <!--这里是登陆者信息-->
    <div class="login fr">
    	<h2>乘风-超级管理员<a href="#"> [退出] </a></h2>
    </div>
</div>
<!--这里是主体-->
<div class="main">
	<!--这里是左边大导航-->
	<div class="Lframe">
        <dl>

        	<dt>用户管理</dt>
            <dd>
            	<ul>
             	 <li><a href="${contextPath}/user/index" target="mainwork">用户账号管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl>
        	<dt>功能权限分配管理</dt>
            <dd>
            	<dd>
            	<ul>
             	 <li><a href="${contextPath}/role/index" target="mainwork">角色权限管理</a></li>
             	 <li><a href="${contextPath}/user/userRole" target="mainwork">用户角色管理</a></li>
             	 <li><a href="${contextPath}/user/userGroup" target="mainwork">用户所属组管理</a></li>
             	 <li><a href="${contextPath}/group/index" target="mainwork">用户组管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl>
        	<dt>功能权限管理</dt>
            <dd>
            	<dd>
            	<ul>
            	<li><a href="${contextPath}/functionRight/index" target="mainwork">功能权限管理</a></li>
             	 <li><a href="${contextPath}/menu/index" target="mainwork">功能菜单管理</a></li>
                </ul>
            </dd>
        </dl>
        <dl>
        	<dt>组织机构管理</dt>
            <dd>
            	<dd>
            	<ul>
            	<li><a href="${contextPath}/org/index" target="mainwork">组织机构管理</a></li>
                </ul>
            </dd>
        </dl>
        </div>
    <!--这里是右半部分-->
    <!--这里是面包线导航
    	<div class="Tnav" id="tnavBar">
        	<a href="#">运营管理中心</a>>
        	<a href="#">特色旅游</a>>
        	<a href="#">内容管理</a>>
        	<a href="#">点评列表</a>
        </div>
    -->
    <div class="Rframe" id="rightDiv">
        <!--这里是框架-->
        
        <div class="iframe" style=" width:100%; height:100%" >
        	<!-- <iframe style=" background:#fff url(images/bj_03.png); width:100%; height:450px">
            </iframe> -->
            <iframe src="" style=" width:100%; height:100%" name="mainwork">
            </iframe>
        </div>
        
    </div>
</div>
<footer>
	<p style="text-align: center;">&copy; <a href="#" target="_blank">特自游（北京）信息技术有限公司</a>  2014-2016</p>
</footer>
</body>
</html>
