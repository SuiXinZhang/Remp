<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>����Ӫ������</title>
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
		if(${empty param.aab101})
		{
			obj.style.display = "none";
		} 
	}
</script>

</head>
<body>
${msg }
	<form action="<%=path%>/ab01Add.html" method="post">
		<table border="1" align="center" width="90%">
			<caption>
				${empty param.aab101?'����':'�޸�' }
				${empty param.aab101 }
				���ۼƻ�
				<hr width="160">
			</caption>
			
			<tr>
				<td>��������</td>
				<td>
					<e:text name="aab302" required="true" autofocus="true" defval="${ins.aab102 }"/>
				</td>
			</tr>
			<tr>
				<td>���</td>
				<td>
					<e:date name="aab103" required="true" defval="${ins.aab103 }"/>
				</td>
				<td>�·�</td>
				<td>
					<e:date name="aab104" required="true" defval="${ins.aab104 }"/>
				</td>
			</tr>
			<tr>
				<td>�ƻ��������</td>
				<td>
					<e:number step="1" name="aab105" required="true" defval="${ins.aab105 }"/>
				</td>
				<td>�ƻ���������</td>
				<td>
					<e:number step="1" name="aab106" required="true" defval="${ins.aab106 }"/>
				</td>
			</tr>	
			<tr>
				<td>�ƻ����۽��</td>
				<td>
					<e:number step="0.01" name="aab107" required="true" defval="${ins.aab107 }"/>
				</td>
				<td>�ƻ����۾���</td>
				<td>
					<e:number step="0.01" name="aab108" required="true" defval="${ins.aab108 }"/>
				</td>
			</tr>
			<tr>
				<td>�ƻ��ؿ���</td>
				<td>
					<e:number step="0.01" name="aab109" required="true" defval="${ins.aab109 }"/>
				</td>
			</tr>
			<tr>
				<td>��ע</td>
				<td>
					<e:textarea rows="5" cols="45" name="aab110" defval="${ins.aab110 }"/>
				</td>
			</tr>	
			<td colspan="4" align="center">
				<input type="submit" name="next" value="${empty param.aab101?'���':'�޸�' }" 
				formaction="<%=path%>/${empty param.aab101?'ab01Add':'ab01Modify' }.html"/>
				<input type="submit" name="next" value="����"
				formaction="<%=path %>/ab/ab01Query.html"
				formnovalidate="formnovalidate">
				<input id="layer" type="submit" name="next" value="�༭�ƻ���ϸ"
					formaction="ab02Query.html">	
		 	</td>
		</table>
		<input type="hidden" name="aab101" value="${param.aab101 }">
	</form>
	
		</table>	
	</form>
</body>
</html>