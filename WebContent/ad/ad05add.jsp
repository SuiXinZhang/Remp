<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>添加预约信息</title>
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
<form action="<%=path %>/ad/ad05add.html" method="post">
${msg }
<table  border="1" align="center" width="45%">
	<caption>
      	预留客户
      <hr width="160">
    </caption>
    <tr>
    	<td>客户名</td>
    	<td><e:text name="aad508" required="true" defval="${ins.aad508 }"/></td>
    	<td>房间号</td>
    	<td><e:text name="aad502" required="true" defval="${ins.aad502 }"/></td>
    </tr>
    <tr>
    	<td>签署日期</td>
    	<td><e:date name="aad503" defval="${ins.aad503 }"/></td>
    	<td>失效日期</td>
    	<td><e:date name="aad504" defval="${ins.aad504 }"/></td>
    </tr>
    <tr>
    	<td>业务员</td>
    	<td><e:text name="aad505" defval="${ins.aad505 }"/></td>
    	<td>预留状态</td>
    	<td><e:text name="aad507" defval="${ins.aad507 }"/></td>
    </tr>
    <tr>
    	<td>备注</td>
    	<td><e:text name="aad506" defval="${ins.aad506 }"/></td>
    </tr>
    <tr>
    	<td colspan="4" align="center">
    	<input type="submit" name="next" value="${empty param.aad501?'添加':'修改' }"
    	    formaction="${empty param.aad501?'ad05add':'ad05modify' }.html">
    	<input type="submit" name="next" value="查看"
    		formnovalidate="formnovalidate" formaction="<%=path %>/ad/ad05query.html">
    	</td>
    </tr>
</table>
<input type="hidden" name="aaa801" value="${ins.aaa801 }">
<input type="hidden" name="aac401" value="${ins.aac401 }">
<input type="hidden" name="aad501" value="${param.aad501 }">
</form>
</body>
</html>