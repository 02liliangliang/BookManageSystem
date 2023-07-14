<%@page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>这是用户页面</title>
    <style>
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
            margin-right: 30px;
        }
        .user-info h1{
            align-items: center;

            margin-left:-60px;
        }
        .user-info h3{
            margin-top: 25px;
            margin-left: 210px;
        }
        ul{
            margin-top: 0px;
            list-style:none;
            width: 100%;
            height: 600px;
            padding: 0;
        }
        li{
            list-style:none;
            width: 100%;
            height: 70px;
            font-size: x-large;
            border-bottom: rgb(131, 131, 131,0.5) 2px solid;
            text-align: center;
            line-height: 70px;
        }
        li:focus{
            background-color:rgba(111, 110, 110, 0.3);
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
        .aside{
            width: 12%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            background-color: #29ae9e;
            z-index: 10;
        }
        .showCon h1{
            margin-left: 500px;
            margin-top: 300px;
            font-size: xx-large;
        }
        .userlistCon,.addbookCon,.deletebookCon{
            width:1200px;
            height: 600px;
            background-color: #7eccc3;
            margin-left: 80px;
            border-radius: 15px;
        }
        .booklistCon,.editbookCon,.messageCon{
            width:1200px;
            height: 600px;
            background-color: #7eccc3;
            margin-top: 22px;
            margin-left: 80px;
            border-radius: 15px;
        }
        .messageCon1{
            width: 90%;
            height: 200px;
            margin-left: 60px;
            border-radius: 15px;
            background-color: #fffefe;
            /*box-shadow: 水平阴影 垂直阴影 */
            /*  模糊距离 阴影尺寸 阴影颜色 内外阴影；*/
            /*box-shadow: 2px 2px 2px 2px black;*/
        }
        .messageCon1 h1{
            text-align: center;
        }
        .messageCon1 h3{
            width: 80%;
            margin-left: 110px;
            margin-top: 10px;
            text-indent:2em;
        }
        .messageCon2{
            width: 90%;
            height: 20px;
            margin-left: 60px;
        }
        .searchdiv{
            height:60px;
        }

        .searchinput{
            width: 200px;
            height: 40px;
            margin-left: 500px;
            border-radius: 10px;
        }
        .searchbutton{
            width: 100px;
            height: 30px;
            margin-top: 5px;
            border-radius: 10px;
            background-color: #1996e5;
            display: inline-block;
        }
        .booklistCon h1, .editbookCon h1{
            margin-left: 50px;
            display: inline-block;
        }
        .addbookCon h1,.deletebookCon h1,.userlistCon  h1{
            padding-top: 10px;
            text-align: center;
        }
        .userlistCon table,.editbookCon table{
            margin-left: 40px;
        }
        .booklistCon table,.editbookCon table{
            margin-left: 40px;
        }

        .booklistCon table td,.userlistCon table td,.editbookCon table td,.editbookCon table td{
            width: 180px;
            text-align: center;
        }

        .addbookCon .addbookleft{
            font-size: x-large;
            margin-left: 180px;
        }
        .addbookCon .addbookright{
            font-size: x-large;
            margin-left: 390px;
        }
        .deletebookCon .deletebookleft{
            font-size: large;
            margin-top: 20px;
            margin-left: 180px;
        }
        .deletebookCon .deletebookright{
            font-size: large;
            margin-top: 20px;
            margin-left: 300px;
        }
        .deletebookCon #deletebookName,.deletebookCon #deletebookpublisher{
            width: 300px;
            height: 40px;
            border-radius: 10px;
            /*margin-top: 30px;*/
            margin-left: 180px;
        }
        .deletebookCon #deletebookcategory,.deletebookCon #deletebookreleaseDate{
            width: 300px;
            height: 40px;
            border-radius: 10px;
            margin-left: 180px;
        }

        /*添加图书样式*/
        .addbookCon #bookName,.addbookCon #publisher{
            width: 300px;
            height: 40px;
            border-radius: 10px;
            margin-top: 10px;
            margin-left: 180px;
        }
        .addbookCon #category,.addbookCon #releaseDate{
            width: 300px;
            height: 40px;
            border-radius: 10px;
            margin-top: 10px;
            margin-left: 180px;
        }
        .deleteBookSubmitBtn{
            width: 400px;
            height: 50px;
            background-color: #2ed0f1;
            border-radius: 15px;
            margin-top:110px;
            margin-left: 400px;
        }
        .addBookSubmitBtn{
            width: 400px;
            height: 50px;
            background-color:#2ed0f1;
            border-radius: 15px;
            margin-top: 40px;
            margin-bottom: 20px;
            margin-left: 400px;
        }
        .addBookResetBtn{
            width: 400px;
            height: 50px;
            background-color:#2ed0f1;
            border-radius: 15px;
            margin-left:400px;
        }
    </style>
