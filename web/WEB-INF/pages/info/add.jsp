<%--
  Created by IntelliJ IDEA.
  User: hyrt001
  Date: 2015-01-19 
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <c:set var="ctx" value="${pageContext.request.contextPath}" />
  <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
  <script type="text/javascript" charset="utf-8" src="${ctx}/plugins/ueditor1_4/ueditor.config.js"></script>
  <script type="text/javascript" charset="utf-8" src="${ctx}/plugins/ueditor1_4/ueditor.all.min.js"> </script>
  <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
  <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
  <script type="text/javascript" charset="utf-8" src="${ctx}/plugins/ueditor1_4/lang/zh-cn/zh-cn.js"></script>

  <style type="text/css">
    div{
      width:100%;
    }
  </style>
</head>
<body>
<script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>
<script type="text/javascript">
  var ue = UE.getEditor('editor');
</script>
</body>
</html>
