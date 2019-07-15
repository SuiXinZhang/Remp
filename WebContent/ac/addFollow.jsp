<%@ page language="java" pageEncoding="GBK" %>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath();%>
<html>
<head>
<title>Follow Add</title>
</head>
<style type="text/css">
tr {
	width: 60%;
	height: 30px
}
</style>
<script>
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/ac/ac03Add.html" id="form" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				客户跟进${empty ins.aac301?'添加':'修改' }
				<hr width:"160px">
			</caption>

			<tr>
				<td>客户名</td>
				<td><e:text name="aac403" required="true"  readonly="true" defval="${empty param.aac401?ins.aac403:param.aac403 }" /></td>
			</tr>
			<tr>
				<td>客户编号</td>
				<td><e:text name="aac402" required="true" readonly="true" defval="${empty param.aac401?ins.aac402:param.aac402 }" /></td>
			</tr>
			<tr>
				<td>跟进状态</td>
				<td><e:select name="aac304" value="未跟进:01,已跟进:02,待再次跟进:03" required="true" 
						defval="${empty param.aac301?'01':ins.cnaac304 }" /></td>
			</tr>

			<tr>
				<td>跟进内容</td>
				<td><e:textarea rows="5" cols="20" name="aac303" defval="${ins.aac303 }" /></td>
			</tr>

			<tr>
				<td>跟进时间</td>
				<td><e:date name="aac305" required="true" defval="${ins.aac305 }" /></td>
			</tr>

			<tr>
				<td>跟进业务员</td>
				<td><e:text name="aac306" defval="${ins.aac306 }" /></td>
			</tr>
			<tr>
				<tr>
					<td>员工编号</td>
					<td><e:text name="aac307" required="true" readonly="true"
							defval="1" /></td>
				</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="next"
					value="${empty ins.aac301?'添加':'修改'}"
					formaction="<%=path %>/ac/${empty ins.aac301?'ac03Add.html':'ac03Modify.html' }">
					
			</tr>
		</table>
		<input type="hidden" name="aac301" value="${ins.aac301 }"> 
		<input type="hidden" name="aac401" value="${empty param.aac401?ins.aac401:param.aac401 }">
		<e:hidden name="qaac301" />
		<e:hidden name="qaac307" />
		<e:hidden name="qaac305" />
		<e:hidden name="qaac303" />
		<e:hidden name="qaac302" />
	</form>
</body>
</html>