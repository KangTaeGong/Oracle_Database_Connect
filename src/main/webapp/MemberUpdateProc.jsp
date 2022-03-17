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
	// String타입으로 저장되어 있는 패스워드를 가져옴(database에서 가져온 pass 값이 저장)
	String pass = mdao.getPass(mbean.getId());
	
	// 수정하기 위해서 작성한 패스워드값과 기존 데이터베이스에서 가져온 패스워드 값을 비교
	if(mbean.getPass1().equals(pass)){	// 기존pass와 데이터베이스 pass가 같다면 데이터 member table 수정
		// MemberDAO클래스의 회원수정 메소드를 호출
		mdao.updateMember(mbean);
		response.sendRedirect("MemberList.jsp");
	}else{
%>
	<script type="text/javascript">
		alert("패스워드가 맞지 않습니다. 다시 확인해 주세요.");
		history.go(-1);
	</script>
<%
	}
%>	

</body>
</html>