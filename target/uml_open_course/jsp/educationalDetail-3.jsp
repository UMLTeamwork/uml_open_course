<%@ page import="bean.TeachingContent" %>
<%@ page import="service.TeachingContentService" %><%--
  Created by IntelliJ IDEA.
  User: linzerong
  Date: 2018/12/22
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    TeachingContentService tas = new TeachingContentService();
    TeachingContent content = tas.getCurContent();
    request.setAttribute("content",content);
%>
<!DOCTYPE html>
<html>
<head>
    <title>教学安排-教学方法与手段</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../style/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/education/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/education/educationDetail.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/normal.css">
    <link rel="stylesheet" type="text/css" href="../style/teachRes/teachResDetail.css">
    <script type="text/javascript" src="../js/normal.js"></script>
    <script type="text/javascript" src="../js/teachArrange-4.js"></script>
</head>
<body onload="Rendering();">
<div id="top">
</div>

<article class="content">

    <section id="banner">
        <img src="../images/index/abouttop_03.jpg">
    </section>
    <section class="mainWrap relative">
        <div class="detailContent">
            <div class="column_1">
                <section class="leftNav">
                    <h3>教学安排</h3>
                    <ul>
                        <li class="current"><a href="../jsp/educationalDetail-1.jsp">教学大纲</a></li>
                        <li><a href="../servlet/CalendarServlet?method=show">教学日历</a></li>
                        <li><a href="../jsp/educationalDetail-3.jsp">教学内容</a></li>
                        <li><a href="../jsp/educationalDetail-4.jsp">授课计划</a></li>
                        <li><a href="../jsp/educationalDetail-5.jsp">教学难重点</a></li>
                        <li><a href="../jsp/educationalDetail-6.jsp">教学方法与手段</a></li>
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="index.jsp">首页</a>·
                            <a href="educationalDetail-1.jsp">教学安排</a>·
                            <a href="">教学内容</a>
                        </nav>
                        <h1>教学内容</h1>
                    </header>
                </article>s
                <div>
                    <!--    <embed src="../resource/面向对象分析与设计--教学方法与手段.pdf" width="800" height="800"> -->
                    <c:if test="${!(empty content.contentURL)}">
                        <embed src="../${requestScope.content.contentURL}" width="800" height="800">
                    </c:if>
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