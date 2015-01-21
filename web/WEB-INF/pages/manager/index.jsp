<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
	<head>
		<%
			String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path;
			request.setAttribute("basePath", basePath);
		%>
		<title>管理平台</title>
		<link rel="stylesheet" href="${basePath}/js/jquery-ui-1.11.2.custom/jquery-ui.min.css">
		<link href="${basePath}/css/reset.css" type="text/css" rel="stylesheet">
		<link href="${basePath}/css/style.css" rel="stylesheet" type="text/css">
		<link href="${basePath}/css/lvyan.css" rel="stylesheet" type="text/css">
        <script src="${basePath}/js/jquery-1.8.2.min.js" type="text/javascript"></script>
		<script language="javascript" type="text/javascript" src="${basePath}/js/jquery-ui-1.11.2.custom/jquery-ui.min.js"></script>
		<script language="javascript" type="text/javascript" src="${basePath}/js/jquery.selectui.js"></script>
        <script type="text/javascript" src="${basePath}/js/layout.js"></script>
        <script type="text/javascript">
//            $(document).ready(function(){
//
//            });
			<!--初始化用户菜单 -->
            function initTopMenu(){
                $.ajax({
                    url:'menu/getTopMenu.do',
                    type:'post',
                    dataType:'html',
                    data:"",
                    error: function(){/*alert('error');*/},
                    success:function(data){
                        $("#Lframe").html(data);
                    }
                });
            }

			<!--用户退出登陆 -->
			function loginOut(){
				if(confirm("确定退出？")){
					window.location.href="<%=basePath%>/loginOut";
				}
			}
        </script>
	</head>

	<body id="supporter">
		<!--这里是头部-->
		<div class="header">
			<span class="logo"><a href="#"><img src="images/logo.png" title="中票盟"></a>
			</span>
			<div class="wrap">
				<!--这里是logo-->
				<div class="logo"></div>
				<p class="welcome">
					平台管理系统欢迎您，${sessionScope.userName}
					<a href="javascript:loginOut();">[退出平台]</a>
				</p>
			</div>
		</div>

		<!--这里是主体-->
		<div class="wrap">
			<!--这里是左边大导航-->
			<div class="Lframe" id="Lframe">

			</div>
			<!--这里是右半部分-->
			<div class="Rframe">
				<!--这里是框架-->
				<div class="iframe">
					<iframe name="indexIframe" style="width: 100%;" src="" id="indexIframe">
					</iframe>
				</div>
			</div>
		</div>
	</body>
</html>
