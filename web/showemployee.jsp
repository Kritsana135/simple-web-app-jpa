<%-- 
    Document   : showemployee
    Created on : Feb 12, 2021, 1:02:21 PM
    Author     : kritsana135
--%>

<%@page import="java.util.Iterator"%>
<%@page import="model.Employee"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.EmployeeTable" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Show Employee</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

        <!--Custom CSS--> 
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css" />
    </head>
    <body>
        <div class="center">
            <jsp:useBean id="emp" class="model.Employee" scope="request"/> 
            <%
                List<Employee> result = EmployeeTable.findAllEmployee();

                Iterator<Employee> re = result.iterator();
            %>
            <h1>Employee List</h1>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Salary</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (re.hasNext()) {
                            emp = re.next();
                            out.println("<tr>");
                            out.println("<th scope='row'>" + emp.getId() + "</th>");
                            out.println("<td>" + emp.getName() + "</td>");
                            out.println("<td>" + emp.getSalary() + "</td>");
                            out.println("</tr>");
                        }
                    %>
                </tbody>
            </table>
            <a href="./index.jsp">
                <button type="button" class="btn btn-danger bet">
                    Return to Menu
                </button>
            </a>
        </div>
    </body>
</html>
