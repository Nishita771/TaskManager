<%-- 
    Document   : todo
    Created on : Oct 30, 2021, 9:15:51 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TODO Page</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
        integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

    <style>
        body {
            background-image: url("https://steemitimages.com/DQmUHicihmPz2m8pfewd2LEMs2aoLLB2SWr5G3BBdsn48dx/1.png");
            background-repeat: no-repeat;

            background-size: cover;
        }

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


        @media screen and (max-width: 580px) {
            #navbar {
                padding: 20px 10px !important;
            }

            #navbar a {
                float: none;
                display: block;
                text-align: left;
            }

            #navbar-right {
                float: none;
            }
        }

        a#logo {
            font-size: 30px;
            font-weight: bold;
            transition: 0.4s;
            color: black;
        }

        @media screen and (max-width: 580px) {
            .navbar {
                padding: 20px 10px !important;
            }

            .navbar a {
                float: none;
                display: block;
                text-align: left;
            }
        }
    </style>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand text-dark" href="#">TaskManagement</a>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=request.getContextPath()%>/main/create.jsp">Create<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="<%=request.getContextPath()%>/TodoController">AllTask<span
                                class="sr-only">(current)</span></a>
                    </li>

            </div>
        </nav>
    </header>
    <section>
        <div class="container">
            <h1>Create a Todo</h1>
            <p>Create as many task as you want...</p>
            <h1>View task</h1>
            <p>View task that you added...</p>
        </div>
    </section>


</body>

</html>