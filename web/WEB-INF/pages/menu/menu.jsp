<%--
  Created by IntelliJ IDEA.
  User: wangdy
  Date: 15-1-15
  Time: 下午1:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:forEach items="${menuMap.topMenu}" var="item" varStatus="status">
    <dl <c:if test="${status.first}">class="show"</c:if>>
        <dt id='ppuu_181' pid='pid_49' show='false'>
                ${item.menu_name}
        </dt>
    </dl>
</c:forEach>
</body>
</html>