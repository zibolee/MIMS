
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html>
    <head>
        <title>留言信息列表</title>

        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="this is my page">
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/bootstrap.min.js"></script>
       

    </head>

    <body>
        <div style="padding: 0px; margin: 0px;">
            <ul class="breadcrumb" style="margin: 0px; padding-left: 20px;">
                <li>管理</li>
                <li>分类管理</li>

            </ul>
        </div>
        
        <div class="row" style="padding: 15px;">
            <table class="table ">
                <tr>
                   
                    <th>分类编号</th>
                    <th>分类名称</th>
                    <th>说明</th>
                   
                </tr>

                <c:forEach items="${list}" var ="messageKind" varStatus="v">
                    <tr>
                        <td>${messageKind.messagekindId}</td>
                        <td>${messageKind.messagekindName}</td>
                        <td>${messageKind.messagekindRemark}</td>
                       
                    </tr>
                </c:forEach>
            </table>
           
        </div>
    </body>
</html>
