<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.teachmeskills.lesson_27.repository.ToDoRepository" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Todo-list</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/todolist-style.css">
</head>

<body>

<header class="container-fluid header-buttons">
    <div class="d-flex justify-content-between">
        <p class="header-text">Welcome, dear <span class="red-span">${sessionScope["username"]}</span></p>
        <form action="logout" method="POST" >
            <button type="submit" class="btn btn-danger button-logout">Logout</button>
        </form>
    </div>
</header>

<main class="container-fluid about-wrapper">

    <h2 class="main-header">My Todo <span class="red-span">LIST</span>!</h2>

    <div class="row">
        <div class="container">
            <hr>
            <div class="container text-left">
                <form action="new-task" method="post">
                    <button class="btn btn-success">Add Todo</button>
                    <input type="text" name="new-task" id="newtask">
                </form>
            </div>
            <br>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <% for (int i = 1; i < ToDoRepository.getTodoList().size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + i + "</td>");
                    out.println("<td>" + ToDoRepository.getTodoList().get(i) + "</td>");
                    out.println("<td class='d-flex'><form><button  class='btn btn-success'>Edit</button></form> &nbsp;&nbsp;&nbsp;&nbsp;");
                    out.println("<form><button  class='btn btn-danger'  >Delete</button></form></td>");
                    out.println(" </tr>");
                }
                %>

                </tbody>

            </table>
        </div>
    </div>


</main>


</body>
</html>