<%--
  Created by IntelliJ IDEA.
  User: hyrt001
  Date: 2015-01-20 
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <META content="IE=9.0000" http-equiv="X-UA-Compatible">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
</head>
<body>
<div class="content_table" style=" max-height:410px;">
  <form action="#" id="batchForm" >
    <table class="table table-bordered table-hover" style="background:#fff;">
      <tr>
        <th scope="col" width="160">角色名称</th>
        <th scope="col" width="100">角色描述</th>
        <th scope="col">功能权限</th>
        <th scope="col" width="90">操作</th>
      </tr>
      <c:forEach items="${pageUtil.results}" var="item">
        <tr>
          <td>${item.role_name}</td>
          <td>${item.role_desc}</td>
          <td>${item.role_function}</td>
          <td><a onclick="editroleDialog(${item.role_id},'${item.role_name}','${item.role_desc}')" class="tab_editor" title="编辑" style="float:left;"></a>
            <a onclick="deleteRole(${item.role_id})" class="tab_del" title="删除" style="float:left;cursor: hand"></a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </form>
</div>
<%@ include file="/WEB-INF/pages/util/Page.jspf" %>
</body>
</html>
