<%--
  Created by IntelliJ IDEA.
  User: hyrt001
  Date: 2015-01-20 
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<!--tree-->
<link href="${basePath}/css/third/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css"/>
<!--pop-up-->
<link href="${basePath}/css/third/jquery-ui.css" rel="stylesheet" type="text/css"/>
<link href="${basePath}/css/third/style.css" rel="stylesheet" type="text/css"/>
<link href="${basePath}/css/third/button.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="${basePath}/js/jquery-1.10.2.js"></script>

<!--dropdown menu-->
<script type="text/javascript">
  $(document).ready(function(){
    $.fn.zTree.init($("#treeDemo"), setting);
    queryResult();
    $("#roleadialog").click(function(){
      $("#roledialog").show();
    });
  });

  function queryResult() {
    var params = $("#queryForm").serialize();
    $.ajax({
      url: "${basePath}/role/list",
      type: 'post',
      dataType: 'html',
      data: params,
      error: function () {
        alert('error');
      },
      success: function (data) {
        $("#queryResult").html(data);
      }
    });

  }
  var setting = {
    check: {
      enable: true
    },
    data: {
      simpleData: {
        enable: true,
        idKey: "id",
        pIdKey: "pid",
        rootPId: 0
      }
    },
    async: {
      enable: true,
      dataType: "json",
      type: "post",
      url: "${basePath}/menu/list"
    }
  };


</script>

<!--tree-->
<script type="text/javascript" src="${basePath}/js/third/jquery.ztree.all-3.5.min.js"></script>

<!--pop-up-->
<script type="text/javascript" src="${basePath}/js/third/jquery-ui.js"></script>
<script type="text/javascript" src="${basePath}/js/third/jquery.validate.js"></script>
<script type="text/javascript" src="${basePath}/js/third/pop.js"></script>
</head>

<body>
<div class="f_button_group" style="margin-top:30px;">
  <a style="cursor:pointer;" id="roleadialog">添加角色</a>
</div>
<div style="display:none;">
  <form method="get" action="#" class="pub_form2" style=" margin-top:20px; margin-bottom:20px; margin-left:20px;"id="queryForm">
    <input type="hidden" name="pageNo" id="pageNo"/>
  </form>
</div>

  <div id="roledialog" style="display:none;">
    <form method="get" action="#" id="queryForm1" name="queryForm1">
      <input type="hidden" id="menuid" name="menuid">
      <input type="hidden" id="roleFunction" name="roleFunction">
      <div class="pop_div1">
        <label>角色名称<i style="color:red;font-style: normal">*</i>：</label>
        <input type="text" class="form-control pub_input1" id="addRoleName" name="roleName" maxLength="10"/>
      </div>
      <div class="pop_div1">
        <label>角色描述：</label>
        <input type="text" class="form-control pub_input1" name="roleDesc"/>
      </div>
      <div class="clear"></div>
      <div style="width:700px; margin-top:16px;">
        <label style="width:100px; text-align: right; float: left; line-height: 32px;">功能权限：</label>
        <div class="system_div" style="float: left;">
          <ul id="treeDemo" class="ztree"></ul>
        </div>
      </div>

    </form>
  </div>


<div id="queryResult">
</div>
</body>
</html>
