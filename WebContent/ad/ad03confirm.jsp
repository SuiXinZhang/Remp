<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
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
${msg}
<form action="<%=path%>/ad/ad03addconfirm.html" method="post">
	<table border="1" width="95%" align="center">
	  <caption>
	      	 选房确认
	    <hr width="160">
	  </caption>
	  <tr>
	  <td>选房单号</td>
	  <td><e:text required="true" name="aad303"/></td>
	  </tr>
	  <tr>
	  <td>房间号</td>
	  <td><e:text required="true" name="aad302" defval="${param.aaa803 }"/></td>
	  </tr>
	  <tr>
	  <td>项目排号</td>
	  <td><e:text required="true" name="aad304"/></td>
	  </tr>
	  <tr>
	  <td>客户名称</td>
	  <td><e:text required="true" name="aad305"/></td>
	  </tr>
	  <tr>
	  <td>经办人</td>
	  <td><e:text required="true" name="aad306"/></td>
	  </tr>
	  <tr>
	  <td>选房时间</td>
	  <td><e:date required="true" name="aad307"/></td>
	  </tr>
	</table>
	<table border="1" width="95%" align="center">
	  <tr>
	    <td align="center">
	       <input type="submit" name="next" value="确认"
	       formaction="<%=path%>/ad/ad03addconfirm.html">
	       <input type="submit" name="next" value="返回"
	       formaction="<%=path%>/ad/adqueryRoom.html"
	          formnovalidate="formnovalidate">
	    </td>
	  </tr>
	</table>
	<input type="hidden" name="aaa801" value="${param.aaa801 }">
</form>
</body>
</html>