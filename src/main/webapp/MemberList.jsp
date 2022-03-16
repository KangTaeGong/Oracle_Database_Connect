<%@page import="model.Memberbean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

	<!-- 1. 데이터 베이스에서 모든 회원의 정보를 가져옴 2. table태그를 이용하여 화면에 회원들의 정보를 출력 -->

<%
	MemberDAO mdao = new MemberDAO();
	// 회원들의 정보가 얼마나 저장되어있는지 모르기 때문에 가변길이인 Vector를 이용하여 데이터를 저장해 줌
	Vector<Memberbean> vec = mdao.allSelectMember();
%>


</body>
</html>