<%--
  Created by IntelliJ IDEA.
  User: Dell Latitude E7450
  Date: 6/11/2023
  Time: 1:00 PM
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
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<body>
<h1 class="m-4 text-primary">Save Travels</h1>
<div>
    <table class="table table-striped table-bordered border-dark m-4 ">
        <thead>
        <tr>
            <th>Expense</th>
            <th>Vendor</th>
            <th>Amount</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>


        <c:forEach items="${allTravels}" var="travel">
            <tr>
                <td><a href="/expense/${travel.id}">${travel.expenseName} </a></td>
                <td><c:out value="${travel.vendor}"/> </td>
                <td>$<c:out value="${travel.amount}"/> </td>
                <td class="d-flex justify-content-center align-items-center">
                    <a href="/expense/edit/${travel.id}">Edit</a>
                    <form:form action="/expense/delete/${travel.id}" method="delete">

                        <button class="btn btn-danger ms-4 ">Delete</button>
                    </form:form>
                </td>
            </tr>

        </c:forEach>

        </tbody>
    </table>
</div>
<div>
    <h1 class="m-4 text-primary">Add an expense</h1>
    <div>
        <form:form action="/expense" method="post" modelAttribute="newTravel">
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
    </div>
</div>
</body>
</html>
