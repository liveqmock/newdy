<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path;
			request.setAttribute("basePath", basePath);
			String flag = request.getParameter("flag");
			request.setAttribute("flag", flag);
		%>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta content="IE=9" http-equiv="X-UA-Compatible">
		<title>管理系统</title>
		<link href="${basePath}/css/user/third/third.css" rel="stylesheet"
			type="text/css" />
		<link href="${basePath}/css/public.css" rel="stylesheet"
			type="text/css" />
		<link href="${basePath}/css/sub.css" rel="stylesheet" type="text/css" />
	</head>

	<body
		style="background:url(${basePath}/image/user/bg0.png) no-repeat #130e16 center top;">
		<div class="login">
			<h4 class="login_title1">
			</h4>
			<div class="login_content">
				<form method="post" action="${basePath}/login">
					<span class="login_radio"> <label
							style="float: left; margin-right: 5px;">
							登录身份：
						</label> <input type="radio" name="userLogo" value="0" checked="checked" /><span
						style="color: #ffffff">管理员</span> <input type="radio"
							name="userLogo" value="1" /><span style="color: #ffffff">普通会员</span>
					</span>
					<div>
						<label>
							用户名：
						</label>
						<input type="text" name="userName" />
					</div>
					<div>
						<label>
							密码：
						</label>
						<input type="password" name="password" />
					</div>
					<%--<div style="color: red"></div>--%>
					<div class="clear" style="height: 10px; overflow: hidden;"></div>
					<p class="login_p" style="color: red">
						<c:if test="${flag=='1'}">
							<c:out value="用户被禁用或者删除" />
						</c:if>
						<c:if test="${flag!='1'}">${msg}</c:if>
					</p>
					<input type="submit" class="login_button1" value="登录">
				</form>
			</div>
		</div>
	</body>
</html>
