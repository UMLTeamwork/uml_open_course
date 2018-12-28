<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
    <head>
        <title>教学互动-微信群</title>
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
                        <li class="current"><a href="WeChat.jsp">微信群</a></li>
                        <li><a href="leavenote.jsp">师生互动</a></li>
                    </ul>
                </section>
            </div>
            <div class="column_2 ">
                <article class="mainContent">
                    <header class="contentNav">
                        <nav class="nav">
                            <a href="index.jsp">首页</a>·
                            <a href="QQ.jsp">教学互动</a>·
                            <a href="">微信群</a>
                        </nav>
                        <h1>请扫描二维码加入微信群</h1>
                    </header>
                    <section class="article" style="text-align: center">
                        <c:forEach var="weChat" items="${requestScope.photos }">
                            <img src="../${weChat.src}" style="width:270px;height:370px;">
                        </c:forEach>
                    </section>
                </article>
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
