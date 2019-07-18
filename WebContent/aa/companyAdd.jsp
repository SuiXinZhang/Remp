<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>Company</title>
</head>
<style type="text/css">
tr {
	width: 60%;
	height: 30px
}
</style>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa01Add.html" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				公司信息${empty ins.aaa101?'添加':'修改' }

				<hr width:"160px">
			</caption>

			<tr>
				<td>公司名称</td>
				<td><e:text name="aaa102" required="true" autofocus="true"
						defval="${ins.aaa102 }" /></td>
			</tr>

			<tr>
				<td>成立时间</td>
				<td><e:date name="aaa103" required="true"
						defval="${ins.aaa103 }" /></td>
			</tr>

			<tr>
				<td>公司地址</td>
				<td><e:text name="aaa104" required="true"
						defval="${ins.aaa104 }" /></td>
			</tr>

			<tr>
				<td>法人代表</td>
				<td><e:text name="aaa105" required="true"
						defval="${ins.aaa105 }" /></td>
			</tr>

			<tr>
				<td>联系电话</td>
				<td><e:text name="aaa106" required="true"
						defval="${ins.aaa106 }" /></td>
			</tr>

			<tr>
				<td>注册资本</td>
				<td><e:text name="aaa107" required="true"
						defval="${ins.aaa107 }" /></td>
			</tr>

			<tr>
				<td>企业资质</td>
				<td><e:text name="aaa108" required="true"
						defval="${ins.aaa108 }" /></td>
			</tr>


			<tr>
				<td>备注</td>
				<td><e:textarea rows="5" cols="45" name="aaa109"
						defval="${ins.aaa109 }" /></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="next" value="${empty ins.aaa101?'添加':'完善'}"
					formaction="<%=path %>/aa/${empty param.aaa101?'aa01Add.html':'aa01Modify.html' }">
				<input type="submit" name="next" value="返回" formaction="<%=path %>/aa/companyManage.jsp"
					formnovalidate="formnovalidate"></td>
			</tr>
		</table>


		<input type="hidden" name="aaa101" value="${ins.aaa101 }">
	</form>
</body>
</html>