<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<c:set var="baseURL" value="${pageContext.request.contextPath}"/>
<html>
<head>
</head>
<body>
<div class="well addEvent">
    <form:form method="post" action="${baseURL}/events/add" modelAttribute="event" cssClass="form"
               enctype="multipart/form-data">
        <div class="control-group">
            <div class="controls">
                <form:input path="tittle" placeholder="назва" cssClass="input-xlarge"/>
                <form:errors path="tittle"/>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <form:input path="address" placeholder="Адреса подію" cssClass="input-xlarge"/>
                <form:errors path="address"/>
            </div>
        </div>
        <!--DATEPICKER-->
        <div class="input-append date">
            <form:input path="dateStart" cssClass="span2"/>
            <span class="add-on"><i class="icon-th"></i></span>
            <form:errors path="dateStart"/>
        </div>

        <div class="input-append bootstrap-timepicker">
            <form:input path="timeStart" id="timepick" cssClass="input-small"/>
            <span class="add-on"><i class="icon-time"></i></span>
            <form:errors path="timeStart"/>
        </div>

        <div class="control-group">
            <div class="controls">
                <form:input type="file" path="file" id="file" accept="image/*"/>
                <form:errors path="file"/>
            </div>
        </div>
        <div class="input">
            <form:textarea path="description" cssClass="input-xlarge" id="textarea" rows="3" placeholder="опис події"/>
            <form:errors path="description"/>
        </div>
        <form:textarea path="text" id="editorEvents"/>
        <form:errors path="text"/>
        <br/>
        <input type="submit" class="btn btn-info" value="зберегти">
    </form:form>
</div>
</body>
</html> 
