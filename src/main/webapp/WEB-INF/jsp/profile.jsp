<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<title><s:message code="profile.userDane"/></title>
</head>
<body>
<%@include file="/WEB-INF/incl/menu.app" %>
<div align="center">
	<h2><s:message code="profile.userDane"/></h2>
</div>

<table width="500" border="0" cellpadding="4" cellspacing="1" align="center">

	<tr>
		<td width="130" align="right" >
			<s:message code="register.email"/>
		</td>
		<td width="270" align="left">
			<c:out value="${customer.email }"/>
		</td>
	</tr>
	
	<tr>
		<td width="130" align="right" >
			<s:message code="register.name"/>
		</td>
		<td width="270" align="left">
			<c:out value="${customer.name }"/>
		</td>
	</tr>
	
	<tr>
		<td width="130" align="right" >
			<s:message code="register.lastName"/>
		</td>
		<td width="270" align="left">
			<c:out value="${customer.lastName }"/>
		</td>
	</tr>
	
	<tr>
		<td width="130" align="right" >
			<s:message code="profile.isActive"/>
		</td>
		<td width="270" align="left">
			<c:choose>
				<c:when test="${user.active == 1 }">
					<s:message code="word.yes"/>
				</c:when>
				<c:otherwise>
					<s:message code="word.no"/>
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
	
	<tr>
		<td width="130" align="right" >
			<s:message code="profile.role"/>
		</td>
		<td width="270" align="left">
			<c:choose>
				<c:when test="${user.nrRole == 1 }">
					<s:message code="word.admin"/>
				</c:when>
				<c:otherwise>
					<s:message code="word.customer"/>
				</c:otherwise>
			</c:choose>
		</td>
	</tr>

</table>

<table width="500" border="0" cellpadding="4" cellspacing="1" align="center">

	<tr>
		<td align="center">
			<input type="button" value="<s:message code="button.editProfile"/>"
					onclick="window.location.href='${pageContext.request.contextPath}/editprofile'"/>
		</td>
		<td align="center">
			<input type="button" value="<s:message code="button.zmianaHasla"/>" 
					onclick="window.location.href='${pageContext.request.contextPath}/editpassword'"/>
		</td>
	</tr>
</table>


</body>
</html>