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
		var obj = document.getElementById("shenpi");
		if(${empty param.aaf601})
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
<form action="<%=path%>/af/af06Add.html" method="post">
<table  border="1" align="center" width="45%">
    <caption>
       ���д����${empty param.aaf601?'���':'���' }
      <hr width="160">
    </caption>
   <tr>
     <td colspan="4" align="center">���зſ</td>
   </tr>
   <tr>
     <td>��������*</td>
     <td>
       <e:text name="aaf604" required="true" autofocus="true" defval="${ins.aaf604 }"/> 
     </td>
     <td>�Ǽ���*</td>
     <td>
       <e:text name="aaf603" required="true" defval="${ins.aaf603 }"/> 
     </td>
   </tr>
   <tr>
    <td>�ſ��</td>
   	 <td>
       <e:text name="aaf602" readonly="true" defval="${ins.aaf602 }"/> 
     </td>
     <td>�ſ�����*</td>
     <td>
       <e:date name="aaf605" required="true" defval="${ins.aaf605 }"/>
     </td>
   </tr>
   <tr>
	<td>��Ŀ����</td>
   	<td>
   	  <e:text name="aaf612" defval="${ins.aaf612 }"/> 
   	</td>
   	<td>��������</td>
	<td>
	  <e:text name="aaf610" defval="${ins.aaf610 }"/> 
	</td>
   </tr>
   <tr>
	<td>���㷽ʽ</td>
	<td>
	  <e:text name="aaf608" defval="${ins.aaf608 }"/> 
	</td>
	<td>���㵥��</td>
	<td>
	  <e:text name="aaf609" defval="${ins.aaf609 }"/> 
	</td>
   </tr>

   <tr>
   	<td>�����</td>
	<td>
	  <e:text id="shenpi" name="aaf606" defval="${ins.aaf606 }"/> 
	</td>
   </tr>
   <tr>
   		<td colspan="4" align="center">
   			<input type="submit" name="next" value="${empty param.aaf601?'���':'���'}"
 				formaction="<%=path %>/af/${empty param.aaf601?'af06Add':'af06Exam' }.html">
 			<input type="submit" name="next" value="����"
 				formaction="<%=path %>/af/af06Query.html"
 				formnovalidate="formnovalidate">
   		</td>
   </tr>
</table>
<input type="hidden" name="aaf601" value="${param.aaf601 }">
</form>
</body>
</html>