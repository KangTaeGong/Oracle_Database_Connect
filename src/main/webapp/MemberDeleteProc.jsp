<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

<%
	request.setCharacterEncoding("EUC-KR");
%>
	<jsp:useBean id="mbean" class="model.Memberbean">
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
<%
	MemberDAO mdao = new MemberDAO();
	String pass = mdao.getPass(mbean.getId());
	
	if(mbean.getPass1().equals(pass)){
		// MemberDAOŬ������ ȸ������ �޼ҵ带 ȣ��
		mdao.deleteMember(mbean.getId());
		response.sendRedirect("MemberList.jsp");
	}else{
%>
	<script type="text/javascript">
		alert("�н����尡 ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���.");
		history.go(-1);
	</script>
<%
	}
%>
</body>
</html>