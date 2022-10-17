<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../resources/404.css">
    <script
            src="https://code.jquery.com/jquery-3.6.1.min.js"
            integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
            crossorigin="anonymous"></script>
    <title>Contact Manager | 404</title>
</head>
<body>
<c:import url="header.jsp"/>
<div class="ag-page-404">
    <div class="ag-toaster-wrap">
        <div class="ag-toaster">
            <div class="ag-toaster_back"></div>
            <div class="ag-toaster_front">
                <div class="js-toaster_lever ag-toaster_lever"></div>
            </div>
            <div class="ag-toaster_toast-handler">
                <div class="js-toaster_toast ag-toaster_toast js-ag-hide"></div>
            </div>
        </div>

        <canvas id="canvas-404" class="ag-canvas-404"></canvas>
        <img class="ag-canvas-404_img" src="https://raw.githubusercontent.com/SochavaAG/example-mycode/master/pens/404-error-smoke-from-toaster/images/smoke.png">
    </div>
</div>
<script type="text/javascript" src="../../resources/index.js"></script>
</body>
</html>