<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	text-align:left;
}
.question{
border: 1px solid black;
}
</style>
</head>
<body>
<%if (session.getAttribute("name")==null)
{%>
  <h1>用户还没有登录</h1>
  <%}
  else 
  {%>
  
  
    <a href="loginout.jsp">注销登录</a>
   <div class="question">
<form action="examplecheck.jsp" method="post">
<h3>一,单项选择题(每题2分)</h3>
<br>
1.当用户请求jsp页面时，JSP引擎就会执行该页面的字节码文件响应客户的请求，执行字节码文件的结果是 。 <br>
<input type="radio" name="r1" value="A">A. 发送一个JSP源文件到客户端 <br>
<input type="radio" name="r1_1" value="B">B. 发送一个Java文件到客户端<br>
<input type="radio" name="r1_1" value="C">C. 发送一个HTML页面到客户端<br>
<input type="radio" name="r1_1" value="D">D. 什么都不做<br>
<br/>
2.当多个用户请求同一个JSP页面时，Tomcat服务器为每个客户启动一个_____。 <br>
<input type="radio" name="r1_2" value="A">A. 进程 <br>
<input type="radio" name="r1_2" value="B">B. 线程<br>
<input type="radio" name="r1_2" value="C">C. 程序<br>
<input type="radio" name="r1_2" value="D">D. 服务<br>
<br/>
3.下列动态网页和静态网页的根本区别描述错误的是______。 <br>
<input type="radio" name="r1_3" value="A">A. 静态网页服务器端返回的HTML文件是事先存储好的 <br>
<input type="radio" name="r1_3" value="B">B. 动态网页服务器端返回的HTML文件是程序生成的。<br>
<input type="radio" name="r1_3" value="C">C. 静态网页文件里只有HTML标记，没有程序代码<br>
<input type="radio" name="r1_3" value="D">D. 动态网页中只有程序，不能有HTML代码。<br>
<br/>

<h3>二、判断题(每题2分)</h3><br>

1.同一客户在多个wb服务目录中,所对应的 session对象是互不相同的 <br>
<input type="radio" name="r2" value="True ">True 
<input type="radio" name="r2" value="False">False<br>

<h3>三、多选题(每题3分)</h3><br>

1.以下属于JSP的内置对象有哪些<br>

<input type="checkbox" name="r3" value="A">A.request
<input type="checkbox" name="r3" value="B">B.response
<input type="checkbox" name="r3" value="C">C.session
<input type="checkbox" name="r3" value="D">D.JavaScript
<br>
<input type="submit" name="sub" value="提交"  > 
  <input type="reset" name="res" value="重置">
 <%}%>
 </div> 
</body>
</html>
