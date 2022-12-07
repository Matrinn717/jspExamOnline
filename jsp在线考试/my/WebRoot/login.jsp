<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 span{
	font-size:20px;
	font-color:blue;
	text-align:center;
}
body{
text-align:center;
}
.user{
	border: 1px solid black;
}
</style>
</head>
<body>
<script type="text/javascript">
function check(){
	var one=document.forms[0].name.value;
	var two=document.forms[0].pwd.value;
	
	 if(!one){
         alert("不允许为空！");
         return false;}
	 else if(!two){
         alert("不允许为空");
         return false;}
	 else {
		 document.forms[0].action="check.jsp";}
	
}
</script>
<body>
<div class="user">
<form action="" method="post">
<span>USER&nbsp;&nbsp;&nbsp;&nbsp;</span><input type="text" name="name"><br><br>  <!-- aaa -->
  <span>密码</span><input type="password" name="password"><br>  	<!-- 123456 -->
  <input type="submit" name="sub" value="提交"  onclick="check()"> 
  <input type="reset" name="res" value="重置">
  </form>
  </div>
</body>
</html>
