<%@ page language="java"  pageEncoding="UTF-8"%>
<%@include file="../util/Library.jsp"%>
<html>
  <head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <title>中票盟</title>
	<%@ include file="../util/pageLayout.jsp" %>
	    <style type="text/css">
      .content form{padding-top: 15px;height: 100px;}
      .dialog{display:none;}
    </style>
  </head>
  <body id="note">
  <div class="content">
    <form action="${contextPath}/tuser/list.do" method="post">
        <label>姓名：
        <input type="text" name="userName" /></label>
        <button type="submit" class="btn-query">查 询</button>
      </p>
    </form>
     <button class="btn-add">添加</button>
    <table>
      <tr class="gray">
            <th><input type="checkbox"/>全选</th>
            <th >用户名</th>
            <th >姓名</th>
            <th >电话号码</th>
            <th >邮件</th>
            <th >操作</th>
        </tr>
        <c:forEach items="${pageUtil.results}" var="item">
            <tr>
                <td><input type="checkbox" name="scenicspotId" value="${item.userId}"/></td>
                <td>${item.userName}</td>
                <td>${item.nameCn}</td>
                <td>${item.phoneNo}</td>
                <td>${item.email}</td>
                <td>
                 <a href="${contextPath}/scenicSpot/update?scenicspotId=${item.userId}" target="_self">修改</a>
                </td>
            </tr>
        </c:forEach>
    </table>
  </div>
  <%@ include file="/WEB-INF/pages/util/Page.jspf" %>
  <div class="dialog">
    <form id="badEquipmentModelFormId" action="/ticketingB2B/equipmentManager/operateBadTerminalEquipment" >
			<table>
				<tr>
					<td class="title">姓名：</td>
					<td><input type="text" id="equipment_idNOd" value=""  name="equipment_idNOd"/></td>
				</tr>
			</table>
		</form>
  </div>
  <script type="text/javascript">
  $(function(){
	    $('.selectui').SelectUI();    
	        var $doc,html = '';     
	        if(window.location!=window.parent.location){    
	            $doc=window.parent.jQuery.noConflict();     
	        }else{    
	            $doc=jQuery.noConflict();     
	        }     
	     $doc("body").append('<div id="dialog" title="新增"></div>');     
	     var dialog=$doc("#dialog"); 
	     html = $('.dialog').html();    
	     $('.btn-add').click(function(event) {
	       dialog.html(html); 
	       $doc('.selectui').SelectUI();      
	        dialog.dialog({ 
	           width: 430,height:404,minHeight:404,minWidth:430, bgiframe: true ,modal: true,title:"新增", 
	           buttons: { "保存": function() {    
	        	 var form = $doc('#equipmentModelFormId');
	              var fields =form.serializeArray();
	        	   
	           	$.ajax({type:"post",
					url:form.attr('action'),
					data:fields,
					cache: true,
					dataType:"json"				
				}).done(function(data) {
					alert(data.msg);
					if(data.isSuccess) {
					}
				});

	        	   
	             dialog.dialog("close");
				//location.reload();
	             //location.href='${contextPath}/equipmentManager/queryEquipmentModels';

	        }}
	        
	       });    
	     });  
	        
	  });
   </script>
  </body>
</html>
