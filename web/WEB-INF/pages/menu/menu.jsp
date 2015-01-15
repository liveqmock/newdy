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
<c:forEach items="${menuTopList}" var="item" varStatus="status">
    <dl <c:if test="${status.first}">class="show"</c:if>>
        <dt id='ppuu_${status.index}' pid='pid_${status.index}' show='false'>
                ${item.menu_name}
        </dt>
        <dd>
            <ul>
            <c:forEach items="${map[item.menu_id]}" var="menu">
                <li>
                    <h4>
                        <a href="${menu.menu_url}" target="indexIframe">${menu.menu_name}</a>
                    </h4>
                </li>
             </c:forEach>
            </ul>
        </dd>
    </dl>
</c:forEach>
</body>
</html>