<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Add Note</title>
</head>
<style type="text/css">
tr
{
width: 60%;
height: 30px
}
</style>
<body>
<br>
<br>
<form action = "#" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>
	�Ǽ�Ʊ��
<hr width:"160px">
</caption>

<tr>
	<td>Ʊ������</td>
	<td>
	<e:radio name="aaf103" required="true" value="��Ʊ:1,�վ�:2" defval="${param.aaf103 }" />
	</td>
	<td>Ʊ��ǰ׺</td>
	<td>
	<e:text name="aaf104" required="true" defval="${param.aaf104 }" />
	</td>
</tr>

<tr>
	<td>��ʼ���</td>
	<td>
	<e:number name="aaf106" required="true" step="1" defval="${param.aaf106 }" />
	</td>
	<td>��ֹ���</td>
	<td>
	<e:number name="aaf107" required="true" step="50" defval="${param.aaf107 }" />
	</td>
</tr>

<tr>
	<td>Ʊ��λ��</td>
	<td>
	<e:number name="aaf112"  required="true" step="1" defval="${param.aaf112 }" />
	</td>
	<td>Ʊ�����κ�</td>
	<td>
	<e:text name="aaf105" required="true" defval="${param.aaf105 }" />
	</td>
</tr>

<tr>
	<td>������Ŀ��</td>
	<td>
	<e:text name="aaf102" required="true" defval="˼��������Ŀ"/>
	</td>
	<td>ӡ�Ƶ�λ</td>
	<td>
	<e:text name="aaf110" required="true" defval="${param.aaf110 }" />
	</td>
</tr>

<tr>
	<td>�Ǽ���</td>
	<td>
	<e:text name="aaf108" required="true" defval="${param.aaf108 }" />
	</td>
	<td>�Ǽ�����</td>
	<td>
	<e:date name="aaf109" required="true" defval="${param.aaf109 }" />
	</td>
</tr>
<tr>
  <td>��ע</td>
  <td>
	<e:textarea rows="5" cols="45" name="aaf111" defval="${param.aaf111 }" />
  </td>
</tr>

   <tr>
     <td colspan="2" align="center">
     <c:choose>
		<c:when test="${empty aaf101}">
			<input type="submit" name="next" value="���"
				formaction="<%=path%>/af/af01Add.html">
		</c:when>

		<c:otherwise>
			<input type="submit" name="next" value="����"
				formaction="<%=path%>/af/af01Add.jsp">
		</c:otherwise>
	 </c:choose>
     </td>
   </tr>
</table>
</form>
</body>
</html>