<%@page import="model.Memberbean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

	<!-- 1. ������ ���̽����� ��� ȸ���� ������ ������ 2. table�±׸� �̿��Ͽ� ȭ�鿡 ȸ������ ������ ��� -->

<%
	MemberDAO mdao = new MemberDAO();
	// ȸ������ ������ �󸶳� ����Ǿ��ִ��� �𸣱� ������ ���������� Vector�� �̿��Ͽ� �����͸� ������ ��
	Vector<Memberbean> vec = mdao.allSelectMember();
%>


</body>
</html>