<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/11/2023
  Time: 7:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
<div class="d-flex justify-content-xl-between align-items-center m-4">
    <h1 class="text-success">Edit Expense</h1>
    <a class="m-4  me-5" href="/expense">Go back</a>
</div>
<form:form action="/expense/update/${theTravel.id}" method="put" modelAttribute="theTravel">
    <p class="m-4">
        <form:label path="expenseName">Expense</form:label>
        <form:input path="expenseName"></form:input>
        <form:errors path="expenseName"></form:errors>

    </p>
    <p class="m-4">
        <form:label path="vendor">Vendor</form:label>
        <form:input path="vendor"></form:input>
        <form:errors path="vendor"></form:errors>

    </p>
    <p class="m-4">
        <form:label path="amount">Amount</form:label>
        <form:input path="amount"></form:input>
        <form:errors path="amount"></form:errors>

    </p>
    <p class="m-4">
        <form:label path="description">Description</form:label>
        <form:input path="description"></form:input>
        <form:errors path="description"></form:errors>

    </p>
    <button type="submit" class="btn btn-primary m-4">Submit</button>
</form:form>
</body>
</html>
