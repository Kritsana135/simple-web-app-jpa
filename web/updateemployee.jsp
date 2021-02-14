<%-- 
    Document   : updateemployee
    Created on : Feb 12, 2021, 2:12:00 PM
    Author     : kritsana135
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Employee</title>
        
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <!--Custom CSS--> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    </head>
    <body>
        <div class="center">
            <h1>Update Employee</h1>
            <form method="POST" action="UpdateEmployeeController">
                <div class="mb-3">
                    <label for="id" class="form-label">ID</label>
                    <input type="string" class="form-control" name="id" id="id">
                </div>
                <button type="submit" class="btn btn-primary">Find</button>
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
