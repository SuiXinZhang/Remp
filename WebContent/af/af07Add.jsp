<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
  td{
      height:30px;
  }
</style>

<script type="text/javascript">
	window.onload=function()
	{
		var obj = document.getElementById("#");
		if(${empty param.aaf701})
		{
			obj.readOnly=true;
		} 
		else
		{
			obj.readOnly=false;	
			obj.required=true;
		}
	}
</script>

</head>
<body>
${msg}
<br>
<br>
<form action="<%=path%>/af/af07Add.html" method="post">
<table  border="1" align="center" width="45%">
    <caption>
       Ƿ���${empty param.aaf701?'���':'�޸�' }
      <hr width="160">
    </caption>
   <tr>
     <td colspan="4" align="center">Ƿ���</td>
   </tr>
   <tr>
     <td>�ͻ�����</td>
     <td>
       <e:text name="aaf703" required="true" autofocus="true" defval="${ins.aaf703 }"/> 
     </td>
     <td>�ͻ�����</td>
     <td>
       <e:email name="aaf704" required="true" defval="${ins.aaf704 }"/> 
     </td>
   </tr>
   <tr>
    <td>�������</td>
   	 <td>
       <e:text name="aaf702" required="true" defval="${ins.aaf702 }" /> 
     </td>
     <td>ǩ������</td>
     <td>
       <e:date name="aaf705" required="true" defval="${ins.aaf705 }" />
     </td>
   </tr>
   <tr>
	<td>��ͬ���</td>
   	<td>
   	  <e:number step="0.01" name="aaf706" defval="${ins.aaf706 }" required="true"/>
   	</td>
   	<td>Ƿ����</td>
	<td>
	  <e:number step="0.01" name="aaf709" defval="${ins.aaf709 }" required="true"/> 
	</td>
   </tr>
   
   <tr>
   		<td colspan="4" align="center">
   			<input type="submit" name="next" value="${empty param.aaf701?'���':'�޸�'}"
 				formaction="<%=path %>/af/${empty param.aaf701?'af07Add':'af07Exam' }.html">
 			<input type="submit" name="next" value="����"
 				formaction="<%=path %>/af/af07Query.html"
 				formnovalidate="formnovalidate">
   		</td>
   </tr>
</table>
<input type="hidden" name="aaf701" value="${param.aaf701 }">
</form>
</body>
</html>