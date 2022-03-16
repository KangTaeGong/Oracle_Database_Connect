<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<body>

<%
	request.setCharacterEncoding("EUC-KR");	// 한글처리
	
	// 취미 부분은 별도로 읽어 다시 빈클래스에 저장
	String[] hobby = request.getParameterValues("hobby");
	// 배열에 있는 내용을 하나의 String으로 저장
	String text_hobby="";
	
	for(int i = 0; i < hobby.length; i++){
		text_hobby += hobby[i] + " ";
	}
%>

	<!-- usebean을 이용하여 한꺼번에 데이터를 받아옴 -->
	<jsp:useBean id="mbean" class="model.Memberbean">
		<jsp:setProperty name="mbean" property="*"/> <!-- 맵핑 시키시오 -->
	</jsp:useBean>
<%
	mbean.setHobby(text_hobby);	// 기존 취미는 주소번지가 저장되어 text_hobby의 내용을 다시 입력
	
	// 데이터 베이스 클래스 객체 생성
	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean);
	
	// 회원 가입이 되었다면 회원 정보를 보여주는 페이지로 이동시킴
	response.sendRedirect("MemberList.jsp");
	
	

	// JSP에 JAVA코드가 너무 많기 때문에 따로 빼서 JSP에서 호출하는 방식으로 사용
	
/* 	//오라클에 접속하는 소스를 작성
	String id = "system";	// 접속 아이디
	String pass="123456";
	String url="jdbc:oracle:thin:@localhost:1521:XE";	// 접속 URL
	
	try{
		// 1. 해당 데이터 베이스를 사용한다고 선언(클래스를 등록=오라클을 사용)
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. 해당 데이터 베이스에 접속
		Connection con = DriverManager.getConnection(url,id,pass);
		// 3. 접속 후 쿼리준비
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		// 쿼리를 사용하도록 설정
		PreparedStatement pstmt = con.prepareStatement(sql); //PreparedStatement는 JSP에서 쿼리를 사용하도록 설정하는 객체
		// ?에 맞게 데이터를 맵핑
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass1());
		pstmt.setString(3, mbean.getEmail());
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getHobby());
		pstmt.setString(6, mbean.getJob());
		pstmt.setString(7, mbean.getAge());
		pstmt.setString(8, mbean.getInfo());
		// 4. 오라클에서 쿼리를 실행하시오
		pstmt.executeUpdate();	// insert, update, delete시 사용하는 메소드
		// 5. 자원 반납
		con.close();
	} catch(Exception e){
		e.printStackTrace();
	} */
	
%>

</body>
</html>