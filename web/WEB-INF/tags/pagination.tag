<%@tag pageEncoding="UTF-8"%>
<%@ attribute name="pagedResult" type="com.cz.page.PagedResult" required="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%

int current =  pagedResult.getPaging().getPage();
int begin = 1;
int end = (int) Math.ceil((double)pagedResult.getTotalRecords() / pagedResult.getPaging().getPageSize());
String queryString = request.getQueryString();
if(queryString != null){
    queryString = queryString.replaceAll("&page=\\d","");
}

request.setAttribute("current", current);
request.setAttribute("begin", begin);
request.setAttribute("end", end);
request.setAttribute("queryString",queryString);
%>

<div class="pagination pull-right">
	<ul>
		 <% if (current > 1){%>
               	<li><a href="?${queryString}&page=1">&lt;&lt;</a></li>
                <li><a href="?${queryString}&page=${current-1}">&lt;</a></li>
         <%}else{%>
                <li class="disabled"><a href="#">&lt;&lt;</a></li>
                <li class="disabled"><a href="#">&lt;</a></li>
         <%} %>
 
		<c:forEach var="i" begin="${begin}" end="${end}">
            <c:choose>
                <c:when test="${i == current}">
                    <li class="active"><a href="?${queryString}&page=${i}">${i}</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="?${queryString}&page=${i}">${i}</a></li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
	  
	  	 <% if (current < end){%>
               	<li><a href="?${queryString}&page=${current+1}">&gt;</a></li>
                <li><a href="?${queryString}&page=${end}">&gt;&gt;</a></li>
         <%}else{%>
                <li class="disabled"><a href="#">&gt;</a></li>
                <li class="disabled"><a href="#">&gt;&gt;</a></li>
         <%} %>

	</ul>
</div>