</head>


<body>
<div class="user-info">
    <h3>欢迎你:${username}</h3>
    <h1>图&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;管&nbsp;&nbsp;&nbsp;&nbsp;理&nbsp;&nbsp;&nbsp;&nbsp;系&nbsp;&nbsp;&nbsp;&nbsp;统</h1>

    <button class="logout"><a href="/logout">退出系统</a></button>
</div>
<div class="conBox" >
    <div class="aside">
        <ul>
            <li tabindex="1"  OnClick="book1();">查&nbsp;看&nbsp;图&nbsp;书</li>
            <li tabindex="2"  OnClick="Handbook1();">添&nbsp;加&nbsp;图&nbsp;书</li>
            <li tabindex="3"  OnClick="datebook1();">修&nbsp;改&nbsp;图&nbsp;书</li>
            <li tabindex="4"  OnClick="deleted1();">删&nbsp;除&nbsp;图&nbsp;书</li>
            <li tabindex="5"  OnClick="users1();">用&nbsp;户&nbsp;列&nbsp;表</li>
            <li tabindex="6"  OnClick="message1();">消&nbsp;息&nbsp;通&nbsp;知</li>
        </ul>
    </div>
    <div class="showCon" id="showCon2" style=" width: 88%;height: 100%;left:12%;position: absolute;display: none">
        <%--        <h1 style="display: none" name="aaa" id="aah1">a</h1><br>--%>
        <%--        <h1 style="display: none" name="aaa" id="aah2">b</h1><br>--%>
        <%--        <h1 style="display: none" name="aaa" id="aah3">c</h1><br>--%>
        <%--        <h1 style="display: none" name="aaa" id="aah4">d</h1><br>--%>
        <%--        <h1 style="witth:200px;display: none" name="aaa" id="aah5">e</h1><br>--%>
        <%--        <div style="display: none" name="aaa" id="aah">--%>
        <%--            <h1>aaaa</h1>--%>
        <%--        </div>--%>
        <h1>欢迎来到管理员页面</h1>
    </div>
    <div class="booklist" id="booklet2"  style=" width: 88%;height: 100%;position: absolute;left:12%;display: none">

        <div class="booklistCon">

            <form class="searchdiv" action="/book/showFSearch" method="post">
                <h1>图&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;列&nbsp;&nbsp;&nbsp;&nbsp;表</h1>
                <input class="searchinput" type="text" name="fuzzySearchValue" placeholder="书名/出版社/类别">
                <input type="submit" value="查询" class="searchbutton"/>
            </form>

            <table>
                <tr>
                    <td  colspan="6">
                        <HR align=center width=100% color=black SIZE=1>
                    </td>
                </tr>
                <tr >
                    <td>书籍编号</td>
                    <td>书籍名称</td>
                    <td>书籍出版社</td>
                    <td>书籍发行时间</td>
                    <td>书籍类别</td>
                    <td>操作</td>
                </tr>
                <tr>
                    <td  colspan="6">
                        <HR align=center width=100% color=black SIZE=1>
                    </td>
                </tr>
                <c:forEach items="${sessionScope.books}" var="item">
                    <tr>
                        <td>${item.bookId}</td>
                        <td>${item.bookName}</td>
                        <td>${item.bookCbs}</td>
                        <td>${item.bookData}</td>
                        <td>${item.bookSort}</td>
                        <td><a href="/book/to_book_edit?bookId=${item.bookId}">详细</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="addbook" id="Handbook2" style=" width: 88%;height: 100%;position: absolute;left:12%;display: none">
        <form class="addbookCon" action="/book/book_add" method="post">
            <h1>添&nbsp;&nbsp;&nbsp;&nbsp;加&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;籍</h1>
            <label for="bookName"class="addbookleft">书籍名称:</label>
            <label for="publisher" class="addbookright">书籍出版社:</label><br><br>
            <input type="text" id="bookName" name="bookName" required="required"/>
            <input type="text" id="publisher" name="bookCbs"/><br><br>

            <label for="category" class="addbookleft">书籍发行时间:</label>
            <label for="releaseDate" class="addbookright">书籍类别:</label><br><br>
            <input id="category" type="text" name="bookSort" required="required"/>
            <input type="text" id="releaseDate" name="bookData"/><br><br>


            <button type="submit"  class="addBookSubmitBtn" value="保存信息" onclick="addBook()">确认添加</button><br>
            <button  type="reset" value="重置按钮" class="addBookResetBtn">重置按钮</button>
        </form>
        <div id="addbookMessage" style="display:none; position: absolute; top: 26%; left: 45%;background-color: #f9fcfb;align-items: center;padding-left: 15px;border-radius: 10px;">
            <h1>添加成功！</h1>
        </div>
        <script>
            function addBook() {
                // 显示保存成功的提示框
                var addbookMessage = document.getElementById("addbookMessage");
                addbookMessage.style.display = "block";
            }
        </script>
    </div>
    <div class="editbook" id="datebook2" style=" width: 88%;height: 100%;position: absolute;left:12%;display: block">
        <div  class="editbookCon">
            <form class="searchdiv" action="/book/editFSearch" method="post">
                <h1>修&nbsp;&nbsp;&nbsp;&nbsp;改&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;籍</h1>
                <input class="searchinput" type="text" name="fuzzySearchValue" placeholder="书名/出版社/类别">
                <input type="submit" value="查询" class="searchbutton"/>
            </form>

            <table>
                <tr>
                    <td  colspan="6">
                        <HR align=center width=100% color=black SIZE=1>
                    </td>
                </tr>
                <tr >
                    <td>书籍编号</td>
                    <td>书籍名称</td>
                    <td>书籍出版社</td>
                    <td>书籍发行时间</td>
                    <td>书籍类别</td>
                    <td>操作</td>
                </tr>
                <tr>
                    <td  colspan="6">
                        <HR align=center width=100% color=black SIZE=1>
                    </td>
                </tr>
                <c:forEach items="${sessionScope.FsEditBookList}" var="FsEditBookList">
                    <tr>
                        <td>${FsEditBookList.bookId}</td>
                        <td>${FsEditBookList.bookName}</td>
                        <td>${FsEditBookList.bookCbs}</td>
                        <td>${FsEditBookList.bookData}</td>
                        <td>${FsEditBookList.bookSort}</td>
                        <td><a href="/book/to_book_edit?bookId=${FsEditBookList.bookId}">修改</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="deletebook" id="deleted2" style=" width: 88%;height:100%;position: absolute;left:12%;display: none">
        <form class="deletebookCon" action="/book/delete?bookName=${bookName}&bookCbs=${bookCbs}&bookSort=${bookSort}">
            <h1>删&nbsp;&nbsp;&nbsp;&nbsp;除&nbsp;&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;&nbsp;籍</h1>
            <label for="deletebookName"class="deletebookleft">书籍名称(第一关键字):</label>
            <label for="deletebookpublisher"class="deletebookright">书籍出版社(第二关键字):</label><br><br>
            <select id="deletebookName" name="bookName">
                <option value="0"></option>
                <c:forEach items="${sessionScope.books}" var="deletebook">
                    <option  value="${deletebook.bookName}">${deletebook.bookName}</option>
                </c:forEach>
            </select>

            <select id="deletebookpublisher" name="bookCbs">
                <option value="0"></option>
                <c:forEach items="${sessionScope.books}" var="deletebook">
                    <option  value="${deletebook.bookCbs}">${deletebook.bookCbs}</option>
                </c:forEach>
            </select><br><br>

            <label for="deletebookcategory" class="deletebookleft">书籍发行时间(第三关键字):</label>
            <label for="deletebookreleaseDate" class="deletebookright">书籍类别(第四关键字):</label><br><br>

            <select id="deletebookcategory" name="bookSort">
                <option value="0"></option>
                <c:forEach items="${sessionScope.books}" var="deletebook">
                    <option  value="${deletebook.bookSort}">${deletebook.bookSort}</option>
                </c:forEach>
            </select>
            <select name="bookData" id="deletebookreleaseDate" >
                <option value="0"></option>
                <c:forEach items="${sessionScope.books}" var="deletebook">
                    <option  value="${deletebook.bookData}">${deletebook.bookData}</option>
                </c:forEach>
            </select>
            <button type="submit"  class="deleteBookSubmitBtn" value="确认删除" onclick="deleteBook()">确认删除</button><br>
        </form>
        <div id="deleteMessage" style="display:none; position: absolute; top: 26%; left: 45%;background-color: #f9fcfb;align-items: center;padding-left: 15px;border-radius: 10px;">
            <h1>删除成功！</h1>
        </div>
        <script>
            function deleteBook() {
                // 显示删除成功的提示框
                var deleteMessage = document.getElementById("deleteMessage");
                deleteMessage.style.display = "block";
            }
        </script>
    </div>
    <div class="userlist" id="users2" style="width: 88%;height:100%;position: absolute;left:12%;display: none">
        <form class="userlistCon">
            <h1>读&nbsp;&nbsp;&nbsp;&nbsp;者&nbsp;&nbsp;&nbsp;&nbsp;列&nbsp;&nbsp;&nbsp;&nbsp;表</h1>
            <table>
                <tr>
                    <td  colspan="6">
                        <HR align=center width=100% color=black SIZE=1 >
                    </td>
                </tr>
                <tr >
                    <td>读者Id</td>
                    <td>读者姓名</td>
                    <td>读者密码</td>
                    <td>读者生日</td>
                    <td>读者省份</td>
                    <td>操作</td>
                </tr>
                <tr>
                    <td  colspan="6">
                        <HR align=center width=100% color=black SIZE=1 >
                    </td>
                </tr>
                <c:forEach items="${sessionScope.user}" var="user">
                    <tr>
                        <td>${user.userId}</td>
                        <td>${user.userName}</td>
                        <td>${user.userPassword}</td>
                        <td>1</td>
                        <td>2</td>
                        <td><a href="/users/deleteuser?userId=${user.userId}">删除读者</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
    <div class="message" id="message2" style="width: 88%;height:100%;position: absolute;left:12%;display: none">
        <div class="messageCon">
            <div class="messageCon2"></div>
            <div class="messageCon1">
                <h1>项目竣工啦！！！</h1>
                <h3>图书管理系统于2023年6月29日正式竣工啦！！！！！！！！Web项目实践是计算机科学与技术专业的集中实践教学内容，是《Java Web应用开发技术》课程的综合实践环节，是对该课程的补充和提高，通过专题实训教学，加深理解、巩固课堂教学内容，通过多个专题的程序设计和内容较综合的程序设计，发挥学生的想象力和创新能力</h3>
            </div>
            <div class="messageCon2"></div>
            <div class="messageCon1">
                <h1>项目动工啦！！！</h1>
                <h3>图书管理系统于2023年6月19日正式动工啦！！！！！！！！Web项目实践是计算机科学与技术专业的集中实践教学内容，是《Java Web应用开发技术》课程的综合实践环节，是对该课程的补充和提高，通过专题实训教学，加深理解、巩固课堂教学内容，通过多个专题的程序设计和内容较综合的程序设计，发挥学生的想象力和创新能力</h3>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">
    window.onload = function() {
    }
    var showCon2 = document.getElementById("showCon2")
    var booklet2 = document.getElementById("booklet2")
    var Handbook2 = document.getElementById("Handbook2")
    var datebook2 = document.getElementById("datebook2")
    var deleted2 = document.getElementById("deleted2")
    var users2 = document.getElementById("users2")
    var message2 = document.getElementById("message2")
    book1 = function() {
        booklet2.style.display="block";
        showCon2.style.display="none";
        Handbook2.style.display="none";
        datebook2.style.display="none";
        deleted2.style.display="none";
        users2.style.display="none";
        message2.style.display="none";
    }
    Handbook1=function() {
        booklet2.style.display="none";
        showCon2.style.display="none";
        Handbook2.style.display="block";
        datebook2.style.display="none";
        deleted2.style.display="none";
        users2.style.display="none";
        message2.style.display="none";
    }
    datebook1=function() {
        booklet2.style.display="none";
        showCon2.style.display="none";
        Handbook2.style.display="none";
        datebook2.style.display="block";
        deleted2.style.display="none";
        users2.style.display="none";
        message2.style.display="none";
    }
    deleted1=function() {
        booklet2.style.display="none";
        showCon2.style.display="none";
        Handbook2.style.display="none";
        datebook2.style.display="none";
        deleted2.style.display="block";
        users2.style.display="none";
        message2.style.display="none";
    }
    users1=function() {
        booklet2.style.display="none";
        showCon2.style.display="none";
        Handbook2.style.display="none";
        datebook2.style.display="none";
        deleted2.style.display="none";
        users2.style.display="block";
        message2.style.display="none";
    }
    message1=function() {
        booklet2.style.display="none";
        showCon2.style.display="none";
        Handbook2.style.display="none";
        datebook2.style.display="none";
        deleted2.style.display="none";
        users2.style.display="none";
        message2.style.display="block";
    }
</script>
</body>
</html>
