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
	
	var modifyB = document.getElementById("modify");
	modifyB.disabled = (count == 0);
}
function onEdit(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08FindById.html?aaa801=" + vaaa801;
	myform.submit();
}
function onDel(vaaa801)
{
	var myform = document.getElementById("myform");
	myform.action = "<%=path%>/aa08DelById.html?aaa801=" + vaaa801;
	myform.submit();
}

</script>
<body>
	<br>
	<br>
	<form action="<%=path%>/aa/aa08Query.html" id = "myform" method="post">
	<!-- 查询条件区 -->
	<table border="1" width="95%" align="center">
	<caption>
	房间管理
	<hr width:"160px">
	</caption>
	  <tr>
	    <td colspan="4">查询条件</td>
	  </tr>
	  <tr>
	    <td>房间编码</td>
	    <td>
	      <e:text name="qaaa802"/>
	    </td>
	    <td>房间号</td>
	    <td>
	      <e:text name="qaaa803"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>状态</td>
	    <td>
	      <e:select value="等待:01,签约:02,已租:03" header="true" name="qaaa805"/>
	    </td>

	    <td>租售类型</td>
	    <td>
	      <e:select value="可租:可租,可售:可售,租售:租售" header="true"  name="qaaa806"  />
	    </td>
	  </tr>
	  
	  <tr>
	    <td>户型编码</td>
	    <td>
	      <e:text name="qaaa807"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>建筑单价[B]</td>
	    <td>
	      <e:number name="baaa808" step="0.1"/>
	    </td>

	    <td>建筑单价[E]</td>
	    <td>
	      <e:number name="eaaa808" step="0.1"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>建筑总价[B]</td>
	    <td>
	      <e:number name="baaa809" step="0.1"/>
	    </td>

	    <td>建筑总价[E]</td>
	    <td>
	      <e:number name="eaaa809" step="0.1"/>
	    </td>
	  </tr>
	  
	  <tr>
	    <td>套内单价[B]</td>
	    <td>
	      <e:number name="baaa810" step="0.1"/>
	    </td>

	    <td>套内单价[E]</td>
	    <td>
	      <e:number name="eaaa810" step="0.1"/>
	    </td>
	  </tr>
	  
	  	  <tr>
	    <td>套内总价[B]</td>
	    <td>
	      <e:number name="baaa811" step="0.1"/>
	    </td>

	    <td>套内总价[E]</td>
	    <td>
	      <e:number name="eaaa811" step="0.1"/>
	    </td>
	  </tr>

	</table>
	
	
	<!-- 数据迭代 -->
		<table border="1" align="center" width="95%">

			<tr>
				<td></td>
				<td>序号</td>
				<td>房间号</td>
				<td>房间编码</td>
				<td>地址</td>
				<td>状态</td>
				<td>租售类型</td>
				<td>户型</td>
				<td>建筑单价</td>
				<td>建筑总价</td>
				<td>套内单价</td>
				<td>套内总价</td>
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
							<input type="checkbox" onclick="onSelect(this.checked)" name="idlist" value="${ins.aaa801 }" >
							</td>
							<td>${vs.count }</td>
							<td>
							<a href="#" onclick = "onEdit('${ins.aaa801 }')" >${ins.aaa803 }</a>
							</td>
							<td>${ins.aaa802 }</td>
							<td>${ins.aaa804 }</td>
							<td>${ins.cnaaa805  }</td>
							<td>${ins.aaa806 }</td>
							<td>${empty ins.aaa807?'尚未设置':ins.aaa807 }</td>
							<td>${empty ins.aaa808?'尚未设置':ins.aaa808  }</td>
							<td>${empty ins.aaa809?'尚未设置':ins.aaa809  }</td>
							<td>${empty ins.aaa810?'尚未设置':ins.aaa810  }</td>
							<td>${empty ins.aaa811?'尚未设置':ins.aaa811  }</td>
							<td>${ins.aaa812 }</td>
							<td>
							<a href="#" onClick="onDel('${ins.aaa801}')">删除</a>
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
					<input type="submit" value="修改" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/roomsModify.jsp" id="modify" >
					<input type="submit" value="删除" name="next" disabled="disabled" 
						formaction="<%=path %>/aa/aa08Delete.html" id="del" >
					<input type="submit" value="返回" name="next" 
					formaction="<%=path %>/aa/aa07Query.html" formnovalidate="formnovalidate" >
				</td>
			</tr>
		</table>
		
		<input type="hidden" name="aaa201" value="1">
		<input type="hidden" name="aaa701" value="${param.aaa701 }">
		<input type="hidden" name="aaa601" value="${param.aaa601 }">
		<input type="hidden" name="aaa602" value="${param.aaa708 }">
	</form>

</body>
</html>