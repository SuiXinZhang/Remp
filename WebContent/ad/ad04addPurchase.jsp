<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>订单管理</title>
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
<form action="<%=path %>/ad/ad04addPurchase.html" method="post">
	<table  border="1" align="center" width="45%">
	<caption>
      	添加订单
      <hr width="160">
    </caption>
    <tr>
     <td colspan="4">
     <input type="hidden" name="aac401" value="${ins.aac401 }">
     </td>
    </tr>
    <tr>
     <td>客户名称</td>
     <td><e:text name="aad402" required="true" defval="${ins.aad305 }"/></td>
     <td>联系电话</td>
     <td><e:text name="aad421" required="true" defval="${ins.aad421 } "/></td>
    </tr>
    <tr>
     <td>房间</td>
     <td><e:text name="aad403" required="true" defval="${ins.aad302 }"/></td>
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
     <td><e:radio name="aad420" value="按建筑面积:01,按套内面积:02" defval="${ins.aad420 }"/></td>
    </tr>
    <tr>
     <td>付款方式</td>
     <td><e:select name="aad404" required="true" value="商业贷款:01,全款:02" defval="${ins.aad404 }"/></td>
     <td>折扣</td>
     <td><e:number name="aad405" step="0.1" defval="${ins.aad405 }"/></td>
    </tr>
    <tr>
     <td>建筑成交单价</td>
     <td><e:number name="aad406" step="0.01" required="true" defval="${ins.aad406 }"/></td>
     <td>套内成交单价</td>
     <td><e:number name="aad407" step="0.01" required="true" defval="${ins.aad407 }"/></td>
    </tr>
    <tr>
     <td>折扣说明</td>
     <td><e:text name="aad408" defval="${ins.aad408 }"/></td>
     <td>房间总价</td>
     <td><e:number name="aad409" step="0.01" required="true" defval="${ins.aad409 }"/></td>
    </tr>
    <tr>
     <td>协议总价(人民币)</td>
     <td><e:number name="aad410" step="0.01" required="true" defval="${ins.aad410 }"/></td>
    </tr>
    <tr>
     <td>协议币种</td>
     <td><e:select name="aad411" required="true" value="人民币:01,美元:02,英镑:03,日元:04,欧元:05" defval="${ins.aad411 }"/></td>
     <td>协议汇率</td>
     <td><e:number name="aad412" step="0.01" defval="${ins.aad412 }"/></td>
    </tr>
    <tr>
     <td>应收定金</td>
     <td><e:number name="aad413" step="0.01" required="true" defval="${ins.aad413 }"/></td>
     <td>协议总价</td>
     <td><e:number name="aad414" step="0.01" required="true" defval="${ins.aad414 }"/></td>
    </tr>
    <tr>
     <td>签署日期</td>
     <td><e:date name="aad415" required="true" defval="${ins.aad415 }"/></td>
     <td>失效日期</td>
     <td><e:date name="aad416" required="true" defval="${ins.aad416 }"/></td>
    </tr>
    <tr>
     <td>订单类型</td>
     <td><e:select name="aad418" required="true" value="认购:01,小订:02,签约:03" defval="${ins.aad418 }"/></td>
     <td>推荐人</td>
     <td><e:text name="aad417" defval="${ins.aad417 }"/></td>
    </tr>
    <tr>
     <td>业务员</td>
     <td><e:text name="aad419" defval="${ins.aad419 }"/></td>
    </tr>
    <tr>
	    <td colspan="4" align="center">
	       <input type="submit" name="next" value="添加">
	       <input type="submit" name="next" value="查看"
	          formnovalidate="formnovalidate" formaction="ad/ad04queryPurchase.html">
	       <input type="submit" name="next" value="返回" formaction="ad/ad03query.html"
	         formnovalidate="formnovalidate">
	    </td>
	</tr>
    </table>
</form>
</body>
</html>