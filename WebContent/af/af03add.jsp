<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%String path=request.getContextPath(); %>
<html>
<head>
<title>����Ʊ��</title>
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
      	Ʊ�ݹ���
      <hr width="160">
    </caption>
    <tr>
    	<td>��ѡ��Ŀ</td>
    	<td><e:text name="aaf303"/></td>
    	<td>���򷿼�</td>
    	<td><e:text name="aaf302" defval="${ins.aad403 }"/></td>
    </tr>
    <tr>
    	<td>Ʊ�ݱ��</td>
    	<td><e:text name="aaf304" defval="${ins.aaf304 }"/></td>
    	<td>������</td>
    	<td><e:text name="aaf305" defval="${ins.aaf305 }"/></td>
    </tr>
    <tr>
    	<td>��Ʊ��</td>
    	<td><e:text name="aaf306" defval="${ins.aaf306 }"/></td>
    	<td>��Ʊ����</td>
    	<td><e:date name="aaf307" defval="${ins.aaf307 }"/></td>
    </tr>
    <tr>
    	<td>Ʊ������</td>
    	<td><e:radio name="aaf308" value="�վ�:�վ�,��Ʊ:��Ʊ,��Ʊ��:��Ʊ��" defval="${ins.aaf308 }"/></td>
    	<td>Ʊ��״̬</td>
    	<td><e:text name="aaf309"  defval="${ins.aaf309 }"/></td>
    </tr>
    <tr>
    	<td>�����</td>
    	<td><e:text name="aaf310" defval="${ins.aaf310 }"/></td>
    	<td>�������</td>
    	<td><e:date name="aaf311" defval="${ins.aaf311 }"/></td>
    </tr>
    <tr>
    	<td>����˱��</td>
    	<td><e:text name="aaf312" defval="${ins.aaf312 }"/></td>
    </tr>
</table>
<table  border="1" align="center" width="45%">
	<tr>
	<td>��������</td>
	<td>��������</td>
	<td>���</td>
	<td>����</td>
	<td>����</td>
	<td>������ҽ��</td>
	<td>֧����ʽ</td>
	<td>��ע</td>
	</tr>
	<tr>
	<td><e:select name="aaf403" value="�Ǵ����෿��:�Ǵ����෿��,�����෿��:�����෿��,ȫ��:ȫ��,����:����,"/></td>
	<td><e:select name="aaf409" value="����:����,ԤԼ��:ԤԼ��,����:����"/></td>
	<td><e:number step="0.01" name="aaf404" defval="${ins.aad413 }"/></td>
	<td><e:select name="aaf405" value="�����:01,��Ԫ:02,Ӣ��:03,��Ԫ:04,ŷԪ:05"/></td>
	<td><e:number step="0.01" name="aaf410"/></td>
	<td><e:number step="0.01" name="aaf406"/></td>
	<td><e:select value="�ֽ�:�ֽ�,���п�:���п�,������֧��:������֧��" name="aaf407"/></td>
	<td><e:text name="aaf408"/></td>
	</tr>
</table>
<table  border="1" align="center" width="45%">
	<tr>
	<td colspan="4" align="center">
		<input type="submit" name="text" value="${empty param.aaf301?'���':'�޸�' }"
		       formaction="${empty param.aaf301?'af03add':'af03modify' }.html">
		<input type="submit" name="text" value="�鿴" formaction="<%=path%>/af03query.html">
	</td>
	</tr>
</table>
<input type="hidden" name="aaf301" value="${param.aaf301 }">
</form>
</body>
</html>