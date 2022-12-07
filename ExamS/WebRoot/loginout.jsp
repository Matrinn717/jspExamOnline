<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注销登录</title>
</head>
<body>

<%
  session.invalidate();
  response.sendRedirect("login.jsp");
 %>
<h1>您已成功退出本系统，两秒后跳转回首页，如果没有，请按<a href="login.jsp"></a>这里</h1>
	<% response.setHeader("refresh","2;login.jsp");
%>
</body>
</html>
