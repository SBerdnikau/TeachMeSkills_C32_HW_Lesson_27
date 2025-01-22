<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Todo-list</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/todolist.css">
    <style>
        <%@include file="/css/style.css"%>
        <%@include file="/css/todolist.css"%>
    </style>
</head>

<body>

<header class="header-wrapper">
    <p class="header-text">Welcome, dear <span class="red-span">${sessionScope["username"]}</span></p>
    <div id="header-buttons">
        <form action="about" method="GET">
            <button type="submit" class="button button-about">About me</button>
        </form>
        <form action="logout" method="POST" >
            <button type="submit" class="button button-logout">Logout</button>
        </form>
    </div>
</header>

<main class="main-wrapper">

    <h2 class="main-header">My Todo <span class="red-span">LIST</span>!</h2>

    <div class="wrapper-center">
        <form action="" method="post">
            <input type="text" name="newTask" id="new-task" placeholder="New task" required>
            <button class="button button-add" type="button">Add</button>
        </form>
    </div>

    <div class="wrapper-center">
        <table class="todo-list">
            <tr class="todo-row">
                <td class="todo-number">1</td>
                <td class="todo-text">Learn Java Core</td>
                <td class="todo-buttons">
                    <form action="" method="post">
                        <button type="button" class="button button-delete">Delete</button>
                    </form>
                </td>
            </tr>
            <tr class="todo-row">
                <td class="todo-number">2</td>
                <td class="todo-text">Learn Hibernate</td>
                <td class="todo-buttons">
                    <form action="" method="post">
                        <button type="button" class="button button-delete">Delete</button>
                    </form>
                </td>
            </tr>
            <tr class="todo-row">
                <td class="todo-number">3</td>
                <td class="todo-text">Learn Spring Framework</td>
                <td class="todo-buttons">
                    <form action="" method="post">
                        <button type="button" class="button button-delete">Delete</button>
                    </form>
                </td>
            </tr>
        </table>
    </div>

</main>

</body>
</html>