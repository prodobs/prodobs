<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=us-ascii" />

<title>reservation</title>
<link rel='stylesheet' id='suffusion-google-fonts-css'  href='http://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic' type='text/css' media='all' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.css"  type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/prettify.css" type="text/css" />

</head>

<body>
<form:form action="${pageContext.request.contextPath}/results" method="post" commandName="searchForm">
<%@ include file="../include/header.jsp" %>

<br/>
<br/>
<br/>
<br/>
bla bla
</form:form>
<%@ include file="../include/calendar.htm" %>
</body>
</html>
