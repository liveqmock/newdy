<%--
  Created by IntelliJ IDEA.
  User: ChangYY
  Date: 15-1-15
  Time: 上午10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../util/Library.jsp"%>
<html>
<head>
    <title></title>
    <style>
    .footer{ height:30px; overflow:hidden; text-align:center; margin-top:40px; margin-bottom:40px;}
    .footer a{ padding:6px 6px 0px 6px; color:#595757;}
    .footer a:hover,.footer a.xz{ background:#5aa0f4; text-decoration:none; color:#fff;}
    .footer a.ym:hover{ background:none;}
    .footer span{ margin-right:10px;}
    .footer span b{ color:#5aa0f4;}
    .footer input{ width:32px; border:1px solid #c5c5c5; height:20px; text-align:center;}
    .footer i{ padding:6px 6px 4px 6px; font-style:normal;}
    </style>
</head>
<body>
    <div>
    <table style="border: rosybrown 2px solid">
        <tr>
            <th scope="col">用户名</th>
            <th scope="col">姓名</th>
            <th scope="col">电话号码</th>
            <th scope="col">邮件</th>
        </tr>
        <c:forEach items="${pageUtil.results}" var="item">
            <tr>
                <td>${item.userName}</td>
                <td>${item.nameCn}</td>
                <td>${item.phoneNo}</td>
                <td>${item.email}</td>
            </tr>
        </c:forEach>
    </table>
    </div>
    <%@ include file="/WEB-INF/pages/util/Page.jspf" %>
</body>
</html>