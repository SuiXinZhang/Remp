<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath();%>
<html>
<head>
<title>Client Add</title>
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
	<form action="<%=path%>/ac/ac04Add.html" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				客户台账${empty param.aac401?'添加':'修改' }
				<hr width:"160px">
			</caption>

			<tr>
				<td>客户名</td>
				<td><e:text name="aac403" required="true" autofocus="true"
						defval="${ins.aac403 }" /></td>
			</tr>
			<c:if test="${!empty param.aac401 }">
			<tr>
				<td>客户编号</td>
				<td><e:text name="aac402" required="true" readonly="true" defval="${ins.aac402 }" /></td>
			</tr>
			</c:if>
			<tr>
				<td>性别</td>
				<td><e:radio name="aac404" value="男:1,女:2,不确定:3" required="true"
						defval="${empty param.aac401?'1':ins.aac404 }" /></td>
			</tr>

			<tr>
				<td>籍贯</td>
				<td><e:text name="aac405" defval="${ins.aac405 }" /></td>
			</tr>

			<tr>
				<td>民族</td>
				<td><e:select name="aac406" required="true" value="汉族:1,蒙古族:2,回族:3,藏族:4"
						defval="${ins.aac406 }" /></td>
			</tr>

			<tr>
				<td>职业</td>
				<td><e:text name="aac413" defval="${ins.aac413 }" /></td>
			</tr>
			<tr>
				<td>称谓</td>
				<td><e:radio name="aac414" required="true" value="先生:1,女士:2" defval="${ins.aac414 }" /></td>
			</tr>
			<tr>
				<td>联系电话</td>
				<td><e:text name="aac407" required="true"
						 defval="${ins.aac407 }" /></td>
			</tr>

			<tr>
				<td>邮箱</td>
				<td><e:email name="aac408" defval="${ins.aac408 }" /></td>
			</tr>

			<tr>
				<td>政治背景</td>
				<td><e:text name="aac409" required="true"
						defval="${ins.aac409 }" /></td>
			</tr>
			<tr>
				<td>经济状况</td>
				<td><e:text name="aaa410"
						defval="${ins.aaa410 }" /></td>
			</tr>

			<tr>
				<td>购房信息</td>
				<td><e:text name="aac411"
						defval="${ins.aac411 }" /></td>
			</tr>
			<tr>
				<td>资金状况</td>
				<td><e:text name="aac412"
						defval="${ins.aac412 }" /></td>
			</tr>
			<tr>
				<td>记录业务员</td>
				<td><e:text name="aac415" required="true"
						defval="${ins.aac415 }" /></td>
			</tr>
			<c:if test="${!empty param.aac401 }">
				<tr>
					<td>员工编号</td>
					<td><e:text name="aac416" required="true" readonly="true"
							defval="${ins.aac416 }" /></td>
				</tr>
			</c:if>
			<tr>
				<td colspan="2" align="center"><input type="submit" name="next"
					value="${empty param.aac401?'添加':'修改'}"
					formaction="<%=path %>/ac/${empty param.aac401?'ac04Add.html':'ac04Modify.html' }">
					<input type="submit" name="next" value="返回"
					formaction="<%=path%>/ac/ac04Query.html"
					formnovalidate="formnovalidate"></td>
			</tr>
		</table>
		<e:hidden name="qaac401" />
		<e:hidden name="qaac407" />
		<e:hidden name="qaac405" />
		<e:hidden name="qaac403" />
		<e:hidden name="qaac402" />
	</form>
</body>
</html>