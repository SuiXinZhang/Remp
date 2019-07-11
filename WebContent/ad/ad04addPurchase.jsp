<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>��������</title>
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
      	��Ӷ���
      <hr width="160">
    </caption>
    <tr>
     <td colspan="4">
     <input type="hidden" name="aac401" value="${ins.aac401 }">
     </td>
    </tr>
    <tr>
     <td>�ͻ�����</td>
     <td><e:text name="aad402" required="true" defval="${ins.aad305 }"/></td>
     <td>��ϵ�绰</td>
     <td><e:text name="aad421" required="true" defval="${ins.aad421 } "/></td>
    </tr>
    <tr>
     <td>����</td>
     <td><e:text name="aad403" required="true" defval="${ins.aad302 }"/></td>
    </tr>
    <tr>
     <td>����ṹ</td>
     <td><e:text name="aaa504" required="true" defval="${ins.yaaa504 }"/></td>
     <td>����״̬</td>
     <td><e:text name="aaa805" required="true" defval="${ins.saaa805 }"/></td>
    </tr>
    <tr>
     <td>�������</td>
     <td><e:number step="0.01" name="aaa505" required="true" defval="${ins.aaa505 }"/></td>
     <td>�������</td>
     <td><e:number step="0.01" name="aaa506" required="true" defval="${ins.aaa506 }"/></td>
    </tr>
    <tr>
     <td>��������</td>
     <td><e:number name="aaa808" step="0.01" required="true" defval="${ins.aaa808 }"/></td>
     <td>���ڵ���</td>
     <td><e:number name="aaa809" step="0.01" required="true" defval="${ins.aaa810 }"/></td>
    </tr>
    <tr>
     <td>�Ƽ۷�ʽ</td>
     <td><e:radio name="aad420" value="���������:01,���������:02" defval="${ins.aad420 }"/></td>
    </tr>
    <tr>
     <td>���ʽ</td>
     <td><e:select name="aad404" required="true" value="��ҵ����:01,ȫ��:02" defval="${ins.aad404 }"/></td>
     <td>�ۿ�</td>
     <td><e:number name="aad405" step="0.1" defval="${ins.aad405 }"/></td>
    </tr>
    <tr>
     <td>�����ɽ�����</td>
     <td><e:number name="aad406" step="0.01" required="true" defval="${ins.aad406 }"/></td>
     <td>���ڳɽ�����</td>
     <td><e:number name="aad407" step="0.01" required="true" defval="${ins.aad407 }"/></td>
    </tr>
    <tr>
     <td>�ۿ�˵��</td>
     <td><e:text name="aad408" defval="${ins.aad408 }"/></td>
     <td>�����ܼ�</td>
     <td><e:number name="aad409" step="0.01" required="true" defval="${ins.aad409 }"/></td>
    </tr>
    <tr>
     <td>Э���ܼ�(�����)</td>
     <td><e:number name="aad410" step="0.01" required="true" defval="${ins.aad410 }"/></td>
    </tr>
    <tr>
     <td>Э�����</td>
     <td><e:select name="aad411" required="true" value="�����:01,��Ԫ:02,Ӣ��:03,��Ԫ:04,ŷԪ:05" defval="${ins.aad411 }"/></td>
     <td>Э�����</td>
     <td><e:number name="aad412" step="0.01" defval="${ins.aad412 }"/></td>
    </tr>
    <tr>
     <td>Ӧ�ն���</td>
     <td><e:number name="aad413" step="0.01" required="true" defval="${ins.aad413 }"/></td>
     <td>Э���ܼ�</td>
     <td><e:number name="aad414" step="0.01" required="true" defval="${ins.aad414 }"/></td>
    </tr>
    <tr>
     <td>ǩ������</td>
     <td><e:date name="aad415" required="true" defval="${ins.aad415 }"/></td>
     <td>ʧЧ����</td>
     <td><e:date name="aad416" required="true" defval="${ins.aad416 }"/></td>
    </tr>
    <tr>
     <td>��������</td>
     <td><e:select name="aad418" required="true" value="�Ϲ�:01,С��:02,ǩԼ:03" defval="${ins.aad418 }"/></td>
     <td>�Ƽ���</td>
     <td><e:text name="aad417" defval="${ins.aad417 }"/></td>
    </tr>
    <tr>
     <td>ҵ��Ա</td>
     <td><e:text name="aad419" defval="${ins.aad419 }"/></td>
    </tr>
    <tr>
	    <td colspan="4" align="center">
	       <input type="submit" name="next" value="���">
	       <input type="submit" name="next" value="�鿴"
	          formnovalidate="formnovalidate" formaction="ad/ad04queryPurchase.html">
	       <input type="submit" name="next" value="����" formaction="ad/ad03query.html"
	         formnovalidate="formnovalidate">
	    </td>
	</tr>
    </table>
</form>
</body>
</html>