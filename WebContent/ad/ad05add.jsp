<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
</head>
<body>
<form action="<%=path %>/ad/ad01addOrder.html" method="post">
<table  border="1" align="center" width="45%">
	<caption>
      	Ԥ���ͻ�
      <hr width="160">
    </caption>
    <tr>
    	<td>�ͻ���</td>
    	<td><e:text name="aad508" required="true" defval=""/></td>
    	<td>�����</td>
    	<td><e:text name="aad502" required="true" defval=""/></td>
    </tr>
    <tr>
    	<td>ǩ������</td>
    	<td><e:date name="aad503"/></td>
    	<td>ʧЧ����</td>
    	<td><e:date name="aad504"/></td>
    </tr>
    <tr>
    	<td>ҵ��Ա</td>
    	<td><e:text name="aad505"/></td>
    	<td>Ԥ��״̬</td>
    	<td><e:text name="aad507"/></td>
    </tr>
    <tr>
    	<td>��ע</td>
    	<td><e:text name="aad506"/></td>
    </tr>
    <tr>
    	<td colspan="4">
    	<input type="submit" name="next" value="���">
    	</td>
    </tr>
</table>
</form>
</body>
</html>