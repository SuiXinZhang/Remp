<%@ page language="java" pageEncoding="GBK"%>
<%@taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>面积补差服务</title>
<%String path=request.getContextPath();%>
<script type="text/javascript">
	function mod(id)
	{
		var vform = document.getElementById("action");
		vform.action = "<%=path %>/ae/ae05mod.html?aae401="+id;
		vform.submit();
	}
</script>
</head>
<body>
	<form action="" method="post">
		<br> <br>
		<table border="1" align="center" title="产权记录" width="45%">
			<caption>
				面积补差
				<hr width="160">
			</caption>
			<tr>
				<td>客户</td>
				<td><e:text name="aae707" required="true"
						defval="${ins.aae707 }" /></td>
				<c:choose>
					<c:when test="${empty param.aae701 }">
						<td>房间号</td>
						<td><e:select name="aaa801" value="${ins.list }"
								required="true" /></td>
					</c:when>
					<c:otherwise>
						<td>房间号</td>
						<td><e:text name="aaa803" readonly="true"
								value="${ins.aaa803 }" required="true" /> <e:hidden
								name="aaa801" value="${ins.aaa801 }" /></td>
					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td>合同面积</td>
				<td>
					<e:number step="0.01" name="aae702" defval="${ins.aae702 }"/>
				</td>
				<td>实际面积</td>
				<td>
					<e:number step="0.01" name="aae703" defval="${ins.aae703 }"/>
				</td>
			</tr>
			<tr><td>合同价格</td>
				<td>
					<e:number step="0.01" name="aae708" defval="${ins.aae708 }"/>
				</td>
			</tr>
			<tr>
				<td>备注</td>
				<td colspan="3"><e:textarea rows="5" cols="45" name="aae706"
						defval="${ins.aae706 }" /></td>
			</tr>
			<tr>
				<td colspan="4" align="center"><input type="submit"
					value="${empty param.aae701?'添加':'修改' }"
					formaction="<%=path%>/ae/${empty param.aae701?'ae07Add.html':'ae07Modify.html' }">
					<input type="submit" value="返回"
					formaction="<%=path%>/ae/ae07query.jsp"
					formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>
		<input type="hidden" name="aae401" value="${param.aae701 }">
		<input type="hidden" name="aae411" value="${ins.aae411 }"> 
	</form>
	${msg}
</body>
</html>