<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Insert title here</title>
<%String path=request.getContextPath();%>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="Ա����" width="45%">
			<caption>
				�����¼
				<hr width="160">
			</caption>
			<tr>
				<td colspan="4">
					--------------------------------------------------------�����¼--------------------------------------------------------
				</td>
			</tr>
			<tr>
				<td>�ͻ�</td>
				<td><e:text name="aae202" required="true" defval="${ins.aae202 }"/></td>
				<td>��ϵ�绰</td>
				<td><e:text name="aae203"  required="true" defval="${ins.aae203 }"/></td>
			</tr>
			<tr>
				<td>�����</td>
				<td><e:text name="aae204" required="true" defval="${ins.aae204 }"/></td>
				<td>��ͬ���</td>
				<td><e:text name="aae205" required="true" defval="${ins.aae205 }"/></td>
			</tr>
			<tr>
				<td>���ʽ</td>
				<td><e:text name="aae206"  required="true" defval="${ins.aae206 }"/></td>
				<td>ǩ������</td>
				<td><e:date name="aae207" required="true" defval="${ins.aae207 }"/></td>
			</tr>
			<tr>
				<td>��ͬ�ܼ�</td>
				<td><e:number step="0.01" name="aae208" required="true" defval="${ins.aae208 }"/></td>
				<td>����</td>
				<td><e:select name="aae209" value="�����:01,��Ԫ:02" required="true" defval="${ins.aae209 }"/></td>
			</tr>
			<tr>
				<td>��������</td>
				<td><e:select name="aae217" value="���Ҵ���:01,���������:02" required="true" defval="${ins.aae217 }"/></td>
				<td>����</td>
				<td><e:select name="aae210" value="��������:01,��������:02,�й�����:03" defval="${ins.aae210 }" required="true"/></td>
			</tr>
			<tr>
				<td>��������</td>
				<td><e:number step="1" name="aae211" required="true" defval="${ins.aae211 }"/></td>
				<td>����</td>
				<td><e:number step="0.01" name="aae212" required="true" defval="${ins.aae212 }"/></td>
			</tr>
			<tr>
				<td>��ŵ����ʱ��</td>
				<td><e:date name="aae214" required="true" defval="${ins.aae214 }"/></td>
				<td>��ŵ���ʱ��</td>
				<td><e:date name="aae215" required="true" defval="${ins.aae215 }"/></td>
			</tr>
			<tr>
				<td>ҵ��Ա</td>
				<td colspan="3"><e:text name="aae213" required="true" defval="${ins.aae213 }"/></td>
			</tr>
			<tr>
				<td>��ע</td>
				<td colspan="3"><e:textarea  rows="5" cols="45" name="aae216" defval="${ins.aae216 }"/></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="submit" value="${empty param.aae201?'���':'�޸�' }"
						formaction="<%=path%>/ae/${empty param.aae201?'ae02add.html':'ae02Modify.html' }">
				</td>
			</tr>
		</table>
		<input type="hidden" name="aae201" value="${param.aae201 }"> 
	</form>
	${msg}
</body>
</html>