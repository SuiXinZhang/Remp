<%@ page language="java" pageEncoding="GBK" %>
<%@ taglib uri="http://org.wangxg/jsp/extl" prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath();%>
<html>
<head>
<title>client Care</title>
</head>
<style type="text/css">
tr {
	width: 60%;
	height: 30px
}
</style>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
var count = 0;
function onSelect(vstate)
{
	vstate?count++:count--;
	var delB = document.getElementById("del");
	delB.disabled = (count == 0);
}
function onEdit(vaac401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/ac04FindById.html?aac401=" + vaac401;
	myform.submit();
}
</script>
<body>
	<br>
	<br>
	<form action="#" " id="myform" method="post">
		${msg}
		<table border="1" align="center" width="45%">
			<caption>
				�ͻ��ػ��ƻ����
				<hr width:"160px">
			</caption>

			<tr>
				<td>ҵ��Ա</td>
				<td><e:text name="aac507" required="true"   /></td>
			</tr>
			<tr>
				<td>ҵ��Ա���</td>
				<td><e:text name="aac503" required="true" /></td>
			</tr>
			
			<tr>
				<td>��������</td>
				<td><e:radio name="aac509" value="������:01,�ѷ���:02,�ѷ���:03" required="true"  /></td>
			</tr>

			<tr>
				<td>��������</td>
				<td><e:textarea rows="10" cols="50" name="aac506"  /></td>
			</tr>

			<tr>
				<td>����ʱ��</td>
				<td><e:date name="aac505" required="true"  /></td>
			</tr>

			
			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="next" value="${empty ins.aac501?'���':'�޸�'}"
				formaction="<%=path %>/ac/${empty ins.aac501?'ac05Add.html':'ac05Modify.html' }">
				<input type="submit" name="next2" value="����	" 
				formaction="<%=path %>/ac/${empty ins.aac501?'ac05Add.html':'ac05Modify.html' }">
			</tr>
		</table>
		<input type="checkbox"  name="idlist" value="1" checked="checked">
		<input type="checkbox"  name="idlist" value="4" checked="checked">
		<table border="1" align="center" width="95%">
			<tr>
				<td colspan="2">���Ϳͻ�������ѯ</td>
				<td colspan="2" align="right"><input type="button" value="��ѯ" onclick="login()" name="next"></td>
			</tr>
			<tr>
				<td>�ͻ���</td>
				<td><e:text name="qaac403" id="qaac403"/></td>
				<td>�ͻ����</td>
				<td><e:text name="qaac402" id="qaac402"/></td>
			</tr>			
		</table>
		<table border="1" align="center" width="95%">
			<tr>
				<td></td>
				<td>�ͻ����</td>
				<td>�ͻ���</td>
				<td>��ϵ�绰</td>
				<td>����</td>
			</tr>
			<c:choose>
				<c:when test="${rows!= null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist2" value="${ins.aac401 }" >
							</td>
							<td>${ins.aac402 }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aac401}')" >${ins.aac403 }</a>
							</td>
							<td>${ins.aac407 }</td>
							<td>${ins.aac408 }</td>
						</tr>
					</c:forEach>
					<c:forEach begin="${fn:length(rows)+1 }" end="10" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach begin="1" end="10" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</table>
	</form>
</body>
<script >
function login() {
    $.ajax({
    //����������Ҫע��һ��
        type: "POST",//��������
        dataType: "json",//Ԥ�ڷ��������ص���������
        url: "<%=path%>/getClientGroupServlet" ,//url
        cache:false,
        ansyc:true,
        data:{
        	qaac403:encodeURIComponent(JSON.stringify($("#qaac403").val().trim()),"utf-8"),
        	qaac402:encodeURIComponent(JSON.stringify($("#qaac402").val().trim()),"utf-8")
        },
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        success: function (result) {
           	console.log(result);//��ӡ����˷��ص�����(������)
           	${rows = result}
            if (result.resultCode == 200) 
            {
                alert("SUCCESS");
            };
        },
        error : function() {
            alert("�쳣��");
        }
    });
}
</script>
</html>