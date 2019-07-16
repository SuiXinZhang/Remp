<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath();%>
<html>
<head>
<title>Insert title here</title>
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
<form action="<%=path %>/ad/ad01addOrder.html" method="post">
<table  border="1" align="center" width="45%">
	<caption>
      	预留客户
      <hr width="160">
    </caption>
    <tr>
    	<td>客户名</td>
    	<td><e:text name="aad508" required="true" defval=""/></td>
    	<td>房间号</td>
    	<td><e:text name="aad502" required="true" defval=""/></td>
    </tr>
    <tr>
    	<td>签署日期</td>
    	<td><e:date name="aad503"/></td>
    	<td>失效日期</td>
    	<td><e:date name="aad504"/></td>
    </tr>
    <tr>
    	<td>业务员</td>
    	<td><e:text name="aad505"/></td>
    	<td>预留状态</td>
    	<td><e:text name="aad507"/></td>
    </tr>
    <tr>
    	<td>备注</td>
    	<td><e:text name="aad506"/></td>
    </tr>
    <tr>
    	<td colspan="4">
    	<input type="submit" name="next" value="添加">
    	</td>
    </tr>
</table>
</form>
</body>
</html>