<%@ page language="java" pageEncoding="GBK"%>
<%@include file="/base/taglib.jsp" %>
<html>
<head>
	<jsp:include   page="/base/head.jsp"/>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  	<jsp:include   page="/base/header.jsp"/>
	<jsp:include   page="/ac/menu.jsp"/>
  <div class="layui-body">
    	
    <div style="padding: 15px;">
    <form action = "<%=path%>/ac/ac04ChangeOpport.html" method = "post">
${msg}
<table border="1" align="center" width="45%">
<caption>

�ͻ�����${empty param.aac201?'���':'�޸�' }

<hr width:"160px">
</caption>

<tr>
	<td>�ͻ���</td>
	<td>
	<e:text name="aac202" required="true" autofocus="true" defval="${ins.aac403 }"/>
	</td>
</tr>

<tr>
	<td>�ͻ����</td>
	<td>
	<e:text name="aac402" required="true" readonly="true" defval="${ins.aac402 }"/>
	</td>
</tr>

<tr>
	<td>����������</td>
	<td>
	<e:select name="aac207" value="����һ��:01,��������:02,��������:03" required="true" defval="${ins.aac207 }"/>
	</td>
</tr>

<tr>
	<td>�������</td>
	<td>
	<e:text name="aac208" defval="${ins.aac208 }"/>
	</td>
</tr>

<tr>
	<td>����۸�</td>
	<td>
	<e:text name="aac209" required="true" defval="${ins.aac209 }"/>
	</td>
</tr>

<tr>
	<td>���������</td>
	<td>
	<e:select name="aac203" required="true" value="25%:01,50%:02,75%:03,90%:04,100%:05" defval="${ins.aac203 }"/>
	</td>
</tr>

<tr>
	<td>���ܹ���ʱ��</td>
	<td>
	<e:date name="aac204" defval="${ins.aac204 }"/>
	</td>
</tr>
<tr>
	<td>�ͻ�Ǳ�ڸ�����ֵ����</td>
	<td>
	<e:select name="aac206" required="true" value="��:01,�е�:02,��:03,��:04" defval="${ins.aac206 }"/>
	</td>
</tr>

   <tr>
     <td>��ע</td>
     <td>
	 <e:textarea rows="5" cols="45" name="aac205" defval="${ins.aac205 }"/>
     </td>
   </tr>
   <tr>
     <td colspan="2" align="center">
       <input type="submit" name="next" value="${empty param.aac201?'���':'�޸�'}"
        formaction="<%=path %>/ac/${empty param.aac201?'ac02Add.html':'ac02Modify.html'}">
       <input type="submit" name="next" value="����" 
       formaction="<%=path %>/ac/ac01Query.html" formnovalidate="formnovalidate">
     </td>
   </tr>
</table>
<e:hidden name="aac401" value="${ins.aac401 }"/>
<e:hidden name="aac201" value="${param.aac201 }"/>

<input type="hidden" name="aac101" value="${param.aac101 }">

</form>
    </div>
  </div>
  
  <div class="layui-footer">
    <!-- �ײ��̶����� -->
  </div>
</div>
<script>
//JavaScript��������
	layui.use(['layer', 'form','element'], function(){
	  var layer = layui.layer
	  ,form = layui.form;
	  var element = layui.element();
	  layer.msg('Hello World');
	});
</script>
</body>
</html>