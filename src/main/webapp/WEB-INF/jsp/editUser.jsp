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
    <title>Register</title>
</head>
<body>
<c:import url="header.jsp"/>

<main class="container">
    <h1>Edit user infos</h1>
    <form class="mt-5 w-50" action="${pageContext.request.contextPath}/user/edit/${user.id}" method="post">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="firstName">First Name</label>
                <input type="text" class="form-control" id="firstName" placeholder="${user.firstName}" value="${user.firstName}" name="firstName">
            </div>
            <div class="form-group col-md-6">
                <label for="lastName">Last Name</label>
                <input type="text" class="form-control" id="lastName" placeholder="${user.lastName}" value="${user.lastName}" name="lastName">
            </div>
        </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Email</label>
                    <input type="email" class="form-control" id="inputEmail4" placeholder="Email" value="${user.email}" name="email">
                </div>
                <div class="form-group col-md-6">
                    <label for="inputPassword4">Password</label>
                    <input type="password" class="form-control" id="inputPassword4" placeholder="Password" value="${user.password}" name="password">
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="birthdate">Birthdate</label>
                    <input type="date" name="birthdate" id="birthdate" value="${user.birthdate}">
                </div>
                <div class="form-group col-md-2">
                    <label for="pictureUrl">Profile picture</label>
                    <input type="text" class="form-control" id="pictureUrl" name="pictureUrl" value="${user.pictureUrl}">
                </div>

                <div class="form-group col-md-2">
                    <label for="phone">Phone number</label>
                    <input type="text" class="form-control" id="phone" name="phoneNumber" placeholder="${user.phoneNumber}" value="${user.phoneNumber}">
                </div>
            </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit" class="btn btn-primary">Edit infos !</button>
        </form>

</main>
</body>
</html>