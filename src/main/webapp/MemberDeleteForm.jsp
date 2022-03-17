<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<h2>회원 정보 삭제하기</h2>

	<table width="400" border="1">
	<form action="MemberDeleteProc.jsp" methpd="post">	
	<tr height="50">
		<td align="center" width="150"> 아이디</td>
		<td width="200"> <%=request.getParameter("id") %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> 패스워드</td>
		<td width="200"><input type="password" name="pass1"></td>
	</tr>
	<tr height="50">
		<td align="center" colspan="2">
		<input type="hidden" name="id" value="<%=request.getParameter("id") %>">
		<input type="submit" value="회원 삭제하기"> &nbsp; &nbsp;</form>
		<button onclick="location.href='MemberList.jsp'"> 회원 전체 보기</button>
		</td>
	</tr>
</table>
</body>
</html>