<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>入伙服务</title>
<%String path=request.getContextPath();%>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="入伙记录" width="45%">
			<caption>
				入伙记录
				<hr width="160">
			</caption>
			<tr>
				<td>客户</td>
				<td><e:text name="aae302" required="true" defval="${ins.aae302 }"/></td>
				<td>联系电话</td>
				<td><e:text name="aae303"  required="true" defval="${ins.aae303 }"/></td>
			</tr>
			<tr>
			<c:choose>
				<c:when test="${empty param.aae301 }" >
					<td>房间号</td>
					<td><e:select name="aaa801" value="${ins.list }" required="true" /></td>
				</c:when>
				<c:otherwise>
					<td>房间号</td>
					<td><e:text name="aaa803" readonly="true" value="${ins.aaa803 }" required="true" />
					<e:hidden name="aaa801" value="${ins.aaa801 }"/></td>
				</c:otherwise>
			</c:choose>
				<td>合同编号</td>
				<td><e:text name="aae304" required="true" defval="${ins.aae304 }"/></td>
			</tr>
			<tr>
				<td>交房日期</td>
				<td><e:date name="aae305" required="true" defval="${ins.aae305 }"/></td>
				<td>业务员</td>
				<td colspan="3"><e:text name="aae306" required="true" defval="${ins.aae306 }"/></td>
			</tr>
			<tr>
				<td>承诺办理时间</td>
				<td><e:date name="aae307" required="true" defval="${ins.aae307 }"/></td>
				<td>承诺完成时间</td>
				<td><e:date name="aae308" required="true" defval="${ins.aae308 }"/></td>
			</tr>
			<tr>
				<td>备注</td>
				<td colspan="3"><e:textarea  rows="5" cols="45" name="aae311" defval="${ins.aae311 }"/></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="submit" value="${empty param.aae301?'添加':'修改' }"
						formaction="<%=path%>/ae/${empty param.aae301?'ae03Add.html':'ae03Modify.html' }">
					<input type="submit" value="返回"
						formaction="<%=path%>/ae/ae03query.jsp" 
						formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>
		<input type="hidden" name="aae301" value="${param.aae301 }"> 
	</form>
	${msg}
</body>
</html>