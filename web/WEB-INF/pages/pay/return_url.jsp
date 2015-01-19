<%
/* *
 功能：支付宝页面跳转同步通知页面
 版本：3.2
 日期：2011-03-17
 说明：
 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

 //***********页面功能说明***********
 该页面可在本机电脑测试
 可放入HTML等美化页面的代码、商户业务逻辑程序代码
 TRADE_FINISHED(表示交易已经成功结束，并不能再对该交易做后续操作);
 TRADE_SUCCESS(表示交易已经成功结束，可以对该交易做后续操作，如：分润、退款等);
 //********************************
 * */
%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Map"%>
<%@ page import="com.cz.alipay.util.*"%>
<html>
  <head>
  		<link rel="stylesheet" type="text/css" href="../view/front/20130502/alipay/style.css" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>支付宝页面跳转同步通知页面</title>
  </head>
  <body>
  <center>
<%
	//获取支付宝POST过来反馈信息
	// OrderI orderI = new OrderImpl();
	Map<String,String> params = new HashMap<String,String>();
	Map requestParams = request.getParameterMap();
	for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
		String name = (String) iter.next();
		String[] values = (String[]) requestParams.get(name);
		String valueStr = "";
		for (int i = 0; i < values.length; i++) {
			valueStr = (i == values.length - 1) ? valueStr + values[i]
					: valueStr + values[i] + ",";
		}
		//乱码解决，这段代码在出现乱码时使用。如果mysign和sign不相等也可以使用这段代码转化
		// valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
		params.put(name, valueStr);
	}
	//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以下仅供参考)//
	//商户订单号

	String out_trade_no = request.getParameter("out_trade_no");

	//支付宝交易号

	String trade_no = request.getParameter("trade_no");

	//交易状态
	String trade_status = request.getParameter("trade_status");

	//获取支付宝的通知返回参数，可参考技术文档中页面跳转同步通知参数列表(以上仅供参考)//
	
	//计算得出通知验证结果
	boolean verify_result = AlipayNotify.verify(params);
	System.out.println("verify_result======="+verify_result);
	if(verify_result){//验证成功
		//////////////////////////////////////////////////////////////////////////////////////////
		//请在这里加上商户的业务逻辑程序代码
		//——请根据您的业务逻辑来编写程序（以下代码仅作参考）——
		if(trade_status.equals("TRADE_FINISHED") || trade_status.equals("TRADE_SUCCESS")){
			//判断该笔订单是否在商户网站中已经做过处理
				int count = 0;// orderI.dealTrade(out_trade_no,trade_no);
				if(count==1){
					AlipayCore.logResult("同步处理 订单号为"+out_trade_no+"的商品"+OrderUtil.getDateFormatter()+"通过支付宝支付成功",out_trade_no);
				}
				//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				//如果有做过处理，不执行商户的业务程序
		}
		//该页面可做页面美工编辑
		// out.println("验证成功<br />");
		//——请根据您的业务逻辑来编写程序（以上代码仅作参考）——

		//////////////////////////////////////////////////////////////////////////////////////////
		%>
		<div id="top">
		  <div class="header_top">
		    	<p class="headerL"><a href="#">收藏中纺</a></p>
		        <p class="headerR"><a href="#">您好！[退出]</a><span>|</span><a href="#">返回首页</a></p>
		    </div>
		</div>
		<div id="logo">
			<h1><a href="#"><img src="../view/front/20130502/alipay/images/logo.jpg" width="309" height="77" /></a></h1>
		</div>
		<div id="success-content">
			 <div class="success-tit" style="margin:300px 290px;width:380px;height:100px; background:#FFF;border:1px solid #3CF;padding:8px;">
			     <div  class="success-2" style="width:93px; height:92px;"><img src="../view/front/20130502/alipay/images/duihao.jpg" alt="" /> </div>
			     <div class="success-3" style=" width:192px; font-size:14px;line-height:24px; margin-left:18px;"><span style="display:inline-block; font-size:16px; font-weight:600;">恭喜您，您的订单已成功！</span><a href="javascript:window.close()" style="color:#F93; font-size:16px;">点击关闭</a><br/>感谢你对中纺的支持</div>
			 </div>
		 </div>
		<%	}else{
		//该页面可做页面美工编辑
		out.println("验证失败");
	}
%>
</center>
  </body>
</html>