<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>面积补差服务</title>
<%String path=request.getContextPath();%>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="产权记录" width="45%">
			<caption>
				面积补差明细
				<hr width="160">
			</caption>
			<tr>
				<td>客户</td>
				<td><e:text name="aae502" required="true" readonly="true"
						defval="${ins.aae707 }" /></td>
				<td>房间号</td>
				<td><e:text name="aaa803" readonly="true"
						value="${ins.aaa803 }" required="true" /> 
					<e:hidden name="aaa801" value="${ins.aaa801 }" /></td>
				
			</tr>
			<tr>
				<td>合同面积</td>
				<td>
					<e:number step="0.01" name="aae503" readonly="true" defval="${ins.aae702 }" />
				</td>
				<td>套内面积</td>
				<td><e:number step="0.01" name="aae407" readonly="true" required="true"
						defval="${ins.aae703 }" /></td>
			</tr>
			<tr>
				<td>参差补差款</td>
				<td><e:number step="0.01"  name="aae409" required="true"
						defval="${ins.aae504 }" /></td>
				<td>实际补差款</td>
				<td><e:number step="0.01"  name="aae410" required="true"
						defval="${ins.aae505 }" /></td>
			</tr>
			<tr>
				<td colspan="4" align="center"><input type="submit"
					value="修改"
					formaction="<%=path%>/ae/ae05Modify.html">
					<input type="submit" value="返回"
					formaction="<%=path%>/ae/ae05query.jsp"
					formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>
		<input type="hidden" name="aae501" value="${param.aae501 }">
	</form>
	${msg}
</body>
</html>