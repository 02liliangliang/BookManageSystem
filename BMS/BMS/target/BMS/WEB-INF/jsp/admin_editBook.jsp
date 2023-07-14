<%@page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>修改书籍</title>
    <style>
        a{
            text-decoretion:none;
        }
        .user-info {
            height: 60px;
            width: 100%;
            position: absolute;
            top: 0;
            left:0;
            right: 0;
            z-index: 1;
            background-color: #489b91;
            color: black;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .logout{
            width:90px;
            height: 40px;
            margin-top: 1px;
            margin-left: 30px;
            background-color: #14ad9c;
            border-radius: 2px;
            border: 0;
        }
        .user-info h1{
            align-items: center;
            margin-left: 100px;
            /*margin-left:-60px;*/
        }
        .user-info h3{
            margin-top: 25px;
            margin-right: 100px;
        }
        .conBox{
            width: 100%;
            height: 700px;
            position: absolute;
            top: 60px;
            background-color: #f9fcfb;
            top:60px;
            left: 0;
        }

        .showCon h1{
            margin-left: 500px;
            margin-top: 300px;
            font-size: xx-large;
        }
        .editbookCon{
            width:1200px;
            height: 600px;
            background-color: #7eccc3;
            margin-left: 80px;
            margin-top: 30px;
            border-radius: 15px;
        }
        .booklistCon h1, .userlistCon h1,.addbookCon h1,.editbookCon h1,.deletebookCon h1{
            padding-top: 10px;
            text-align: center;
        }
        .booklistCon table,.userlistCon table{
            margin-left: 40px;
        }
        .booklistCon table td,.userlistCon table td{
            width: 180px;
            text-align: center;
        }
        .editbookCon .editbookleft{
            font-size: x-large;
            margin-left: 180px;
        }
        .editbookCon .editbookright{
            font-size: x-large;
            margin-left: 390px;
        }
        .editbookCon #editbookName,.editbookCon #editbookpublisher{
            width: 300px;
            height: 45px;
            border-radius: 10px;
            margin-left: 180px;
        }
        .editbookCon #editbookcategory,.editbookCon #editbookreleaseDate{
            width: 300px;
            height: 45px;
            border-radius: 10px;
            margin-left: 180px;
        }
        .editBookSubmitBtn{
            width: 400px;
            height: 50px;
            background-color:#10a4c2;
            border-radius: 15px;
            margin-top: 40px;
            margin-bottom: 20px;
            margin-left: 400px;
        }
        .editBookResetBtn{
            width: 400px;
            height: 50px;
            background-color:#10a4c2;
            border-radius: 15px;
            margin-left:400px;
        }
    </style>
</head>
<body>
<div class="user-info">
    <button class="logout"><a href="/book/backAdmin">返回首页</a></button>
    <h1>图&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;管&nbsp;&nbsp;&nbsp;&nbsp;理&nbsp;&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;&nbsp;统</h1>
    <h3>当前用户为:${username}</h3>
</div>
<div class="conBox" >
    <div class="editbook" id="datebook2" style=" width: 88%;height: 100%;position: absolute;left:5%;display: block">
        <form action="/book/book_edit?bookId=${editbook.bookId}" method="post" class="editbookCon">
            <h1>修&nbsp;&nbsp;&nbsp;&nbsp;改&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;籍</h1>
            <label for="editbookName"class="editbookleft">书籍名称:</label>
            <label for="editbookpublisher" class="editbookright">书籍出版社:</label><br><br>
            <input type="text" id="editbookName" name="bookName" required="required" value="${editbook.bookName}"/>
            <input type="text" id="editbookpublisher" name="bookCbs" required="required" value="${editbook.bookCbs}"/><br><br>
            <label for="editbookcategory" class="editbookleft">书籍发行时间:</label>
            <label for="editbookreleaseDate" class="editbookright">书籍类别:</label><br><br>
            <input id="editbookcategory" type="text" name="bookSort" required="required" value="${editbook.bookData}"/>
            <input type="text" id="editbookreleaseDate" name="bookData" required="required" value="${editbook.bookSort}"/><br><br>
            <button type="submit"  class="editBookSubmitBtn" value="保存信息" onclick="saveBook()">保存信息</button><br>
            <button  type="reset" value="重置按钮" class="editBookResetBtn">重置信息</button>
        </form>
        <div id="successMessage" style="display:none; position: absolute; top: 26%; left: 45%;background-color: #f9fcfb;align-items: center;padding-left: 15px;border-radius: 10px;">
            <h1>保存成功！</h1>
        </div>
        <script>
            function saveBook() {
                // 显示保存成功的提示框
                var successMessage = document.getElementById("successMessage");
                successMessage.style.display = "block";
            }
        </script>
    </div>
</div>
</body>
</html>
