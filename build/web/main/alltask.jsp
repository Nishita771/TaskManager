<%-- 
    Document   : alltask
    Created on : Oct 30, 2021, 12:41:42 PM
    Author     : DELL
--%>

<%@page import=" java.util.ArrayList, java.util.List "%>
<%@page  import="javax.servlet.http.HttpSession,todoapp.model.Todo " contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <style>
        body {
            background-color: #f4f4f4;

            .navbar {
                overflow: hidden;
                padding: 10px 10px;
                opacity: 1;
                transition: 0.4s;
                position: fixed;
                width: 100%;
                top: 0;
                z-index: 99;
            }

            .container {
                margin-top: 100px;
            }


            a#logo {
                font-size: 30px;
                font-weight: bold;
                transition: 0.4s;
                color: black;
            }
            #card,.row{
               justify-content: center;
            }
            
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand text-dark" href="<%= request.getContextPath() %>/main/todo.jsp">TaskManagement</a>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="main/create.jsp">Create<span class="sr-only">(current)</span></a>
                    </li>

            </div>
        </nav>
    </header>
    <br>
    <br>
    <br>

    </section>

    <%! 
       String title="";
       String description="";
       
    %>
    <%  
        HttpSession s = request.getSession(); 
        java.util.List<Todo> todos=( java.util.ArrayList ) s.getAttribute("listTodo");       
        for(Todo u : todos)
        {
           title= u.getTitle();
           description = u.getDescription();           
       
     %>


     <div class="row" id="card" style="justify-content: center">
        <div class="col-sm-6">
            <div class="card bg-light" >
                <div class="card-body">
                    <h5 class="card-title"><%= title %></h5>
                    <p class="card-text"><%= description %></p>
                </div>
            </div>
        </div>
    </div>
                <br>
                
                

    <% } %>

</body>

</html>