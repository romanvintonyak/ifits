<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Інформаційний портал IFITS</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <c:set var="baseURL" value="${pageContext.request.contextPath}"/>
    <script type="text/javascript" src="${baseURL}/resources/js/jquery.tools.min.js"></script>
    <link href="${baseURL}/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="${baseURL}/resources/bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="${baseURL}/resources/css/mycss.css" rel="stylesheet">
    <script type="text/javascript" src="${baseURL}/resources/bootstrap/js/bootstrap.js"></script>
    <link href="${baseURL}/resources/datepik/datepicker.css" rel="stylesheet" type="text/css" />
    <script src="${baseURL}/resources/datepik/bootstrap-datepicker.js"></script>
    <script src="${baseURL}/resources/js/myjs.js"></script>
    <%--<script src="${baseURL}/resources/js/roma.js"></script>--%>
</head>
<body>
    <tiles:insertAttribute name="menu"/>
<div class="container">
    <tiles:insertAttribute name="slider"/>
    <tiles:insertAttribute name="content"/>

</div>
</body>
</html>