<!doctype html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<header >
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark header p-3">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/user/">Contact Manager</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
                </li>
                <li class="nav-item active">
                    <a  class="nav-link" href="${pageContext.request.contextPath}/contacts">My contacts</a>
                </li>
                <li>
                    <a class="nav-link" href="${pageContext.request.contextPath}/user/${user.id}"></a>
                </li>
            </ul>
            <form:form  method="post" action="/logout">
                <button  class="nav-link bg-dark border-0 text-light" type="submit">
                    Logout
                </button>
            </form:form>
        </div>
    </nav>
</header>

</html>