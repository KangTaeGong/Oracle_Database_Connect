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
	request.setCharacterEncoding("EUC-KR");	// �ѱ�ó��
	
	// ��� �κ��� ������ �о� �ٽ� ��Ŭ������ ����
	String[] hobby = request.getParameterValues("hobby");
	// �迭�� �ִ� ������ �ϳ��� String���� ����
	String text_hobby="";
	
	for(int i = 0; i < hobby.length; i++){
		text_hobby += hobby[i] + " ";
	}
%>

	<!-- usebean�� �̿��Ͽ� �Ѳ����� �����͸� �޾ƿ� -->
	<jsp:useBean id="mbean" class="model.Memberbean">
		<jsp:setProperty name="mbean" property="*"/> <!-- ���� ��Ű�ÿ� -->
	</jsp:useBean>
<%
	mbean.setHobby(text_hobby);	// ���� ��̴� �ּҹ����� ����Ǿ� text_hobby�� ������ �ٽ� �Է�
	
	// ������ ���̽� Ŭ���� ��ü ����
	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean);
	
	// ȸ�� ������ �Ǿ��ٸ� ȸ�� ������ �����ִ� �������� �̵���Ŵ
	response.sendRedirect("MemberList.jsp");
	
	

	// JSP�� JAVA�ڵ尡 �ʹ� ���� ������ ���� ���� JSP���� ȣ���ϴ� ������� ���
	
/* 	//����Ŭ�� �����ϴ� �ҽ��� �ۼ�
	String id = "system";	// ���� ���̵�
	String pass="123456";
	String url="jdbc:oracle:thin:@localhost:1521:XE";	// ���� URL
	
	try{
		// 1. �ش� ������ ���̽��� ����Ѵٰ� ����(Ŭ������ ���=����Ŭ�� ���)
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. �ش� ������ ���̽��� ����
		Connection con = DriverManager.getConnection(url,id,pass);
		// 3. ���� �� �����غ�
		String sql = "insert into member values(?,?,?,?,?,?,?,?)";
		// ������ ����ϵ��� ����
		PreparedStatement pstmt = con.prepareStatement(sql); //PreparedStatement�� JSP���� ������ ����ϵ��� �����ϴ� ��ü
		// ?�� �°� �����͸� ����
		pstmt.setString(1, mbean.getId());
		pstmt.setString(2, mbean.getPass1());
		pstmt.setString(3, mbean.getEmail());
		pstmt.setString(4, mbean.getTel());
		pstmt.setString(5, mbean.getHobby());
		pstmt.setString(6, mbean.getJob());
		pstmt.setString(7, mbean.getAge());
		pstmt.setString(8, mbean.getInfo());
		// 4. ����Ŭ���� ������ �����Ͻÿ�
		pstmt.executeUpdate();	// insert, update, delete�� ����ϴ� �޼ҵ�
		// 5. �ڿ� �ݳ�
		con.close();
	} catch(Exception e){
		e.printStackTrace();
	} */
	
%>

</body>
</html>