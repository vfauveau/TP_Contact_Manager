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
    <h1>Register yourself !</h1>
    <form class="mt-5 w-50" action="${pageContext.request.contextPath}/user/edit/${user.id}" method="post">

        <input type="text" class="form-control" placeholder="First name" name="firstName">

        <input type="text" class="form-control" placeholder="Last name" name="lastName">

        <input type="email" class="form-control" placeholder="email" name="email">
        <input type="password" class="form-control" placeholder="password" name="password">
        <div class="row">
            <div class="col">
                <button type="submit">Submit</button>
            </div>
        </div>
    </form>

</main>
</body>
</html>