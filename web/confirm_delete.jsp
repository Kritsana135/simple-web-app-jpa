<%-- 
    Document   : confirm_delete
    Created on : Feb 14, 2021, 10:07:30 AM
    Author     : kritsana135
--%>

<%@page import="model.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Remove Employee</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <!--Custom CSS--> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    </head>
    <body>
        <%
            Employee emp = (Employee) session.getAttribute("DeleteEmployee");
        %>
        <div class="center">
            <div class="card">
                <div class="card-body">
                    ID    : <%= emp.getId()%> </br>
                    Name  : <%= emp.getName()%> </br>
                    Salary: <%= emp.getSalary()%> </br>
                </div>
            </div>
            <form class="bet" name="confirmDelete" action="ConfirmDeleteController">
                <input type="submit" class="btn btn-primary" value="Delete" name="delete" />
                <input type="submit" class="btn btn-danger" value="Cancel" name="cancel" />
            </form>
        </div>
    </body>
</html>
