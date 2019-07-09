<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
td {
	height: 30px;
}

msg {
	color: #ff0000
}
</style>
<%String path=request.getContextPath();%>
<%String aad701="1";%>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="员工表单" width="45%">
			<caption>
				合同备案
				<hr width="160">
			</caption>
			<tr>
				<td colspan="2">
					--------------------------------------------------------合同备案--------------------------------------------------------</td>
			</tr>
			<tr>
			<c:if test="${!empty param.aae101 }">
				<td>合同编号</td>
				<td>
					<e:text name="aad710" readonly="true" defval="${ins.aad710 }"/>
				</td>
			</c:if>
			</tr>
			<tr>
				<td>承诺办理时间</td>
				<td><e:date name="aae102" required="true" defval="${ins.aae102 }"/></td>
			</tr>
			<tr>
				<td>承诺完成时间</td>
				<td><e:date name="aae103" required="true" defval="${ins.aae103 }"/></td>
			</tr>
			<tr>
				<td>办理状态</td>
				<td><e:select name="aae104" value="未办理:0,已办理:1" defval="${ins.aae104 }"/></td>
			</tr>
			<tr>
				<td>完成时间</td>
				<td><e:date name="aae105" required="true" defval="${ins.aae105 }"/></td>
			</tr>
			<tr>
				<td>建筑面积</td>
				<td><e:number name="aae106" step="0.01" required="true"  defval="${ins.aae106 }"/></td>
			</tr>
				<tr>
				<td>业务员</td>
				<td><e:text name="aae107" required="true" defval="${ins.aae107 }"/></td>
			</tr>
			<tr>
				<td>合同备案号</td>
				<td><e:text name="aae108" required="true" defval="${ins.aae108 }"/></td>
			</tr>
			<tr>
				<td>合同备案时间</td>
				<td><e:date name="aae109" required="true" defval="${ins.aae109 }"/></td>
			</tr>
			<tr>
				<td>备注</td>
				<td><e:textarea rows="5" cols="45" name="aae110" defval="${ins.aae110}"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="${empty param.aae101?'添加':'修改' }"
						formaction="<%=path%>/${empty param.aae101?'ae01Add.html?aad701=1':'ae01Modify.html'}">
					<input type="submit" value="返回"
						formaction="<%=path%>/queryEmp.html"
						formnovalidate="formnovalidate" ></td>
			</tr>
		</table>
		<input type="hidden" name="aae101" value="${param.aae101 }">
	</form>
	${msg}
</body>
</html>