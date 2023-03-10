<%-- 
    Document   : index
    Created on : 2015-11-15, 10:46:17
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title></title>

            <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/index.css" type="text/css" media="screen" />


            <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.min.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/tendina.min.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/common.js"></script>

    </head>
    <body>
        <!--顶部-->
        <div class="layout_top_header">
            <div style="float: left"><span style="font-size: 16px;line-height: 45px;padding-left: 20px;color: #8d8d8d">管理后台</h1></span></div>
            <div id="ad_setting" class="ad_setting"></div>
        </div>
        <!--顶部结束-->
        <!--菜单-->
        <div class="layout_left_menu">
            <ul id="menu">
             <c:forEach items="${menuList}" var="menu">
                <li class="childUlLi">
                    <a href="#"  target="menuFrame"><i class="glyph-icon icon-home"></i>${menu.name}</a>
                    <ul>
                        <c:if test="${fn:length(menu.menuList)>0}">
                        
                         <c:forEach items="${menu.menuList}" var="childmenu">
                        <li><a href="${childmenu.url}" target="${childmenu.target}">
                                <i class="glyph-icon icon-chevron-right"></i>${childmenu.name}</a>
                        </li>
                        </c:forEach>
                        </c:if>
                       
                        
                    </ul>
                </li>
                </c:forEach>
            </ul>
        </div>
        <!--菜单-->
        <div id="layout_right_content" class="layout_right_content">

            <div class="route_bg">
                <a href="#">主页</a><i class="glyph-icon icon-chevron-right"></i>
                <a href="#">管理</a>
            </div>
            <div class="mian_content">
                 <div id="page_content">
                    <iframe id="menuFrame" name="menuFrame" src="welcome.jsp" style="overflow:visible;"
                            scrolling="yes" frameborder="no" width="100%" height="100%"></iframe>
                </div>
            </div>
        </div>
        <div class="layout_footer">
            <p>Copyright ©计算机软件18</p>
        </div>
    </body>
</html>
