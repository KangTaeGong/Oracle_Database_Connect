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
	// StringŸ������ ����Ǿ� �ִ� �н����带 ������(database���� ������ pass ���� ����)
	String pass = mdao.getPass(mbean.getId());
	
	// �����ϱ� ���ؼ� �ۼ��� �н����尪�� ���� �����ͺ��̽����� ������ �н����� ���� ��
	if(mbean.getPass1().equals(pass)){	// ����pass�� �����ͺ��̽� pass�� ���ٸ� ������ member table ����
		// MemberDAOŬ������ ȸ������ �޼ҵ带 ȣ��
		mdao.updateMember(mbean);
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