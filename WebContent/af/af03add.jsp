<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>财务票据</title>
</head>
<style type="text/css">
  td{
      height:30px;
  }
  msg{
     color:#FF0000
  }
</style>
<body>
<form action="<%=path %>/af/af03add.html" method="post">
${msg }
<table  border="1" align="center" width="45%">
	<caption>
      	票据管理
      <hr width="160">
    </caption>
    <tr>
    	<td>所选项目</td>
    	<td><e:text name="aaf303"/></td>
    	<td>购买房间</td>
    	<td><e:text name="aaf302" defval="${ins.aad403 }"/></td>
    </tr>
    <tr>
    	<td>票据编号</td>
    	<td><e:text name="aaf304" defval="${ins.aaf304 }"/></td>
    	<td>交款人</td>
    	<td><e:text name="aaf305" defval="${ins.aaf305 }"/></td>
    </tr>
    <tr>
    	<td>开票人</td>
    	<td><e:text name="aaf306" defval="${ins.aaf306 }"/></td>
    	<td>开票日期</td>
    	<td><e:date name="aaf307" defval="${ins.aaf307 }"/></td>
    </tr>
    <tr>
    	<td>票据类型</td>
    	<td><e:radio name="aaf308" value="收据:收据,发票:发票,无票据:无票据" defval="${ins.aaf308 }"/></td>
    	<td>票据状态</td>
    	<td><e:text name="aaf309"  defval="${ins.aaf309 }"/></td>
    </tr>
    <tr>
    	<td>审核人</td>
    	<td><e:text name="aaf310" defval="${ins.aaf310 }"/></td>
    	<td>审核日期</td>
    	<td><e:date name="aaf311" defval="${ins.aaf311 }"/></td>
    </tr>
    <tr>
    	<td>审核人编号</td>
    	<td><e:text name="aaf312" defval="${ins.aaf312 }"/></td>
    </tr>
</table>
<table  border="1" align="center" width="45%">
	<tr>
	<td>款项类型</td>
	<td>款项名称</td>
	<td>金额</td>
	<td>币种</td>
	<td>汇率</td>
	<td>折人民币金额</td>
	<td>支付方式</td>
	<td>备注</td>
	</tr>
	<tr>
	<td><e:select name="aaf403" value="非贷款类房款:非贷款类房款,贷款类房款:贷款类房款,全款:全款,其它:其它,"/></td>
	<td><e:select name="aaf409" value="定金:定金,预约金:预约金,房款:房款"/></td>
	<td><e:number step="0.01" name="aaf404" defval="${ins.aad413 }"/></td>
	<td><e:select name="aaf405" value="人民币:01,美元:02,英镑:03,日元:04,欧元:05"/></td>
	<td><e:number step="0.01" name="aaf410"/></td>
	<td><e:number step="0.01" name="aaf406"/></td>
	<td><e:select value="现金:现金,银行卡:银行卡,第三方支付:第三方支付" name="aaf407"/></td>
	<td><e:text name="aaf408"/></td>
	</tr>
</table>
<table  border="1" align="center" width="45%">
	<tr>
	<td colspan="4" align="center">
		<input type="submit" name="text" value="${empty param.aaf301?'添加':'修改' }"
		       formaction="${empty param.aaf301?'af03add':'af03modify' }.html">
		<input type="submit" name="text" value="查看" formaction="<%=path%>/af03query.html">
	</td>
	</tr>
</table>
<input type="hidden" name="aaf301" value="${param.aaf301 }">
</form>
</body>
</html>