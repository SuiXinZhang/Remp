<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>methodAdd</title>
</head>
<style type="text/css">
tr {
	width: 60%;
	height: 30px
}
</style>
<script>
	function isDisplay() {
	  var a = document.getElementById("aaa906").firstElementChild;
	  var aaa907 = document.getElementById("aaa907");
	  var aaa908 = document.getElementById("aaa908");
	  var aaa909 = document.getElementById("aaa909");
	  var aaa910 = document.getElementById("aaa910");
	  if(a.checked==true){
		  aaa907.style.visibility="visible";
		  aaa908.style.visibility="visible";
		  aaa909.style.visibility="visible";
		  aaa910.style.visibility="visible";
	  }else{
		  aaa907.style.visibility="hidden";
		  aaa908.style.visibility="hidden";
		  aaa909.style.visibility="hidden";
		  aaa910.style.visibility="hidden";
	  }

	  //���¼���css
	  var link = document.createElement("link");
	  link.rel = "stylesheet";
	  link.type = "text/css";
	  link.href = getRootPath()+"/css/video.css";
	  document.getElementsByTagName("head")[0].appendChild(link);
	}
</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa09Add.html" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				���ʽ${empty param.aaa901?'���':'�޸�' }
				<hr width:"160px">
			</caption>

			<tr>
				<td>���ʽ</td>
				<td><e:text name="aaa902" required="true" autofocus="true"
						defval="${ins.aaa902 }" /></td>
			</tr>
			<tr>
				<td>�ۿ�</td>
				<td><e:number name="aaa903" required="true" step="0.001"
						defval="${ins.aaa903 }" /></td>
			</tr>

			<tr>
				<td>��Ч����</td>
				<td><e:date name="aaa904" required="true"
						defval="${ins.aaa904 }" /></td>
			</tr>

			<tr>
				<td>��Ч����</td>
				<td><e:date name="aaa905" required="true"
						defval="${ins.aaa905 }" /></td>
			</tr>

			<tr>
				<td>�Ƿ�ѡ�����</td>
				<td id="aaa906"><e:radio name="aaa906" value="��:��,��:��,��ȷ��:��ȷ��"
						required="true" defval="${empty param.aaa906?'��':ins.aaa906}"
						onclick="isDisplay()" /></td>
			</tr>

			<tr id="aaa907" style="visibility: visible">
				<td>��������</td>
				<td><e:text name="aaa907" defval="${ins.aaa907 }" /></td>
			</tr>

			<tr id="aaa908" style="visibility: visible">
				<td>���Ҿ�ȷ��</td>
				<td><e:text name="aaa908" defval="${ins.aaa908 }" /></td>
			</tr>


			<tr id="aaa909" style="visibility: visible">
				<td>����������</td>
				<td><e:text name="aaa909" defval="${ins.aaa909 }" /></td>
			</tr>

			<tr id="aaa910" style="visibility: visible">
				<td style="width: 100px; height: 30px;">������ȷ��</td>
				<td><e:text name="aaa910" defval="${ins.aaa910 }" /></td>
			</tr>

			<tr>
				<td>��ע</td>
				<td><e:textarea rows="5" cols="45" name="aaa911" defval="${ins.aaa911 }" /></td>
			</tr>


			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="next" value="${empty ins.aaa901?'���':'�޸�'}"
					formaction="<%=path %>/aa/${empty ins.aaa901?'aa09Add.html':'aa09Modify.html' }">
				<input type="submit" name="next" value="����"
					formaction="<%=path %>/aa/aa09Query.html" formnovalidate="formnovalidate">
				</td>
			</tr>
		</table>


		<input type="hidden" name="aaa201" value="1"> 
		<input type="hidden" name="aaa901" value="${ins.aaa901 }">
	</form>
</body>
</html>