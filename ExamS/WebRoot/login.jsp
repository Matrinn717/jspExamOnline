<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML>


<Body bgcolor=cyan><Font size=2>
<FORM action="check.jsp" Method="post" >
   输入考试科目名称: <Input type=text name="dataBaseName" size=8>  <!-- 数据库名称 -->
  
  <br>输入用户名：<Input type=text name="name" size=6>(默认是root)  <!-- 用户名称 -->
   输入密码：  <Input type="password" name="password" size=6>(默认是空) <br/>  <!-- 用户密码 -->
    输入start开始: <Input type=text name="tableName"  size=8>        <!-- 表名称 -->
  <br><Input type=submit name="g" value="提交" ">   <!-- 提交给check界面检查 -->
</Form>
</Font></Body></HTML>
