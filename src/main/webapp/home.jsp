<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>My TODO List</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div class="row">
        <div class="navbar navbar-inverse">
            <div class="container">
                <div class="navbar-header">
                    <div class="navbar-brand">MyTasks</div>
                </div>
            </div>
        </div>

        <h1>My ToDo List</h1>

        <hr />

        <form action="list" method="post">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Complete</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${sessionScope.keySet()}" var="item">
                    <tr>
                        <td><c:out value="${item}"/></td>
                        <td><c:out value="${sessionScope.get(item)}"/></td>
                        <td><input type="radio" name="complete" value="${item}"></td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <button type="submit" class="btn btn-primary">Update Task</button>
        </form>

        <hr />

        <form action="list" method="post" class="form-horizontal">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                        <h4>Task Name</h4>
                        <h4>Task Category</h4>
                    </div>

                    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                        <input type="text" placeholder="Enter name" name="name">
                        <br />
                        <input type="text" placeholder="Enter category" name="category">
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Add Tasks</button>
        </form>
    </div>
</div>


<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>


