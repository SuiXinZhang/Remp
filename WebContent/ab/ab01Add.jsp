<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>�������ۼƻ�</title>
</head>
<body>
${msg }
	<form action="<%=path%>/ab01Add.html" method="post">
		<table border="1" align="center">
			<caption>
				�������ۼƻ�
				<hr>
			</caption>
			
			<tr>
				<td>��Ŀ����</td>
				<td>
					<e:text name="aab102" required="true" autofocus="true"/>
				</td>
			</tr>
			<tr>
				<td>���</td>
				<td>
					<e:date name="aab103" required="true"/>
				</td>
				<td>�·�</td>
				<td>
					<e:date name="aab104" required="true"/>
				</td>
			</tr>
			<tr>
				<td>�ƻ��������</td>
				<td>
					<e:number step="1" name="aab105" required="true"/>
				</td>
				<td>�ƻ���������</td>
				<td>
					<e:number step="1" name="aab106" required="true"/>
				</td>
			</tr>	
			<tr>
				<td>�ƻ����۽��</td>
				<td>
					<e:number step="0.01" name="aab107" required="true"/>
				</td>
				<td>�ƻ����۾���</td>
				<td>
					<e:number step="0.01" name="aab108" required="true"/>
				</td>
			</tr>
			<tr>
				<td>�ƻ��ؿ���</td>
				<td>
					<e:number step="0.01" name="aab109" required="true"/>
				</td>
			</tr>
			<tr>
				<td>��ע</td>
				<td>
					<e:textarea rows="5" cols="45" name="aab110"/>
				</td>
			</tr>	
			<td colspan="4" align="center">
				<input type="submit" name="next" value="���" formaction="<%=path%>/ab01Add.html"/>
			</td>
		</table>
	</form>
	
	
	<form action="<%=path%>/ab01Add.html" method="post">
		<table border="1" align="center">
			<caption>
				���ۼƻ���ϸ��
				<hr>
			</caption>
			<tr>
				<td>���</td>
				<td>��Ʒ����</td>
				<td>�ƻ���������</td>
				<td>�ƻ��������</td>
				<td>�ƻ����۽��</td>
				<td>�ƻ����۾���</td>
				<td>�ƻ��ؿ���</td>
			</tr>
			<tr>
				<td>1</td>
				<td>С�߲�</td>
				<td><e:number step="1" name="aab203" defval="0" /></td>
				<td><e:number step="1" name="aab204" defval="0" /></td>
				<td><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
			<tr>
				<td>2</td>
				<td>�߲�</td>
				<td><e:number step="1" name="aab203" defval="0" /></td>
				<td><e:number step="1" name="aab204" defval="0" /></td>
				<td><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
			<tr>
				<td>3</td>
				<td>����</td>
				<td style="text-align: right;"><e:number step="1" name="aab203" defval="0" /></td>
				<td align="right"><e:number step="1" name="aab204" defval="0" /></td>
				<td align="right"><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td align="right"><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td align="right"><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
			<tr>
				<td>4</td>
				<td>��λ</td>
				<td><e:number step="1" name="aab203" defval="0" /></td>
				<td><e:number step="1" name="aab204" defval="0" /></td>
				<td><e:number step="0.01" name="aab205" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab206" defval="0.00" /></td>
				<td><e:number step="0.01" name="aab207" defval="0.00" /></td>
			</tr>
		</table>	
	</form>
</body>
</html>