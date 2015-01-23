<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta charset="utf-8">
<title>管理平台</title>
<link href='${ctx}/resources/charisma/css/login.css' rel="stylesheet">
<script src="${ctx}/resources/charisma/js/jquery-1.7.2.min.js"></script>
<script src="${ctx}/resources/charisma/js/jquery.placeholderui.js"></script>
<style type="text/css">

</style>
</head>
<body>
	<div id="login">
		<div class="header">
			<div class="wrap">
				<img src="${ctx}/resources/image/logo.png" />
				<p>华源润通(北京)科技有限公司</p>
			</div>
		</div>
		<div class="bgd">
			<div class="wrap relative">
				<form action="${ctx}/userLogin" method="post" id="loginForm">
					<table class="absolute">
						<tr class="title">
							<td colspan="2">
							<div class="relative"><c:if test="${msg == null}">登录</c:if>
							<c:if test="${msg != null}">
							<p class="absolute check">${msg}</p>
							</c:if>
							</div>
							</td>
						</tr>
						<tr>
							<td colspan="2"><input class="w230" type="text" name="userName" id="userName"
								placeholder="请输入登录账号" value="admin"/></td>
						</tr>
						<tr>
							<td colspan="2"><input class="w230" type="password" name="password"
								id="password" placeholder="请输入密码" value="123456"/></td>
						</tr>
						<tr>
							<td width="108px"><input class="w118" type="text" placeholder="请输入验证码" name="validateCode" i="verify" onkeydown="if(event.keyCode == 13){this.focus();login();}"/></td>
							<td><img src="${ctx}/getImage" id="v_image" title="点击更换" onclick="javascript:reloadVerifyCode('${ctx}/getImage',this);" style="height: 40px;width: 71px;"/></td>
						</tr>
						<tr class="h50">
							<td><input type="checkbox" class="checkbox" />记住密码</td>
							<td class="forget"><a href="" target="_blank">忘记密码？</a></td>
						</tr>
						<tr>
							<td colspan="2"><input class="login" type="button" value="登 录" id="smitBtn" /></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!-- <div class="footer">
			<div class="wrap">
				<p>
					<a href="">关于中票盟</a> <a href="">中票盟官方微博</a> <span>中票盟版权所有</span>
				</p>
			</div>
		</div> -->
	</div>
	<script type="text/javascript">
			$('form').PlaceholderUI();
			$("#smitBtn").click(function(){
				$("#loginForm").submit();
			});
			 function login(){
				  $('#loginForm').submit();
			  }
			  function reloadVerifyCode(url,obj)  
			  {  
			     var timenow = new Date().getTime();                            
			     obj.src=url+"?d="+timenow;  
			  }
	</script>
</body>
</html>
