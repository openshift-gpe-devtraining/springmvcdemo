<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<META http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title>List Accounts</title>
	<link rel="stylesheet" href="<c:url value="/resources/blueprint/screen.css" />" type="text/css" media="screen, projection">
	<link rel="stylesheet" href="<c:url value="/resources/blueprint/print.css" />" type="text/css" media="print">
	<!--[if lt IE 8]>
		<link rel="stylesheet" href="<c:url value="/resources/blueprint/ie.css" />" type="text/css" media="screen, projection">
	<![endif]-->
</head>	

<%
	String contextPath = request.getContextPath();
%>

<body>
<div class="container">
	<h1>
		List Accounts
	</h1>

<hr>
<br>

    <table>
	<tr>
		<th>Name</th>
		<th>Balance</th>
		<th>Equity Allocation</th>
		<th>Renewal Date</th>
	</tr>

        <c:forEach var="entry" items="${accounts}">	  
          <tr>
          	<td>${entry.value.name}</td>
          	<td>${entry.value.balance}</td>
          	<td><fmt:formatNumber value="${entry.value.equityAllocation}" type="PERCENT" /></td>
          	<td><fmt:formatDate value="${entry.value.renewalDate}" pattern="MM/dd/yyyy" /></td>
          </tr>
        </c:forEach>
    </table>

	<hr>	
	<ul>
		<li> <a href="<%= contextPath %>/index.jsp">Home</a> | <a href="<%= contextPath %>/account/list">List Accounts</a> | <a href="<%= contextPath %>/account">Create Account</a> </li>
	</ul>	
</div>
</body>
</html>
