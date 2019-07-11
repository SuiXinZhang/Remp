<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>ԤԼ����</title>
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
<form action="<%=path %>/ad/ad01addOrder.html" method="post">
<table  border="1" align="center" width="45%">
	<caption>
      	ԤԼ ${empty param.aad101?'���':'�˺�' }
      <hr width="160">
    </caption>
	<tr>
		<td>��Ŀ����</td>
		<td><e:text required="true" name="oaad102" defval="${ins.aad102 }"/></td>
		<td>ʵ���ź�</td>
		<td><e:text name="oaad104" defval="${ins.aad104 }"/></td>
	</tr>
	<tr>
		<td>�ͻ�����</td>
		<td><e:text required="true" name="oaad103" defval="${ins.aac403 }"/></td>
	</tr>
    <tr>
    	<td>ԤԼ����</td>
    	<td><e:date required="true" name="oaad105" defval="${ins.aad105 }"/></td>
    	<td>ʧЧ����</td>
    	<td><e:date required="true" name="oaad106" defval="${ins.aad106 }"/></td>
	</tr>
	<tr>
		<td>��Ŀ�ź�</td>
		<td><e:text name="oaad107" defval="${ins.aad107 }"/></td>
		<td>�����ź�</td>
		<td><e:text name="oaad108" defval="${ins.aad108 }"/></td>
	</tr>
	<tr>
		<td>����</td>
		<td><e:text required="true" name="oaad110" defval="${ins.aad110 }"/></td>
	</tr>
	<tr>
		<td>Ӧ��ԤԼ��</td>
		<td><e:number required="true" step="0.01" name="oaad111" defval="${ins.aad111 }"/></td>
		<td>����</td>
		<td><e:select required="true" name="oaad112" value="�����:01,��Ԫ:02,Ӣ��:03,��Ԫ:04,ŷԪ:05"
		     defval="${ins.aad112 }"/></td>
	</tr>
	<tr>
		<td>ʵ��ԤԼ��</td>
		<td><e:number required="true" step="0.01" name="oaad113" defval="${ins.aad113 }"/></td>
		<td>Ȩ����</td>
		<td><e:text required="true" name="oaad109" defval="${ins.aad109 }"/></td>
	</tr>
	<tr>
		<td>ҵ��Ա</td>
		<td><e:text required="true" name="oaad114" defval="${ins.aad114 }"/></td>
		<td>��ע</td>
		<td><e:text name="oaad115"/></td>
	</tr>
	<c:if test="${!empty param.aad101 }">
	   <tr>
	     <td>�˺�����</td>
	     <td><e:date required="true" name="aad202"  defval="${ins.aad202 }"/></td>
	     <td>�˺�ԭ��</td>
	     <td><e:text required="true" name="aad203"  defval="${ins.aad203 }"/></td>
	   </tr>
   </c:if>
	<tr>
		<td colspan="4" align="center">
		<input type="submit" name="text" value="���">
		<input type="submit" name="next" value="�޸�" 
              formaction="<%=path%>/ad/ad01modifyOrder.html">
		<input type="submit" name="next" value="${empty param.aad101?'�鿴':'����' }" 
              formaction="<%=path%>/ad/ad01queryOrder.html"
              formnovalidate="formnovalidate">
        <input type="submit" name="text" value="�˺�" 
              formaction="<%=path%>/ad/ad02addWithdrawOrder.html">
		</td>
	</tr>
</table>
<input type="hidden" name="aad101" value="${param.aad101 }">
<input type="hidden" name="oaac401" value="${ins.aac401 }">
</form>
</body>
</html>