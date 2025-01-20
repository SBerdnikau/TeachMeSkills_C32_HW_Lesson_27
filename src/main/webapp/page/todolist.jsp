<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.teachmeskills.lesson_27.repository.ToDoRepository" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Todo-list</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/todolist-style.css">
</head>
<body>
<header class="header">
    <p class="header-text">Welcome, dear <span class="red-span">${sessionScope["username"]}</span></p>
    <div class="logout-button">
        <form action="logout" method="get">
            <button id="logoutButton" >Logout</button>
        </form>
    </div>
</header>
<main class="main-wrapper">

    <h2 class="main-header">My Todo <span class="red-span">LIST</span>!</h2>

    <section class="todo-table">
        <div class="table">
            <div class='row'>
                <div class="header-cell">Description</div>
            </div>

        <div class='row'>
            <% for(String task : ToDoRepository.getTodoList()){
                out.println("<div class='cell'>" +   task  + "</div>");
            }
            %>
        </div>
        </div>
    </section>

</main>
<footer>
    <p>&copy; 2025 Copyright</p>
    <p class="author">Developer by berdnikausiarhei@gmail.by</p>
</footer>

<%--<script>--%>
<%--    const urlParams = new URLSearchParams(window.location.search);--%>
<%--    document.getElementById('logoutButton').addEventListener('click', function() {--%>
<%--        fetch('logout', { method: 'POST' })--%>
<%--            .then(response => {--%>
<%--                if (response.ok) {--%>
<%--                    window.location.href = 'login.html';--%>
<%--                }--%>
<%--            })--%>
<%--            .catch(error => console.error('Error:', error));--%>
<%--    });--%>
<%--</script>--%>

</body>
</html>