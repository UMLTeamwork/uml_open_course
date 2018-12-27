<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <head>
        <title>教学互动-师生互动</title>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="../style/normal.css">
        <link rel="stylesheet" type="text/css" href="../style/interaction/QQ.css">
        <script type="text/javascript" src="../js/normal.js"></script>
        <link rel="stylesheet" type="text/css" href="../style/interaction/normal.css">
    </head>

<body onload="Rendering();">
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="top"></div>

<article class="content">

    <section id="banner">
        <img src="../images/index/abouttop_03.jpg">
    </section>
    <section class="mainWrap relative">
        <div class="detailContent">
            <div class="column_1">
                <section class="leftNav">
                    <h3>教学互动</h3>
                    <ul>
                        <li><a href="QQ.jsp">QQ群</a></li>
                        <li><a href="WeChat.jsp">微信群</a></li>
                        <li class="current"><a href="leavenote.jsp">师生互动</a></li>
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="index.jsp">首页</a>·
                            <a href="QQ.jsp">教学互动</a>·
                            <a href="">师生互动</a>
                        </nav>
                        <h1>留言板块</h1>
                    </header>
                    <section class="article" style="postion:relative">
                        <form action="../servlet/TeachingArrangementServlet?type=addLeaveMsg" method="post">
                            <div><input type="text" style="width:600px;height:80px;" name="leaveMsgContent"/></div>
                            <div><input type="submit" value="发表评论" style="color:black;margin-left:535px;"/></div>
                        </form>
                    </section>
                </article>
                <div>
                    <c:forEach var="leaveMsg" items="${requestScope.leaveMsgs }">
                        <p> 用户Id-${leaveMsg.userId}:&nbsp;
                                ${leaveMsg.leaveMsgContent}</p>
                        <br>
                    </c:forEach>
                </div>
            </div>

        </div>
    </section>

</article>

<!-- 通过js渲染，js代码在normal.js里 -->
<div id="bottom"></div>
<!-- 通过js渲染，js代码在normal.js里 -->
<div id="copyrights"></div>
</body>
</html>