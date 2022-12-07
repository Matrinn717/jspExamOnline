<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><Body bgcolor=cyan><Font size=2>
  <% String database=request.getParameter("dataBaseName");  //获取check界面传的值
     String tName=request.getParameter("tableName");
     String id=request.getParameter("name");
     String secret=request.getParameter("password");
  %>
  
  <!-- 传给tag文件值 -->
  <inquire:QueryTag   dataBaseName="<%=database%>"      
                      tableName="<%=tName%>"
                      password = "<%=secret %>"
                      user="<%=id%>"
                      />
                      
   <%--在<%=biao%>表查询到记录:  biao是Tag文件返回的对象--%>
   <h1>考试开始</h1>
   <BR> <%=queryResult %>   <%--queryResult是Tag文件返回的对象--%>
   <br/>
   
<form action="examplecheck.jsp" method="post">    <!-- 传给examplecheck界面选择的值 -->
<h3>一,单项选择题</h3>
<br>
1.
<input type="radio" name="r1_1" value="A">A
<input type="radio" name="r1_1" value="B">B
<input type="radio" name="r1_1" value="C">C
<input type="radio" name="r1_1" value="D">D<br>
<br/>
2
<input type="radio" name="r1_2" value="A">A
<input type="radio" name="r1_2" value="B">B
<input type="radio" name="r1_2" value="C">C
<input type="radio" name="r1_2" value="D">D<br>
<br/>
3
<input type="radio" name="r1_3" value="A">A
<input type="radio" name="r1_3" value="B">B
<input type="radio" name="r1_3" value="C">C
<input type="radio" name="r1_3" value="D">D<br>
<br/>

<h3>二、判断题</h3><br>

1
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
</form>
</Font></Body></HTML>
