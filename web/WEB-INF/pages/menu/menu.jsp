<%--
  Created by IntelliJ IDEA.
  User: wangdy
  Date: 15-1-15
  Time: 下午1:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${menuTopList}" var="item" varStatus="status">
    <dl>
        <dt>${item.menu_name}</dt>
        <c:if test="${!status.first}"><dd></c:if>
        <dd>
            <ul>
                <c:forEach items="${map[item.menu_id]}" var="menu">
                    <li>
                        <a href="${menu.menu_url}" target="indexIframe">${menu.menu_name}</a>
                    </li>
                </c:forEach>
            </ul>
        </dd>
    </dl>
</c:forEach>