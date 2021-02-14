<%-- 
    Document   : index
    Created on : Feb 12, 2021, 1:40:11 PM
    Author     : kritsana135
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Employee Web App</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

         <!--Custom CSS--> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    </head>
    <body>
        <div class="center">
            <div class="list-group">
                <a href="showemployee.jsp" class="list-group-item list-group-item-action">
                    Show all employee
                </a>
                <a href="addemployee.jsp" class="list-group-item list-group-item-action">
                    Add employee
                </a>
                <a href="deleteemployee.jsp" class="list-group-item list-group-item-action">
                    Remove employee
                </a>
                <a href="updateemployee.jsp" class="list-group-item list-group-item-action">
                    Update employee
                </a>
            </div>
        </div>
    </body>
</html>

