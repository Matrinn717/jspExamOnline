<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML><Body bgcolor=cyan><Font size=2>
  <% String database=request.getParameter("dataBaseName");  //��ȡcheck���洫��ֵ
     String tName=request.getParameter("tableName");
     String id=request.getParameter("name");
     String secret=request.getParameter("password");
  %>
  
  <!-- ����tag�ļ�ֵ -->
  <inquire:QueryTag   dataBaseName="<%=database%>"      
                      tableName="<%=tName%>"
                      password = "<%=secret %>"
                      user="<%=id%>"
                      />
                      
   <%--��<%=biao%>���ѯ����¼:  biao��Tag�ļ����صĶ���--%>
   <h1>���Կ�ʼ</h1>
   <BR> <%=queryResult %>   <%--queryResult��Tag�ļ����صĶ���--%>
   <br/>
   
<form action="examplecheck.jsp" method="post">    <!-- ����examplecheck����ѡ���ֵ -->
<h3>һ,����ѡ����</h3>
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

<h3>�����ж���</h3><br>

1
<input type="radio" name="r2" value="True ">True 
<input type="radio" name="r2" value="False">False<br>

<h3>������ѡ��(ÿ��3��)</h3><br>

1.��������JSP�����ö�������Щ<br>

<input type="checkbox" name="r3" value="A">A.request
<input type="checkbox" name="r3" value="B">B.response
<input type="checkbox" name="r3" value="C">C.session
<input type="checkbox" name="r3" value="D">D.JavaScript
<br>
<input type="submit" name="sub" value="�ύ"  > 
  <input type="reset" name="res" value="����">
</form>
</Font></Body></HTML>
