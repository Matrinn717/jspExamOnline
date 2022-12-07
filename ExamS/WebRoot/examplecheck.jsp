<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%if (session.getAttribute("name")==null){%>
  <h1>用户还没有登录</h1>
  <%}else {%>
  <h1>欢迎<%= session.getAttribute("name")%>登录本系统</h1>   <!-- 获取inquire传的值-->
  
    <a href="loginout.jsp">注销登录</a>
    <form action="grade.jsp" method="post">
<% request.setCharacterEncoding("UTF-8");
String r1_1=request.getParameter("r1_1");
String r1_2=request.getParameter("r1_2");
String r1_3=request.getParameter("r1_3");
String r2=request.getParameter("r2");
session.setAttribute("r1_1", r1_1);   // <!-- 给grade传值 -->
session.setAttribute("r1_2", r1_2);  
session.setAttribute("r1_3", r1_3);  
session.setAttribute("r2", r2);   
%>
<h2>请核对您的答案，然后单击提交按钮</h2>
<h3>一,单项选择题</h3>
1.<%out.print(r1_1);%>
2.<%out.print(r1_2);%>
3.<%out.print(r1_3);%>
<h3>二,判断题</h3>
2.<%out.print(r2);%>&nbsp;
<h3>三,多选题</h3>
3.
<%String r3[]=request.getParameterValues("r3");
if(r3!=null){
for(int a=0;a<r3.length;a++){
	out.print(r3[a]);
}}
session.setAttribute("r3", r3);   
 %>
  <%}
  %>
  <br>
 <input type="submit" name="sub" value="提交"  > <br>
    <a href="example.jsp">返回考试</a>
 </form>
</body>
</html>
