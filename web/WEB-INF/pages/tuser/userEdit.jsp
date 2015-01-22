<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglibs.jsp"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Free HTML5 Bootstrap Admin Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Muhammad Usman">

<style type="text/css">
		body {
			color: #000;
			font-size: 12px;
			font-family: "Helvetica Neue",Helvetica,STheiti,宋体,微软雅黑,Arial,Tahoma,sans-serif,serif;
			height:100%;
			margin-right:20px;
			padding-bottom: 0px;
		}
		.height2 {
			height:100%;
		}
		.form-horizontal .w2{
		width: 90%;
	  } 
.tree {
    min-height:20px;
    padding:19px;
    margin-bottom:20px;
    background-color:#fbfbfb;
    border:1px solid #999;
    -webkit-border-radius:4px;
    -moz-border-radius:4px;
    border-radius:4px;
    -webkit-box-shadow:inset 0 1px 1px rgba(0, 0, 0, 0.05);
    -moz-box-shadow:inset 0 1px 1px rgba(0, 0, 0, 0.05);
    box-shadow:inset 0 1px 1px rgba(0, 0, 0, 0.05)
}
.tree li {
    list-style-type:none;
    margin:0;
    padding:10px 5px 0 5px;
    position:relative
}
.tree li::before, .tree li::after {
    content:'';
    left:-20px;
    position:absolute;
    right:auto
}
.tree li::before {
    border-left:1px solid #999;
    bottom:50px;
    height:100%;
    top:0;
    width:1px
}
.tree li::after {
    border-top:1px solid #999;
    height:20px;
    top:25px;
    width:25px
}

.tree li span{
    -moz-border-radius:5px;
    -webkit-border-radius:5px;
    border:1px solid #999;
    border-radius:5px;
    display:inline-block;
    padding:3px 8px;
    text-decoration:none
}
.tree li span button{
	height:25px
}
.tree li span a{
	height:15px
}
/*by http://www.hellocsharp.com */
.tree li.parent_li>span {
    cursor:pointer
}
.tree>ul>li::before, .tree>ul>li::after {
    border:0
}
.tree li:last-child::before {
    height:30px
}
.tree li.parent_li>span>span:hover, .tree li.parent_li>span>span:hover+ul li span span {
    background:#eee;
    border:1px solid #94a0b4;
    color:#000
}
.divHeight {
    height:00%px;
    overflow-y:auto;
}
  .modelWidth{
	right: 100px;
	left:100px;
	width:auto;
	margin: -350px 0 0 0;
}
	</style>
</head>

<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div id="content" class="span12">
				<div class="row-fluid sortable">
					<div class="box span12">
						<div class="box-header well" data-original-title>
							<h2>
								<i class="icon-edit"></i>用户信息
							</h2>
						</div>
						<div class="box-content">
							<form:form id="form" class="form-horizontal" method="post"
                                   action="${contextPath}/user/save" modelAttribute="user">
                                   <form:hidden path="userId"/>
								<fieldset>
									<div class="control-group">
										<label class="control-label" for="focusedInput">员工姓名：</label>
										<div class="controls">
										<form:input path="employeeId" class="input-xlarge focused"/>
                                        <form:errors path="employeeId" cssClass="alert alert-error" element="span"  /></div>
									</div>
									<div class="control-group">
										<label class="control-label">所属组织机构：</label>
										<div class="controls">
											<form:errors path="functionOrgName" cssClass="alert alert-error" element="span"/>
										<form:input path="functionOrgName" readonly="true" class="input-xlarge focused" id="functionOrgName" type="text" placeholder="请选择组织机构"/><a id="modal-152137" href="#modal-container-152137" class="btn btn-primary" data-toggle="modal"><i class="icon-plus-sign icon-white"></i> 选择组织机构</a>
										</div>

									</div>
									<div class="control-group">
										<label class="control-label" for="focusedInput">登录帐号：</label>
										<div class="controls">
											<form:input path="userName" class="input-xlarge focused" placeholder="请输入登录帐号"/>
                                        <form:errors path="userName" cssClass="alert alert-error" element="span"  />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="focusedInput">登录密码：</label>
										<div class="controls">
										<form:input path="userPassword" class="input-xlarge focused" placeholder="请输入密码"/>
                                        <form:errors path="userPassword" cssClass="alert alert-error" element="span"  />
										</div>
									</div>
									<div class="control-group">
									<label class="control-label" for="optionsCheckbox2">启用：</label>
									<div class="controls">
									  <label class="checkbox">
										<form:checkbox path="isOk" checked="checked" value="1"/>
										勾选以启用
									  </label>
									</div>
								  </div>
									<div class="form-actions">
										<button type="submit" class="btn btn-success">
											<i class="icon-ok icon-white"></i> 保存
										</button>
										<button class="btn btn-danger">
											<i class="icon-remove icon-white"></i> 取消
										</button>
									</div>
								</fieldset>

								<div id="modal-container-152137" class="modal hide fade" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
										<h3 id="myModalLabel">添加用户</h3>
									</div>
									<div class="modal-body">
										<div class="tree well">
											<ul>
												<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-folder-open"></i> Parent</span>
													<ul>
														<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-minus-sign"></i> Child</span>
															<ul>
																<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span></li>
															</ul></li>
														<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-minus-sign"></i> Child</span>
															<ul>
																<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span></li>
																<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-minus-sign"></i> Grand Child</span>
																	<ul>
																		<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-minus-sign"></i> Great Grand Child</span>
																			<ul>
																				<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Great great Grand Child</span></li>
																				<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Great great Grand Child</span></li>
																			</ul></li>
																		<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Great Grand Child</span></li>
																		<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Great Grand Child</span></li>
																	</ul></li>
																<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Grand Child</span></li>
															</ul></li>
													</ul></li>
												<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-folder-open"></i> Parent2</span>
													<ul>
														<li><input name="orgUnit" type="radio" value="" /><span><i class="glyphicon glyphicon-leaf"></i> Child</span></li>
													</ul></li>
											</ul>
										</div>
									</div>
									<div class="modal-footer">
										<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
										<button class="btn btn-primary">保存设置</button>
									</div>
								</div>
							</form:form>

						</div>
					</div>
					<!--/span-->

				</div>
				<!--/row-->
			</div>
		</div>
		<!--/row-->
	</div>
	<script type="text/javascript">
	function selectFunctionRight(name,id){
		$('#functionRightName').val(name);
		$('#funId').val(id);
	}
	
	window.onload=function (){
		  $('.box-content').height($(window).height()-80);
	$(function () {
        $('.tree li:has(ul)').addClass('parent_li').find(' > span').attr('title', '');
        $('.tree li.parent_li > span').on('dblclick', function (e) {
            var children = $(this).parent('li.parent_li').find(' > ul > li');
            if (children.is(":visible")) {
                children.hide('fast');
                $(this).attr('title', 'Expand this branch').find(' > i').addClass('icon-plus-sign').removeClass('icon-minus-sign');
            } else {
                children.show('fast');
                $(this).attr('title', 'Collapse this branch').find(' > i').addClass('icon-minus-sign').removeClass('icon-plus-sign');
            }
            e.stopPropagation();
        });
    });
	};
	</script>
</body>
</html>