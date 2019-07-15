<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>Ӫ������</title>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>

<script type="text/javascript">
	window.onload=function()
	{
		var obj = document.getElementById("layer");
		if(${empty ins})
		{
			obj.style.display = "none";
		} 
	}
</script>

</head>
<body>
${msg }
	<form action="<%=path%>/ab03Add.html" method="post">
		<table border="1" align="center" width="90%">
			<caption>
				${empty param.aab301?'����':'�޸�' }
				Ӫ������
				<hr width="160">
			</caption>
			
			<tr>
				<td>��������</td>
				<td>
					<e:text name="aab302" required="true" autofocus="true" defval="${ins.aab302 }"/>
				</td>
			</tr>
			<tr>
				<td>Ԥ�����</td>
				<td>
					<e:number step="0.01" name="aab303" required="true" defval="${ins.aab303 }"/>
				</td>
				<td>״̬</td>
				<td>
					<e:select name="aab304" value="�ƻ���:01,ִ����:02,���:03" defval="${ins.aab304 }" />
				</td>
			</tr>
			<tr>
				<td>�ƶ�����</td>
				<td>
					<e:date name="aab305"  required="true" defval="${ins.aab305 }"/>
				</td>
				<td>�ƶ���</td>
				<td>
					<e:text name="aab306" required="true" defval="${ins.aab306 }"/>
				</td>
			</tr>	
			<tr>
				<td>��������</td>
				<td>
					<e:textarea rows="5" cols="45" name="aab307" defval="${ins.aab307 }"/>
				</td>
			</tr>	
			<td colspan="4" align="center">
				<input type="submit" name="next" value="${empty param.aab301?'���':'�޸�' }" 
				formaction="<%=path%>/${empty param.aab301?'ab03Add':'ab03Modify' }.html"/>
				<input type="submit" name="next" value="����"
				formaction="<%=path %>/ab/ab03Query.html"
				formnovalidate="formnovalidate">
				<%--
				<input id="layer" type="submit" name="next" value="�༭Ӫ���"
					formaction="<%=path %>/ab04FindById.html">	
				 --%>
		 	</td>
		</table>
		<input type="hidden" name="aab301" value="${param.aab301 }">
	</form>
</body>
</html>