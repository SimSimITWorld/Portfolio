<%@page import="com.register.model.RegisterVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.register.model.RegisterDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="register" class="com.register.model.RegisterVO" scope="page"></jsp:useBean>
<jsp:setProperty name="register" property="id"/>
<jsp:setProperty name="register" property="password"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String nickname = request.getParameter("nickname");
	
	if(session.getAttribute("id") != null){
		id=(String)session.getAttribute("id");
	}
	if(session.getAttribute("password") != null){
		password=(String)session.getAttribute("password");
	}
	if(session.getAttribute("nickname") != null){
		nickname=(String)session.getAttribute("nickname");
	}
	
	RegisterVO register1 = new RegisterVO();
	register1.setId(id);
	register1.setPassword(password);
	register1.setNickname(nickname);
	
	RegisterDAO register2 = new RegisterDAO();
	register2.register(register1);
	
	if (id != null){
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('もうログインされています。')");
        script.println("location.href = '/Portfolio/MainPage.jsp'");    // 메인 페이지로 이동
        script.println("</script>");
	}
	if (register.getId() == null || register.getPassword() == null || register.getNickname() == null){
		PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('全部入力してください。');");
        script.println("history.back();");    // 이전 페이지로 사용자를 보냄
        script.println("</script>");
	}else{
		RegisterDAO registerPro = new RegisterDAO();
        int result = registerPro.register(register);
        if (result == -1){ // 회원가입 실패시
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('もう存在しているIDです。')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
        }else{ // 회원가입 성공시
        	session.setAttribute("id", register.getId()); // 추가
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = '/Portfolio/MainPage.jsp'");    // 메인 페이지로 이동
            script.println("</script>");     
        }
	}
%>
</body>
</html>