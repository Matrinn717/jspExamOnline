<%@ page contentType="text/html;charset=GB2312" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<HTML>


<Body bgcolor=cyan><Font size=2>
<FORM action="check.jsp" Method="post" >
   ���뿼�Կ�Ŀ����: <Input type=text name="dataBaseName" size=8>  <!-- ���ݿ����� -->
  
  <br>�����û�����<Input type=text name="name" size=6>(Ĭ����root)  <!-- �û����� -->
   �������룺  <Input type="password" name="password" size=6>(Ĭ���ǿ�) <br/>  <!-- �û����� -->
    ����start��ʼ: <Input type=text name="tableName"  size=8>        <!-- ������ -->
  <br><Input type=submit name="g" value="�ύ" ">   <!-- �ύ��check������ -->
</Form>
</Font></Body></HTML>
