<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/11/2023
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="d-flex justify-content-xl-between align-items-center m-4">
    <h1 class="text-primary ">Expense Details</h1>
    <a class="m-4 me-5" href="/expense">Go back</a>
</div>
<div>
    <p class="m-4">Expense Name: <c:out value="${travel.expenseName}"/></p>
    <p class="m-4">Expense Description: <c:out value="${travel.description}"/></p>
    <p class="m-4">Expense Vendor: <c:out value="${travel.vendor}"/></p>
    <p class="m-4">Amount Spend: $<c:out value="${travel.amount}"/></p>
</div>
</body>
</html>
