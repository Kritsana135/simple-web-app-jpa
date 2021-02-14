<%-- 
    Document   : confirm_update
    Created on : Feb 13, 2021, 11:23:33 PM
    Author     : kritsana135
--%>

<%@page import="model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Update</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <!--Custom CSS--> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    </head>
    <body>
        <%Employee emp = (Employee) session.getAttribute("Employee"); %>
        <div class="center">
            <h1>Update Employee ID <% out.print(emp.getId()); %></h1>
            <form name="updateEmployee" action="ConfirmUpdateControler" method="POST">
                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input type="text" class="form-control" name="name" id="name"
                           value="<% out.print(emp.getName()); %>">
                </div>
                <div class="mb-3">
                    <label for="salary" class="form-label">Salary</label>
                    <input type="number" class="form-control" name="salary" id="salary"
                           value="<% out.print(emp.getSalary());%>">
                </div>
                <input type="submit" class="btn btn-primary" value="Update" name="update" />
                <input type="submit" class="btn btn-danger" value="Cancel" name="cancel" />
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
