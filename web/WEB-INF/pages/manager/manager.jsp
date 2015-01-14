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
		<link href="${basePath}/css/reset.css" type="text/css" rel="stylesheet">
		<link href="${basePath}/css/style.css" rel="stylesheet" type="text/css">
		<link href="${basePath}/css/lvyan.css" rel="stylesheet" type="text/css">
		<script src="${basePath}/js/jquery-1.8.2.min.js" type="text/javascript"></script>
		<script src="${basePath}/js/layout.js" type="text/javascript"></script>
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
					<a href="">[退出]</a>
				</p>
			</div>
		</div>

		<!--这里是主体-->
		<div class="wrap">
			<!--这里是左边大导航-->
			<div class="Lframe">
				<dl class="show">
					<dt id='ppuu_50' pid='pid_49' show='false'>
						网站基本信息管理
					</dt>
					<dd>
						<ul>
							<li>
								<h4>
									<a href="http://182.92.175.187:8080/ticketingB2B/org/index"
										target="indexIframe">信息管理</a>
								</h4>
							</li>
							<li>
								<h4>
									<a href="/ticketingB2B-web" target="indexIframe">访问日志</a>
								</h4>
							</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt id='ppuu_51' pid='pid_49' show='false'>
					企业内容管理
					</dt>
					<dd>
						<ul>
							<li>
								<h4>
									信息管理
								</h4>
								<ol>
									<li>
										<a href="http://182.92.175.187:8080/ticketingB2B/user/index"
											target="indexIframe">用户账号管理</a>
									</li>
								</ol>
							</li>
							<li>
								<h4>
									公告管理
								</h4>
								<ol>
									<li>
										<a
											href="http://182.92.175.187:8080/ticketingB2B/functionRight/index"
											target="indexIframe">权限注册</a>
									</li>
									<li>
										<a href="http://182.92.175.187:8080/ticketingB2B/menu/index"
											target="indexIframe">菜单管理</a>
									</li>
								</ol>
							</li>
							<li>
								<h4>
									产品管理
								</h4>
								<ol>
									<li>
										<a href="http://182.92.175.187:8080/ticketingB2B/role/index"
											target="indexIframe">角色权限管理</a>
									</li>
									<li>
										<a
											href="http://182.92.175.187:8080/ticketingB2B/user/userRole"
											target="indexIframe">用户角色管理</a>
									</li>
									<li>
										<a href="http://182.92.175.187:8080/ticketingB2B/group/index"
											target="indexIframe">用户组角色管理</a>
									</li>
									<li>
										<a
											href="http://182.92.175.187:8080/ticketingB2B/user/userGroup"
											target="indexIframe">用户所属组管理</a>
									</li>
								</ol>
							</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt id='ppuu_181' pid='pid_49' show='false'>
						会员信息管理
					</dt>
					<dd>
						<ul>
							<li>
								<h4>
									<a href="/ticketingB2B-web" target="indexIframe">会员信息维护</a>
								</h4>
							</li>
							<li>
								<h4>
									<a href="/ticketingB2B-web" target="indexIframe">密码修改</a>
								</h4>
							</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt id='ppuu_52' pid='pid_49' show='false'>
						积分兑换管理
					</dt>
					<dd>
						<ul>
							<li>
								<h4>
									<a href="/ticketingB2B-web/administrative/list"
										target="indexIframe">行政区划管理</a>
								</h4>
							</li>
							<li>
								<h4>
									<a
										href="/ticketingB2B-web/dictionary/list?itemType=0080&display=1012000011&itemName=景区主题分类管理"
										target="indexIframe">景区主题分类管理</a>
								</h4>
							</li>
							<li>
								<h4>
									<a
										href="/ticketingB2B-web/dictionary/list?itemType=0081&display=1012000011&itemName=景区等级设置"
										target="indexIframe">景区等级设置</a>
								</h4>
							</li>
							<li>
								<h4>
									<a href="/ticketingB2B-web" target="indexIframe">景区信息管理</a>
								</h4>
							</li>
							<li>
								<h4>
									<a
										href="/ticketingB2B-web/dictionary/list?itemType=0006&display=1012000011&itemName=代理商等级管理"
										target="indexIframe">代理商等级管理</a>
								</h4>
							</li>
							<li>
								<h4>
									<a
										href="/ticketingB2B-web/dictionary/list?itemType=0100&display=1012000011&itemName=设备类型管理"
										target="indexIframe">设备类型管理</a>
								</h4>
							</li>
							<li>
								<h4>
									<a href="/ticketingB2B-web" target="indexIframe">基础费率管理</a>
								</h4>
							</li>
							<li>
								<h4>
									<a
										href="/ticketingB2B-web/dictionary/list?itemType=0003&display=1012000011&itemName=平台参与者类型管理"
										target="indexIframe">平台参与者类型管理</a>
								</h4>
							</li>
						</ul>
					</dd>
				</dl>
				<dl>
					<dt id='ppuu_53' pid='pid_49' show='false'>
						订单管理
					</dt>
				</dl>
			</div>
			<!--这里是右半部分-->
			<div class="Rframe">
				<!--这里是框架-->
				<div class="iframe">
					<iframe name="Rframe" style="width: 100%;" src="www.baidu.com">
					</iframe>
				</div>
			</div>
		</div>
	</body>
</html>
