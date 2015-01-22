<%@tag pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    String queryString = request.getQueryString();
    if(queryString != null){
        queryString = queryString.replaceAll("&page=\\d","").replaceAll("&sortType=[a-z]*","");
    }

    request.setAttribute("queryString",queryString);
%>
<div>${queryString}</div>
<div class="nav dropdown pull-right">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
    	排序: ${sortTypes[param.sortType]} <b class="caret"></b>
    </a>
	<ul class="dropdown-menu" >
	   	<c:forEach items="${sortTypes}" var="entry">
	   		<li><a href="?${queryString}&sortType=${entry.key}">${entry.value}</a></li>
		</c:forEach>
	</ul>
</div>