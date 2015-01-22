<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../common/taglibs.jsp" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title></title>
    
    
        <style>
.modelWidth {
	right: 100px;
	left: 100px;
	width: auto;
	margin: -250px 0 0 0;
}

.selrole {
	width: 48%;
	-moz-user-select: none; /*火狐*/
	-webkit-user-select: none; /*webkit浏览器*/
	-ms-user-select: none; /*IE10*/
	-khtml-user-select: none; /*早期浏览器*/
	user-select: none;
}

.selrole .box {
	height: 380px;
	overflow-y: auto;
	overflow-x: hidden;
}

.selrole .box-content {
	margin-right: 30px;
}

.r {
	float: right;
}

.l {
	float: left;
}

.selrole a {
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border: 1px solid #999;
	border-radius: 5px;
	display: inline-block;
	padding: 3px 8px;
	text-decoration: none;
	margin: 5px;
	cursor: pointer;
	width: 100%;
}
.w180{
    	float: right;
    	margin-left: 8px;
    	margin-bottom: 0;
    	margin-top: 4px;
    	padding: 0;
    }
</style>
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
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
							  	<th>用户名</th>
								  <th>员工姓名</th>
								  <th>所属机构</th>
								  <th width="140">操作</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <c:forEach items="${pagedResult.list}" var="user">  
				       			
				       			<tr>
								<td><c:out value="${user.userName}"></c:out></td>
								<td><c:out value="${user.userId}"></c:out></td>
								<td><c:out value="${user.functionOrgName}"></c:out></td>
								<td>
								  <a onclick="editUserRoles(${user.userId},'${user.userName}')"  class="btn btn-primary"><i class="icon-plus-sign icon-white"></i>  选择角色</a>
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
	
	

<div id="modal-container-152137" class="modal hide fade modelWidth" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3 id="myModalLabel">
						为【用户组1】选择角色
					</h3>
				</div>
				<div class="modal-body" onselectstart="return false;">

				 	<div class="selrole l">
                		<div class="box">
                    		<div class="box-header well" data-original-title>
                        		<h2>功能权限列表</h2>
                   			 </div>
                    		<div id="leftbox" class="box-content">
							   <c:forEach items="${roles}" var="role">
							   <a id="${role.id}">${role.roleName}</a>
							   </c:forEach>
                    		</div>
                    	</div>
                    	</div>
					<div class="selrole r">
                		<div class="box">
                    		<div class="box-header well" data-original-title>
                        		<h2>功能权限列表</h2>
                   			 </div>
                    		<div id="rightbox" class="box-content">
                    		</div>
                    	</div>
                    	</div>
					</div>

				<div class="modal-footer">
				<button id="submitRole" class="btn btn-primary">确定</button>
				<div id="loadAlert" class="alert w180">正在提交。。。</div>
					 
				</div>
			</div>
<script type="text/javascript">

	var roleIds=${roleIds};
	var userId;
	var intv;
	var p=0;
	window.onload=function (){
		$('#loadAlert').hide();
        $('#leftbox > a').on('click', function (e) {
        	var id=$(this).attr('id');
        	$(this).clone().appendTo("#rightbox");
            $(this).hide();
            reRegClick();
    	});
        
        $('#submitRole').on('click', function (e) {
        	if(p==0){
	        	var roles=[];
	        	$('#rightbox > a').each(function(){
	        		var id2=$(this).attr('id');
	        		roles.push(id2);
	        	  });
	        	p=1;
	        	$('#loadAlert').show();
	        	var str=roles.join(',');
	        	$.post("${contextPath}/user/updateUserRole",{userId:userId,roleIds:str},function(result){
	        		p=0;
	        		$('#loadAlert').hide();
	        		$("#modal-container-152137").modal("hide");
	        		if(result.state==200){
	        			roleIds[userId]=result.info;
	        			alert("保存成功！");
	        		}else{
	        			alert("保存失败！");
	        		}
	        		//clearInterval(intv);
	        		
	    		  },"json");
        	}
    	});
        
	};
	function updateBar(){
		if(p<95){
			p+=5
			$('#pbar').css('width',p+"%");
		}
		
	}
	function editUserRoles(uid,uname){
		userId=uid;
		var roles=roleIds[userId];
		$('#leftbox > a').show();
		$('#rightbox').children().remove();
		for(var i=0;i<roles.length;i++){
			var id="#"+roles[i];
			$(id).clone().appendTo("#rightbox");
			$('#leftbox').children(id).hide();
		}
		reRegClick();
		$('#myModalLabel').text('为【'+uname+'】选择角色');
		$("#modal-container-152137").modal();
	}
	function reRegClick(){
		$('#rightbox > a').on('click', function (e) {
	    	var id="#"+$(this).attr('id');
	    	$('#leftbox').children(id).show();
	    	$('#rightbox').children(id).remove();
		});
	};
	</script>
	
</body>
</html>