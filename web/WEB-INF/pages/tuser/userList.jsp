<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../common/taglibs.jsp" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="container-fluid">
		<div class="row-fluid">

			<div id="content">

			<!-- content starts -->

			<div class="sortable row-fluid">
				<div class="box">
					<div class="box-header well" data-original-title>
						<h2>员工列表</h2>
						<div class="box-icon">
							<!-- <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a> -->
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<!-- <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>-->
						</div>
					</div>
					<!-- <th>操作</th> -->
					<div class="box-content">

                        <form:form method="get" action="${contextPath}/user/index" cssClass="form-horizontal" modelAttribute="user">
						<fieldset>
						  <div class="control-group">
							<label class="control-label" for="focusedInput">用户名</label>
							<div class="controls">
							  <form:input path="userName" cssClass="input-xlarge focused"/>
							</div>
						  </div>
						  <div class="control-group">
							<label class="control-label" for="focusedInput">员工姓名</label>
							<div class="controls">
							  <input class="input-xlarge focused" id="focusedInput" type="text" value="This is focused…">
							</div>
						  </div>
						  <div class="control-group">
							<label class="control-label" for="focusedInput">所属组织机构</label>
							<div class="controls">
							  <input class="input-xlarge focused" id="focusedInput" type="text" value="This is focused…">
							<button type="submit" class="btn btn-success"><i class="icon-ok icon-white"></i> 搜索</button>
							<a href="${contextPath}/user/create"   class="btn btn-primary" data-title="新增"><i class="icon-plus-sign icon-white"></i>  新增</a>

							</div>
						  </div>
						</fieldset>
					  </form:form>

<!-- 						<a class="btn btn-primary" data-trigger="modal" data-onClose="test" href="#modal-container-152137" data-title="添加用户" data-width="800" data-height="600"><i class="icon-plus-sign icon-white"></i> 新增</a> -->
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
<!-- 							  	<th width="20"><input type="checkbox" id="optionsCheckbox2" value="option1"></th> -->
							  	<th>用户名</th>
								  <th>员工姓名</th>
								  <th>所属机构</th>
								  <th>有效状态</th>
								  <th width="140">操作</th>
							  </tr>
						  </thead>
						  <tbody>
						  <c:forEach items="${pagedResult.list}" var="user">

				       			<tr>
<!-- 				       			<td><input type="checkbox" id="optionsCheckbox2" value="option1"></td> -->
								<td><c:out value="${user.userName}"></c:out></td>
								<td><c:out value="${user.userId}"></c:out></td>
								<td><c:out value="${user.functionOrgName}"></c:out></td>
								<td>

									<form id="checkboxform" class="form-horizontal" method="post" action="${contextPath}/user/save">
				                            <input type="hidden" name="userName" value="${user.userName}"/>
				                            <input type="hidden" name="functionOrgId" value="${user.functionOrgId}"/>
				                            <input type="hidden" name="userId" value="${user.userId}"/>
											<input <c:if test="${user.isOk eq 1}">checked="checked"</c:if> type="checkbox" onclick="$(this).parent().submit();" name="isOk" value="1">
	                                  </form>
								</td>
								<td>
									<form:form method="post" action="${contextPath}/user/delete"
                                                   cssStyle="float:left;margin: 0 0 0 0;">
                                            <input type="hidden" name="id" value="${user.userId}"/>
                                            <button class="btn btn-danger" style="margin: 0 5px 0 0" type="submit" onclick="return confirm('确认删除？')">
                                                <i class="icon-trash icon-white"></i> 删除
                                            </button>
                                        </form:form>
                                        <a class="btn btn-primary"
                                           href="${contextPath}/user/update?id=${user.userId}"><i
                                                class="icon-pencil icon-white"></i> 修改</a>
								</td>
								</tr>
				  			</c:forEach>
						</tbody>
					</table>
					<tags:pagination pagedResult="${pagedResult}"/>
				</div>
			</div>
			</div>
			</div>
		</div><!--/fluid-row-->
	</div><!--/.fluid-container-->
</body>
</html>
