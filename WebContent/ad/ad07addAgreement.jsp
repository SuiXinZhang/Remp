<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>

<html>
<head>
<title>合同管理</title>
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
<form action="<%=path %>/ad/ad07addAgreement.html" method="post">
	<table  border="1" align="center" width="45%">
	<caption>
      	签订合同
      <hr width="160">
    </caption>
    <tr>
     <td colspan="4">
     <input type="hidden" name="aac401" value="${ins.aac401 }">
     <input type="hidden" name="aaa801" value="${ins.aaa801 }">
     <input type="hidden" name="aad701" value="${param.aad701 }">
     <input type="hidden" name="aad401" value="${ins.aad401 }">
     </td>
    </tr>
    <tr>
     <td>客户名称</td>
     <td><e:text name="aad702" required="true" defval="${ins.aad402 }"/></td>
     <td>联系电话</td>
     <td><e:text name="aad721" required="true" defval="${ins.aad421 } "/></td>
    </tr>
    <tr>
     <td>房间</td>
     <td><e:text name="aad703" required="true" defval="${ins.aad403 }"/></td>
    </tr>
    <tr>
     <td>房间结构</td>
     <td><e:text name="aaa504" required="true" defval="${ins.yaaa504 }"/></td>
     <td>房间状态</td>
     <td><e:text name="aaa805" required="true" defval="${ins.saaa805 }"/></td>
    </tr>
    <tr>
     <td>建筑面积</td>
     <td><e:number step="0.01" name="aaa505" required="true" defval="${ins.aaa505 }"/></td>
     <td>套内面积</td>
     <td><e:number step="0.01" name="aaa506" required="true" defval="${ins.aaa506 }"/></td>
    </tr>
    <tr>
     <td>建筑单价</td>
     <td><e:number name="aaa808" step="0.01" required="true" defval="${ins.aaa808 }"/></td>
     <td>套内单价</td>
     <td><e:number name="aaa809" step="0.01" required="true" defval="${ins.aaa810 }"/></td>
    </tr>
    <tr>
     <td>计价方式</td>
     <td><e:radio name="aad722" value="按建筑面积:01,按套内面积:02" defval="${ins.aad420 }"/></td>
    </tr>
    <tr>
     <td>付款方式</td>
     <td><e:select name="aad704" required="true" value="商业贷款:01,全款:02" defval="${ins.aad404 }"/></td>
     <td>折扣</td>
     <td><e:number name="aad705" step="0.1" defval="${ins.aad405 }"/></td>
    </tr>
    <tr>
     <td>建筑成交单价</td>
     <td><e:number name="aad706" step="0.01" required="true" defval="${ins.aad406 }"/></td>
     <td>套内成交单价</td>
     <td><e:number name="aad707" step="0.01" required="true" defval="${ins.aad407 }"/></td>
    </tr>
    <tr>
     <td>折扣说明</td>
     <td><e:text name="aad708" defval="${ins.aad708 }"/></td>
     <td>房间总价</td>
     <td><e:number name="aad709" step="0.01" required="true" defval="${ins.aad409 }"/></td>
    </tr>
    <c:if test="${!empty param.aad701 }">
	   <tr>
	     <td>合同编号</td>
	     <td>
	       <e:text name="aad710"  readonly="true" defval="${ins.aad710 }"/> 
	     </td>
	   </tr>
   </c:if>
    <tr>
     <td>合同总价(人民币)</td>
     <td><e:number name="aad711" step="0.01" required="true" defval="${ins.aad410 }"/></td>
    </tr>
    <tr>
     <td>合同币种</td>
     <td><e:select name="aad712" required="true" value="人民币:01,美元:02,英镑:03,日元:04,欧元:05" defval="${ins.aad411 }"/></td>
     <td>合同汇率</td>
     <td><e:number name="aad713" step="0.01" defval="${ins.aad412 }"/></td>
    </tr>
    <tr>
     <td>应收定金</td>
     <td><e:number name="aad714" step="0.01" required="true" defval="${ins.aad413 }"/></td>
     <td>合同总价</td>
     <td><e:number name="aad715" step="0.01" required="true" defval="${ins.aad414 }"/></td>
    </tr>
    <tr>
     <td>签署日期</td>
     <td><e:date name="aad716" required="true" defval="${ins.aad415 }"/></td>
     <td>交房日期</td>
     <td><e:date name="aad717" required="true"/></td>
    </tr>
    <tr>
     <td>推荐人</td>
     <td><e:text name="aad718" defval="${ins.aad417 }"/></td>
     <td>合同状态</td>
     <td><e:select name="aad719" required="true" value="认购:01,小订:02,签约:03" defval="${ins.aad418 }"/></td>
    </tr>
    <tr>
     <td>业务员</td>
     <td><e:text name="aad720" defval="${ins.aad419 }"/></td>
    </tr>
    <tr>
	    <td colspan="4" align="center">
	       <input type="submit" name="next" value="${empty param.aad701?'添加':'修改'}"
	              formaction="${empty param.aad701?'ad07addAgreement':'ad07modifyAgreement'}.html">
	       <input type="submit" name="next" value="查看"
	          formnovalidate="formnovalidate" formaction="ad/ad07queryAgreement.html">
	       <input type="submit" name="next" value="返回" 
	       formaction="ad07queryAgreement.html" formnovalidate="formnovalidate">
	    </td>
	</tr>
    </table>
</form>
</body>
</html>