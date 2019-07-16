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
${msg }
<form action="<%=path %>/ad/ad08addsalesLog.html" method="post">
	<table  border="1" align="center" width="45%">
	<caption>
      	销售日志
      <hr width="160">
    </caption>
    <tr>
		<td>来电总数</td>
		<td><e:number step="1" required="true" name="aad802" defval="${ins.aad802 }"/></td>
		<td>来访总数</td>
		<td><e:number step="1" required="true" name="aad803" defval="${ins.aad803 }"/></td>
	</tr>
	<tr>
		<td>预约排号数</td>
		<td><e:number step="1" required="true" name="aad804" defval="${ins.aad804 }" /></td>
	    <td>预约退号数</td>
		<td><e:number step="1" required="true" name="aad805" defval="${ins.aad805 }" /></td>
	</tr>
	<tr>
		<td>小订套数</td>
		<td><e:number step="1" required="true" name="aad806" defval="${ins.aad806 }" /></td>
		<td>认购套数</td>
		<td><e:number step="1" required="true" name="aad807" defval="${ins.aad807 }" /></td>
	</tr>
	<tr>
		<td>签约套数</td>
		<td><e:number step="1" required="true" name="aad808" defval="${ins.aad808 }" /></td>
		<td>项目总可售</td>
		<td><e:number step="1" required="true" name="aad809" defval="${ins.aad809 }" /></td>
	</tr>
	<tr>
		<td>项目总已售</td>
		<td><e:number step="1" required="true" name="aad810" defval="${ins.aad810 }" /></td>
		<td>项目总剩余</td>
		<td><e:number step="1" required="true" name="aad811" defval="${ins.aad811 }" /></td>
	</tr>
	<tr>
		<td>广告表现</td>
		<td><e:text name="aad812" required="true" defval="${ins.aad812 }"/></td>
		<td>业务分析</td>
		<td><e:text name="aad813" required="true" defval="${ins.aad813 }"/></td>
	</tr>
	<tr>
		<td>填写人</td>
		<td><e:text name="aad814" required="true" defval="${ins.aad814 }"/></td>		
	</tr>
	<tr>
	<td colspan="4" align="center">
		<input type="submit" name="text" value="${empty param.aad801?'添加':'修改' }"
		 formaction="${empty param.aad801?'ad08addsalesLog':'ad08modifysalesLog' }.html">
		 <input type="submit" name="text" value="返回"
		 formaction="ad08querysalesLog.html" formnovalidate="formnovalidate">
	</td>
	</tr>
   </table>
   <input type="hidden" name="aad801" value="${param.aad801 }">
</form>
</body>
</html>