<%@page import="model.Memberbean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
<%
	String id = request.getParameter("id");	//MemberList���� �ѱ� ���̵� �޾���

	MemberDAO mdao = new MemberDAO();
	Memberbean mbean = mdao.oneSelectMember(id);	// �ش��ϴ� id�� ȸ�������� ����
	
%>
<h2>ȸ�� ���� �����ϱ�</h2>

	<table width="400" border="1">
	<form action="MemberUpdateProc.jsp" methpd="post">	
	<tr height="50">
		<td align="center" width="150"> ���̵�</td>
		<td width="200"> <%=mbean.getId() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> �̸���</td>
		<td width="200"><input type="email" name="email" value="<%=mbean.getEmail() %>"> </td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> ��ȭ��ȣ</td>
		<td width="200"><input type="tel" name="tel" value="<%=mbean.getTel() %>"></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> �н�����</td>
		<td width="200"><input type="password" name="pass1"></td>
	</tr>
	<tr height="50">
		<td align="center" colspan="2">
		<input type="hidden" name="id" value="<%=mbean.getId() %>">
		<input type="submit" value="ȸ�� �����ϱ�"> &nbsp; &nbsp;</form>
		<button onclick="location.href='MemberList.jsp'"> ȸ�� ��ü ����</button>
		</td>
	</tr>
</table>
</body>
</html>