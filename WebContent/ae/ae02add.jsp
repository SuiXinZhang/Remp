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
		<table border="1" align="center" title="员工表单" width="45%">
			<caption>
				贷款记录
				<hr width="160">
			</caption>
			<tr>
				<td colspan="4">
					--------------------------------------------------------贷款记录--------------------------------------------------------
				</td>
			</tr>
			<tr>
				<td>客户</td>
				<td><e:text name="aae202" required="true" defval="${ins.aae202 }"/></td>
				<td>联系电话</td>
				<td><e:text name="aae203"  required="true" defval="${ins.aae203 }"/></td>
			</tr>
			<tr>
				<td>房间号</td>
				<td><e:text name="aae204" required="true" defval="${ins.aae204 }"/></td>
				<td>合同编号</td>
				<td><e:text name="aae205" required="true" defval="${ins.aae205 }"/></td>
			</tr>
			<tr>
				<td>付款方式</td>
				<td><e:text name="aae206"  required="true" defval="${ins.aae206 }"/></td>
				<td>签署日期</td>
				<td><e:date name="aae207" required="true" defval="${ins.aae207 }"/></td>
			</tr>
			<tr>
				<td>合同总价</td>
				<td><e:number step="0.01" name="aae208" required="true" defval="${ins.aae208 }"/></td>
				<td>币种</td>
				<td><e:select name="aae209" value="人民币:01,美元:02" required="true" defval="${ins.aae209 }"/></td>
			</tr>
			<tr>
				<td>贷款类型</td>
				<td><e:select name="aae217" value="按揭贷款:01,公积金贷款:02" required="true" defval="${ins.aae217 }"/></td>
				<td>银行</td>
				<td><e:select name="aae210" value="工商银行:01,建设银行:02,中国银行:03" defval="${ins.aae210 }" required="true"/></td>
			</tr>
			<tr>
				<td>按揭年限</td>
				<td><e:number step="1" name="aae211" required="true" defval="${ins.aae211 }"/></td>
				<td>贷款</td>
				<td><e:number step="0.01" name="aae212" required="true" defval="${ins.aae212 }"/></td>
			</tr>
			<tr>
				<td>承诺办理时间</td>
				<td><e:date name="aae214" required="true" defval="${ins.aae214 }"/></td>
				<td>承诺完成时间</td>
				<td><e:date name="aae215" required="true" defval="${ins.aae215 }"/></td>
			</tr>
			<tr>
				<td>业务员</td>
				<td colspan="3"><e:text name="aae213" required="true" defval="${ins.aae213 }"/></td>
			</tr>
			<tr>
				<td>备注</td>
				<td colspan="3"><e:textarea  rows="5" cols="45" name="aae216" defval="${ins.aae216 }"/></td>
			</tr>
			<tr>
				<td colspan="4" align="center">
					<input type="submit" value="${empty param.aae201?'添加':'修改' }"
						formaction="<%=path%>/ae/${empty param.aae201?'ae02add.html':'ae02Modify.html' }">
				</td>
			</tr>
		</table>
		<input type="hidden" name="aae201" value="${param.aae201 }"> 
	</form>
	${msg}
</body>
</html>