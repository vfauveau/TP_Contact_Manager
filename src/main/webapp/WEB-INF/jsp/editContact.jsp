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
    <title>Contact Manager | Edit a contact</title>
</head>
<body>
<c:import url="header.jsp"/>

<main class="container-fluid" style="margin-top: 130px">
    <form class="container-fluid d-flex justify-content-center flex-column align-items-center"
          action="${pageContext.request.contextPath}/contacts/edit/${contact.id}" method="post">
        <h1>Edit a contact</h1>
        <div class="form-group col-md-6">
            <label for="inputFirstName">First Name</label>
            <input type="text" class="form-control" id="inputFirstName" placeholder="${contact.firstName}"
                   value="${contact.firstName}" name="firstName">
        </div>
        <div class="form-group col-md-6">
            <label for="inputLastName">Last Name</label>
            <input type="text" class="form-control" id="inputLastName" name="lastName"
                   value="${contact.lastName}">
        </div>

        <div class="form-group col-md-6">
            <label for="inputEmail4">Email</label>
            <input type="email" class="form-control" id="inputEmail4" name="email"
                   value="${contact.email}">
        </div>
        <div class="form-group col-md-6">
            <label for="inputEmail4">Telephone</label>
            <input type="tel" maxlength="10" class="form-control" id="Telephone" name="telephone"
                   value="${contact.telephone}">
        </div>
        <div class="form-group col-md-6">
            <label for="Birthdate">Birthdate</label>
            <input type="date" class="form-control" id="Birthdate"
                   value="${contact.birthdate}">

            <div class="form-group col-md-6">
                <label for="enterprise">Enterprise</label>
                <input type="text" class="form-control" id="enterprise" name="enterprise"
                       value="${contact.enterprise}">
            </div>
            <div class="form-group col-md-6">
                <label for="role">Role</label>
                <input type="text" class="form-control" id="role" name="role"
                       value="${contact.role}">
            </div>
            <div class="form-group col-md-6">
                <label for="Street">Street</label>
                <input type="text" class="form-control" id="Street" placeholder="1234 Main St" name="street"
                       value="${contact.street}">
            </div>
            <div class="form-group col-md-6">
                <label for="streetNumber">Street number</label>
                <input type="number" class="form-control" id="streetNumber" placeholder="streetNumber"
                       name="streetNumber"
                       value="${contact.streetNumber}">
            </div>
            <div class="form-group col-md-6">
                <label for="city">City</label>
                <input type="text" class="form-control" id="city" name="city"
                       value="${contact.city}">
            </div>
            <div class="form-group col-md-6">
                <label for="city">Zipcode</label>
                <input type="text" class="form-control" id="zip" name="zipcode"
                       value="${contact.zipcode}">
            </div>
            <div class="form-group col-md-6">
                <label for="Country">Country</label>
                <input type="text" class="form-control" id="Country" name="country"
                       value="${contact.country}">

                <div class="form-group col-md-6">
                    <label for="Notes">Notes</label>
                    <input type="text" class="form-control" id="Notes" name="notes"
                           value="${contact.notes}">
                </div>

                <button type="submit" class="btn btn-primary">Add a contact</button>
            </div>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</main>
</body>
</html>