<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="dec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <title><dec:title/></title>
    <!-- The styles -->
    <link href='${contextPath}/charisma/css/bootstrap-cerulean.css' rel="stylesheet">

    
    <link href='${contextPath}/charisma/css/bootstrap-responsive.css' rel="stylesheet">
    <link href='${contextPath}/charisma/css/charisma-app.css' rel="stylesheet">
    <link href='${contextPath}/charisma/css/jquery-ui-1.8.21.custom.css' rel="stylesheet">
    <link href='${contextPath}/charisma/css/fullcalendar.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='${contextPath}/charisma/css/chosen.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/uniform.default.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/colorbox.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/jquery.cleditor.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/jquery.noty.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/noty_theme_default.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/elfinder.min.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/elfinder.theme.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/opa-icons.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/uploadify.css' rel='stylesheet'>


    <link href='${contextPath}/charisma/css/scojs.css' rel='stylesheet'>
    <link href='${contextPath}/charisma/css/sco.message.css' rel='stylesheet'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src='${contextPath}/html5shiv/3.7.2/html5shiv.js'></script>
    <script src='${contextPath}/respond/1.4.2/respond.js'></script>
    <![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href='${contextPath}/charisma/img/favicon.ico'>
    
    <!-- jQuery -->
    <script src='${contextPath}/charisma/js/jquery-1.7.2.min.js'></script>
    <!-- jQuery UI -->
    <script src='${contextPath}/charisma/js/jquery-ui-1.8.21.custom.min.js'></script>
    <!-- transition / effect library -->
    <script src='${contextPath}/charisma/js/bootstrap-transition.js'></script>
    <!-- alert enhancer library -->
    <script src='${contextPath}/charisma/js/bootstrap-alert.js'></script>
    <!-- modal / dialog library -->
    <script src='${contextPath}/resources/charisma/js/bootstrap-modal.js'></script>
    <!-- custom dropdown library -->
    <script src='${contextPath}/charisma/js/bootstrap-dropdown.js'></script>
    <!-- scrolspy library -->
    <script src='${contextPath}/charisma/js/bootstrap-scrollspy.js'></script>
    <!-- library for creating tabs -->
    <script src='${contextPath}/charisma/js/bootstrap-tab.js'></script>
    <!-- library for advanced tooltip -->
    <script src='${contextPath}/charisma/js/bootstrap-tooltip.js'></script>
    <!-- popover effect library -->
    <script src='${contextPath}/charisma/js/bootstrap-popover.js'></script>
    <!-- button enhancer library -->
    <script src='${contextPath}/charisma/js/bootstrap-button.js'></script>
    <!-- accordion library (optional, not used in demo) -->
    <script src='${contextPath}/charisma/js/bootstrap-collapse.js'></script>
    <!-- carousel slideshow library (optional, not used in demo) -->
    <script src='${contextPath}/charisma/js/bootstrap-carousel.js'></script>
    <!-- autocomplete library -->
    <script src='${contextPath}/charisma/js/bootstrap-typeahead.js'></script>
    <!-- tour library -->
    <script src='${contextPath}/charisma/js/bootstrap-tour.js'></script>
    <!-- library for cookie management -->
    <script src='${contextPath}/charisma/js/jquery.cookie.js'></script>
    <!-- calander plugin -->
    <script src='${contextPath}/charisma/js/fullcalendar.min.js'></script>
    <!-- data table plugin -->
    <%-- 	<script src='${contextPath}/resources/charisma/js/jquery.dataTables.js'></script> --%>

    <!-- chart libraries start -->
    <script src='${contextPath}/charisma/js/excanvas.js'></script>
    <script src='${contextPath}/charisma/js/jquery.flot.min.js'></script>
    <script src='${contextPath}/charisma/js/jquery.flot.pie.min.js'></script>
    <script src='${contextPath}/charisma/js/jquery.flot.stack.js'></script>
    <script src='${contextPath}/charisma/js/jquery.flot.resize.min.js'></script>
    <!-- chart libraries end -->

    <!-- select or dropdown enhancer -->
    <script src='${contextPath}/charisma/js/jquery.chosen.min.js'></script>
    <!-- checkbox, radio, and file input styler -->
    <script src='${contextPath}/charisma/js/jquery.uniform.min.js'></script>
    <!-- plugin for gallery image view -->
    <script src='${contextPath}/charisma/js/jquery.colorbox.min.js'></script>
    <!-- rich text editor library -->
    <script src='${contextPath}/charisma/js/jquery.cleditor.min.js'></script>
    <!-- notification plugin -->
    <script src='${contextPath}/charisma/js/jquery.noty.js'></script>
    <!-- file manager library -->
    <script src='${contextPath}/charisma/js/jquery.elfinder.min.js'></script>
    <!-- star rating plugin -->
    <script src='${contextPath}/charisma/js/jquery.raty.min.js'></script>
    <!-- for iOS style toggle switch -->
    <script src='${contextPath}/charisma/js/jquery.iphone.toggle.js'></script>
    <!-- autogrowing textarea plugin -->
    <script src='${contextPath}/charisma/js/jquery.autogrow-textarea.js'></script>
    <!-- multiple file upload plugin -->
    <script src='${contextPath}/charisma/js/jquery.uploadify-3.1.min.js'></script>
    <!-- history.js for cross-browser state change on ajax -->
    <script src='${contextPath}/charisma/js/jquery.history.js'></script>


    <script src='${contextPath}/charisma/js/sco.modal.js'></script>
    <script src='${contextPath}/charisma/js/sco.confirm.js'></script>


    <!-- application script for Charisma demo -->
    <!-- <script src='${contextPath}/charisma/js/charisma.js'></script> -->

    <script src='${contextPath}/js/common/itzy.js'></script>
<%--     <script src='${contextPath}/js/common/datatables.extend.js'></script> --%>
<%--     <script src='${contextPath}/js/home/index.js'></script> --%>
    <script src='${contextPath}/js/common/spin.js'></script>

   <style type="text/css">
        body {
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }
    </style>
    <dec:head/>
</head>
<body>
    <dec:body/>

    
</body>
</html>