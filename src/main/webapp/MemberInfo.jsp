<%@page import="model.Memberbean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>
	<!--0.memberList���� �ѱ� id�� �޾��� 1. ������ ���̽����� �� ȸ���� ������ ������ 2. table�±׸� �̿��Ͽ� ȭ�鿡 ȸ���� ������ ��� -->
	
<%
	String id = request.getParameter("id");	//MemberList���� �ѱ� ���̵� �޾���

	MemberDAO mdao = new MemberDAO();
	Memberbean mbean = mdao.oneSelectMember(id);	// �ش��ϴ� id�� ȸ�������� ����
	
%>
<h2>ȸ�� ���� ����</h2>
<table width="400" border="1">
	<tr height="50">
		<td align="center" width="150"> ���̵�</td>
		<td width="200"> <%=mbean.getId() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> �̸���</td>
		<td width="200"> <%=mbean.getEmail() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> ��ȭ��ȣ</td>
		<td width="200"> <%=mbean.getTel() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> ���</td>
		<td width="200"> <%=mbean.getHobby() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> ����</td>
		<td width="200"> <%=mbean.getJob() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> ����</td>
		<td width="200"> <%=mbean.getAge() %></td>
	</tr>
	<tr height="50">
		<td align="center" width="150"> ����</td>
		<td width="200"> <%=mbean.getInfo() %></td>
	</tr>
	<tr height="50">
		<td align="center" colspan="2">
		<button onclick="location.href='MemberUpdateForm.jsp?id=<%=mbean.getId()%>'"> ȸ������ </button>
		<button onclick="location.href='MemberDeleteForm.jsp?id=<%=mbean.getId()%>'"> ȸ������ </button>
		<button onclick="location.href='MemberList.jsp?id=<%=mbean.getId()%>'"> ��Ϻ��� </button>
		<button onclick="location.href='MemberJoin.jsp?id=<%=mbean.getId()%>'"> ȸ������ </button>
		</td>
	</tr>
</table>
</body>
</html>