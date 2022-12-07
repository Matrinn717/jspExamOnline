<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.check{
	border:1px dashed red;
}
</style>
</head>
<body>
<% request.setCharacterEncoding("gb2312");
String name=request.getParameter("name");    //获取login界面传过来的值
String password=request.getParameter("password");
String dataBaseName=request.getParameter("dataBaseName");
String tableName=request.getParameter("tableName");

if((name.equals("root"))&&(password.equals("root"))){   //判断用户名和密码是否正确

	//out.print("登录成功,3秒后跳转到考试页面");
	
	 session.setAttribute("name",name); 
	 session.setAttribute("password",password);
	  session.setAttribute("dataBaseName",dataBaseName);
	   session.setAttribute("tableName",tableName); 
	 //response.setHeader("refresh","3;inquire.jsp");
	 session.setAttribute("name",name); 
	 
	    
}

else{
	response.setHeader("refresh","2;login.jsp");
}
session.setAttribute("password",password);   
%>
<div class="check">
<h3>请重新确认考试信息</h3>    <!-- 重新提交表单信息给inquire界面 -->
<FORM action="inquire.jsp" Method="post" >
   输入考试科目名称: <Input type=text name="dataBaseName" size=8>
  
  <br>输入用户名：<Input type=text name="name" size=6>(默认是root)
   输入密码：  <Input type="password" name="password" size=6>(默认是空) <br/>
    输入start开始: <Input type=text name="tableName"  size=8>      
  <br><Input type=submit name="g" value="提交" ">
</Form>
</div>
</body>
</html>
