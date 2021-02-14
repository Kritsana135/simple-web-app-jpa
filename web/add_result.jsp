<%-- 
    Document   : add_result
    Created on : Feb 13, 2021, 9:21:39 PM
    Author     : kritsana135
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>

        <!--Bootstrap CSS--> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <!--Custom CSS--> 
        <!--<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />-->
    </head>
    <body>
        <%
            out.println("<div class='alt'>");
            out.println("<div class='alert alert-success alert-dismissible fade show alert-p' role='alert'>");
            out.println(request.getAttribute("message"));
            out.println("</div>");
            out.println("</div>");
        %>
        <jsp:include page="showemployee.jsp" flush="true"/>
    </body>
</html>
