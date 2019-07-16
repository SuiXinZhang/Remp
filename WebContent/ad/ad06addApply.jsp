<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>变更申请</title>
	<style type="text/css">
	  td{
	      height:30px;
	  }
	  msg{
	     color:#FF0000
	  }
	</style>
</head>
<body>
${msg }
<form action="<%=path %>/ad/ad06addApply.html" method="post">
	<table  border="1" align="center" width="45%">
	<caption>
      	申请变更
      <hr width="160">
    </caption>
    <tr>
		<td>客户名称</td>
		<td><e:text name="aad611" required="true" defval="${ins.aad702 }"/></td>
		<td>房间号</td>
		<td><e:text name="aad610" required="true" defval="${ins.aad703 }"/></td>
	</tr>
	<tr>
		<td>申请人</td>
		<td><e:text name="aad605" required="true" defval="${ins.aad605 }"/></td>
	    <td>申请时间</td>
		<td><e:date name="aad606" required="true" defval="${ins.aad606 }"/></td>
	</tr>
	<tr>
		<td>申请类型</td>
		<td><e:select name="aad602" required="true" value="换房:01,退房:02" defval="${ins.aad602 }"/></td>
		<td>原因分类</td>
		<td><e:select name="aad604" required="true" value="不符合预期:01,不喜欢:02" defval="${ins.aad604 }"/></td>
	</tr>
	<tr>
	<td colspan="4" align="center">
		<input type="submit" name="text" value="${empty param.aad601?'添加':'审批' }"
		 formaction="${empty param.aad601?'ad06addApply':'ad06examineApply' }.html">
		 <input type="submit" name="text" value="返回"
		 formaction="ad07queryAgreement.html" formnovalidate="formnovalidate">
	</td>
	</tr>
   </table>
   <input type="hidden" name="aac401" value="${ins.aac401 }">
   <input type="hidden" name="aad601" value="${param.aad601 }">
   <input type="hidden" name="aad701" value="${param.aad701 }">
</form>
</body>
</html>