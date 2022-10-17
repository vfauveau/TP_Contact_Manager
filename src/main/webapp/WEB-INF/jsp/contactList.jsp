<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
    <title>Homepage</title>
</head>
<body>
<c:import url="header.jsp"/>
<main class="container" style="margin-top: 130px">


    <form class="d-flex my-3" action="/contacts" method="get">
        Super barre de recherche par nom/prénom :
        <input type="search" name="search">
        <input type="submit">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">First</th>
            <th scope="col">Last</th>
            <th scope="col">Telephone</th>
            <th scope="col">Email</th>
            <th scope="col">Adress</th>
            <th scope="col">Enterprise</th>
            <th scope="col">Role</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${contacts}" var="contact">
            <tr>
                <th scope="row">${contact.id}</th>
                <td>${contact.firstName}</td>
                <td>${contact.lastName}</td>
                <td>${contact.telephone}</td>
                <td>${contact.email}</td>
                <td>${contact.streetNumber} ${contact.street}</td>
                <td>${contact.enterprise}</td>
                <td>${contact.role}</td>
                <td>
                    <form action="${pageContext.request.contextPath}/contacts/edit/${contact.id}" method="get">
                        <button class="btn btn-dark" type="submit">Show contact</button>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </td>

                <td>
                    <form action="${pageContext.request.contextPath}/contacts/delete/${contact.id}" method="post">
                        <button class="btn btn-danger" type="submit">Delete contact</button>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a class="btn btn-success mb-2" href="/contacts/add">Add a contact</a>

</main>
</body>
</html>