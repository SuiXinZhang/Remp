<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>�������</title>
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
${msg }
<form action="<%=path %>/ad/ad06addApply.html" method="post">
	<table  border="1" align="center" width="45%">
	<caption>
      	������
      <hr width="160">
    </caption>
    <tr>
		<td>�ͻ�����</td>
		<td><e:text name="aad611" required="true" defval="${ins.aad702 }"/></td>
		<td>�����</td>
		<td><e:text name="aad610" required="true" defval="${ins.aad703 }"/></td>
	</tr>
	<tr>
		<td>������</td>
		<td><e:text name="aad605" required="true" defval="${ins.aad605 }"/></td>
	    <td>����ʱ��</td>
		<td><e:date name="aad606" required="true" defval="${ins.aad606 }"/></td>
	</tr>
	<tr>
		<td>��������</td>
		<td><e:select name="aad602" required="true" value="����:01,�˷�:02" defval="${ins.aad602 }"/></td>
		<td>ԭ�����</td>
		<td><e:select name="aad604" required="true" value="������Ԥ��:01,��ϲ��:02" defval="${ins.aad604 }"/></td>
	</tr>
	<tr>
	<td colspan="4" align="center">
		<input type="submit" name="text" value="${empty param.aad601?'���':'����' }"
		 formaction="${empty param.aad601?'ad06addApply':'ad06examineApply' }.html">
		 <input type="submit" name="text" value="����"
		 formaction="ad07queryAgreement.html" formnovalidate="formnovalidate">
	</td>
	</tr>
   </table>
   <input type="hidden" name="aac401" value="${ins.aac401 }">
   <input type="hidden" name="aad601" value="${param.aad601 }">
   <input type="hidden" name="aad701" value="${param.aad701 }">
</form>
</body>
</html>