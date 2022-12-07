<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
span{
	color:red;
}
.grade{
	border:1px dashed red;
}
</style>
</head>
<body>

<%
if (session.getAttribute("name")==null){%>
  <h1>用户还没有登录</h1>
  <%}else {%>
  <h1>欢迎<%= session.getAttribute("name")%>登录本系统</h1>
  
    <a href="loginout.jsp">注销登录</a>
<%
String r1_1= (String)session.getAttribute("r1_1");
String r1_2= (String)session.getAttribute("r1_2");
String r1_3= (String)session.getAttribute("r1_3");
String r2=(String)session.getAttribute("r2");
String r3[]=(String [])session.getAttribute("r3");
int sum=0;
if(r1_1.equals("C"));
	{sum=sum+2;}

if(r1_2.equals("B"));
	{sum=sum+2;}

if(r1_3.equals("D"));
	{sum=sum+2;}

if(r2.equals("True"));
	{sum=sum+2;}
if(r3[0].equals("A")&&r3[1].equals("B")&&r3[2].equals("C"))
{sum=sum+3;}

%>
<div class="grade">
<h2>您的成绩如下：</h2>

<span >成绩：<%=sum %></span>
<br/>单选题：
<br>第一题正确答案应为C项，您的答案为<%=r1_1 %>
<br>第二题正确答案应为B项，您的答案为<%=r1_2 %>
<br>第三题正确答案应为D项，您的答案为<%=r1_3 %><br/>
<br/>判断题：
<br>第一题正确答案应为A项，您的答案为<%=r2 %><br/>
<br/>多选题：
<br>第一题正确答案应为ABC项，您的答案为<%=r3[0] %><%=r3[1] %><%=r3[2] %>
<br>
    <a href="example.jsp">重新答题</a>
  <%}%>
 </div>
</body>
</html>
