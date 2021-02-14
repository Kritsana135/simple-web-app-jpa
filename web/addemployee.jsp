<%-- 
    Document   : addemployee
    Created on : Feb 12, 2021, 1:43:59 PM
    Author     : kritsana135
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.EmployeeTable" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <!--Custom CSS--> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    </head>
    <body>
        <div class="center">
            <h1>Add Employee</h1>
            <form name="addEmployee" action="AddEmployeeController" method="POST">
                <div class="mb-3">
                    <label for="id" class="form-label">ID</label>
                    <input type="number" class="form-control" name="id" id="id">
                </div>
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" id="name">
                </div>
                <div class="mb-3">
                    <label for="salary" class="form-label">Salary</label>
                    <input type="number" class="form-control" name="salary" id="salary">
                </div>
                <button type="submit" class="btn btn-primary">Add</button>
            </form>
            or </br>
            <a href="./index.jsp">
                <button type="button" class="btn btn-danger bet">
                    Return to Menu
                </button>
            </a>
        </div>
    </body>
</html>
