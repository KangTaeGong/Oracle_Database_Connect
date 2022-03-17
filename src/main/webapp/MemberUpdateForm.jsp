<%@page import="model.Memberbean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	String id = request.getParameter("id");	//MemberList에서 넘긴 아이디를 받아줌

	MemberDAO mdao = new MemberDAO();
	Memberbean mbean = mdao.oneSelectMember(id);	// 해당하는 id의 회원정보를 리턴
	
%>
<h2>회원 정보 수정하기</h2>

	<table width="400" border="1">
	<form action="MemberUpdateProc.jsp" methpd="post">	
	<tr height="50">
		<td align="center" width="150"> 아이디</td>
		<td width="200"> <%=mbean.getId() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> 이메일</td>
		<td width="200"><input type="email" name="email" value="<%=mbean.getEmail() %>"> </td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> 전화번호</td>
		<td width="200"><input type="tel" name="tel" value="<%=mbean.getTel() %>"></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> 패스워드</td>
		<td width="200"><input type="password" name="pass1"></td>
	</tr>
	<tr height="50">
		<td align="center" colspan="2">
		<input type="hidden" name="id" value="<%=mbean.getId() %>">
		<input type="submit" value="회원 수정하기"> &nbsp; &nbsp;</form>
		<button onclick="location.href='MemberList.jsp'"> 회원 전체 보기</button>
		</td>
	</tr>
</table>
</body>
</html>