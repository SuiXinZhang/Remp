<%@ page language="java"    pageEncoding="GBK"%>
<%@ taglib uri="http://org.wangxg/jsp/extl"  prefix="e"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% String path = request.getContextPath(); %>
<html>
<head>
<title>empManage</title>
</head>
<style type="text/css">
tr 
{
	height: 25px;
}
</style>
<script type="text/javascript">
var count = 0;
function onSelect(vstate)
{
	vstate?count++:count--;
	var delB = document.getElementById("del");
	delB.disabled = (count == 0);
}
function onEdit(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04FindById.html?aaa401=" + vaaa401;
	myform.submit();
}
function onDel(vaaa401)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa04DelById.html?aaa401=" + vaaa401;
	myform.submit();
}

</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa04Query.html" id = "myform" method="post">
			<table border="1" width="95%" align="center">
		<caption>
			员工管理
			<hr width:"160px">
		</caption>
	  <tr>
	    <td colspan="4">查询条件</td>
	  </tr>
	  <tr>

	    <td>编号</td>
	    <td>
	      <e:text name="qaaa402"/>
	    </td>
	  </tr>
	  
	  	  <tr>
	  	<td>姓名</td>
	    <td>
	      <e:text name="qaaa403"/>
	    </td>
	    <td>性别</td>
	    <td>
	      <e:text name="qaaa407"/>
	    </td>
	  </tr>
	  
	  <tr>

	    <td>岗位</td>
	    <td>
	     <e:text name="qaaa404"/>
	    </td>

	    <td>民族</td>
	    <td>
	     <e:text name="qaaa406"/>
	    </td>
	  </tr>
	  

	  
	  <tr>
	    <td>生日[B]</td>
	    <td>
	      <e:date name="baaa411"/>
	    </td>

	    <td>生日[E]</td>
	    <td>
	      <e:date name="eaaa411"/>
	    </td>
	  </tr>

	</table>
		
		<table border="1" align="center" width="95%">
	
			<tr>
				<td></td>
				<td>序号</td>
				<td>姓名</td>
				<td>员工编号</td>
				<td>岗位</td>
				<td>所属部门</td>
				<td>性别</td>
				<td>民族</td>
				<td>生日</td>
				<td>联系方式</td>
				<td>住址</td>
				<td>备注</td>
				<td></td>
			</tr>
			<!--
				         注意事项
				    1.$及大括号的结束标记 }与双引号之间,不允许出现空格
				    	即    }"   写在一起
				    2.所有的属性之间至少要有一个空格,否则报错
				    3.var 属性,相当于在页面定义变量名称,因此  ins不允许再用$ {  }
				   -->
			<c:choose>
				<c:when test="${rows!= null }">
					<c:forEach items="${rows }" var="ins" varStatus="vs">
						<tr>
							<td>
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa401 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa401 }')" >${ins.aaa403 }</a>
							</td>
							<td>${ins.aaa402 }</td>
							<td>${ins.aaa404 }</td>
							<td>${ins.aaa405 }</td>
							<td>${ins.aaa407 }</td>
							<td>${ins.aaa406 }</td>
							<td>${ins.aaa411 }</td>
							<td>${ins.aaa408 }</td>
							<td>${ins.aaa409 }</td>
							<td>${ins.aaa410 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa401}')">删除</a>
							</td>
						</tr>
					</c:forEach>
					<c:forEach begin="${fn:length(rows)+1 }" end="15" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<c:forEach begin="1" end="15" step="1">
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
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

		<table border="1" align="center" width="95%">
			<tr>
				<td align="center">
					<input type="submit" value="查询" name="next">
					<input type="submit" value="添加" name="next" onclick="onAdd()"
						formaction="<%=path %>/aa/empAdd.jsp"> 		
					<input type="submit" value="删除" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/aa04Delete.html" id="del" >
					<input type="submit" value="返回" name="next" 
					formaction="<%=path %>/aa/aa03Query.html" formnovalidate="formnovalidate" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa301" value="${param.aaa301 }">
		<input type="hidden" name="aaa201" value="1">
		<input type="hidden" name="aaa405" value="${param.aaa302 }">
	</form>

</body>
</html>