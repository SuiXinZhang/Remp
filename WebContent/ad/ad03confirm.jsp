<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
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
${msg}
<form action="<%=path%>/ad/ad03addconfirm.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 ѡ��ȷ��
	    <hr width="160">
	  </caption>
	  <tr>
	  <td>ѡ������</td>
	  <td><e:text required="true" name="aad303"/></td>
	  </tr>
	  <tr>
	  <td>�����</td>
	  <td><e:text required="true" name="aad302" defval="${param.aaa803 }"/></td>
	  </tr>
	  <tr>
	  <td>��Ŀ�ź�</td>
	  <td><e:text required="true" name="aad304"/></td>
	  </tr>
	  <tr>
	  <td>�ͻ�����</td>
	  <td><e:text required="true" name="aad305"/></td>
	  </tr>
	  <tr>
	  <td>������</td>
	  <td><e:text required="true" name="aad306"/></td>
	  </tr>
	  <tr>
	  <td>ѡ��ʱ��</td>
	  <td><e:date required="true" name="aad307"/></td>
	  </tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="ȷ��"
	       formaction="<%=path%>/ad/ad03addconfirm.html">
	       <input type="submit" name="next" value="����"
	       formaction="<%=path%>/ad/adqueryRoom.html"
	          formnovalidate="formnovalidate">
	    </td>
	  </tr>
	</table>
	<input type="hidden" name="aaa801" value="${param.aaa801 }">
</form>
</body>
</html>