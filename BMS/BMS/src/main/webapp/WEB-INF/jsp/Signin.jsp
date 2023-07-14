<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style>
        body{
            /*background-color: chocolate;*/
            background-image: url("../../resource/img/login2.webp");
            background-size: 100% 100%;

            padding: 0;
            margin:0;
        }
        .body{
            display: flex;
            width: 100%;
            height: 100%;
            backdrop-filter: blur(4px);
        }
        .body1{

            margin-top: 6%;
            margin-left: 10%;
            width: 700px;
            height: 600px;
        }
        img{
            margin-left: 35%;
            margin-top: 2%;
            width: 200px;
            height: 200px;
        }
        h1{

            margin-top: 15%;
            width: 300px;
            height: 50px;
            font-size: 60px;
            color: #5bf5e4;
        }
        form{
            color: #3e9a90;
            background-color: white;
            margin-left: 150px;
            margin-top: 160px;
            width: 400px;
            height: 350px;
            border-radius: 10%;
        }
        legend{
            font-size: 30px;
            margin-top: 6%;
            text-align: center;
            color:#29e0ae;
        }
        label{
            margin-left: 70px;
            margin-bottom: 10px;
            margin-top: 10px;
            display:inline-block;
            width: 260px;
            height: 30px;
        }
        .login{
            margin-top: 15px;
            margin-left:100px;
            width: 200px;
            height: 30px;
            border-radius: 20px;
            background-color: #51ccbf;
        }
        .signin{
            margin-top: 15px;
            margin-left:100px;
            width: 200px;
            height: 30px;
            border-radius: 20px;
            background-color: #51ccbf;
        }

    </style>
</head>
<body>
<div class="body">
    <div class="body1"><img src="../../resource/img/loginbook.png">
        <h1>图&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;管&nbsp;&nbsp;&nbsp;&nbsp;理&nbsp;&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;&nbsp;统</h1></div>

    <form action="/Signin" method="post">
        <legend>用户注册</legend>
        <label for="UserName">用 &nbsp;户&nbsp;名:&nbsp;<input type="text" id="userName" name="userName"></label><br>
        <label for="UserPassword">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;<input type="password" id="userPassword" name="userPassword"></label><br>
        <label>
            用户类别:&nbsp;
            <input type="radio" name="radio1" value="0">&nbsp;一般用户
            <input type="radio" name="radio1" value="1">&nbsp;管理员
        </label><br>
        <input class="login" type="submit" value="注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;册"><br>
        <input class="signin" type="button" value="返&nbsp;&nbsp;&nbsp;&nbsp;回&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录" onclick="login()">
    </form>
    <script type="text/javascript">
        function login(){
            window.location.href="login"
        }

    </script>
</div>
</body>
</html>
