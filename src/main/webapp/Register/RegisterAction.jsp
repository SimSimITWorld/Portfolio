<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import=  "com.register.model.RegisterVO" %>
<%@ page import = "com.register.model.RegisterDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="join" class="com.register.model.RegisterVO" scope="application" />
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
	
	join.setId(id);
	join.setPassword(password);
	join.setNickname(nickname);
	
	session.setAttribute("nickname", nickname);
	
	
	if (join.getId() == null || join.getPassword() == null || join.getNickname() == null){
		PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('全部入力してください。');");
        script.println("history.back();");    // 이전 페이지로 사용자를 보냄
        script.println("</script>");
        script.close();
        return;
	}else{
		RegisterDAO registerPro = new RegisterDAO();
        int result = registerPro.register(join);
        if (result == -1){ // 회원가입 실패시
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('もう存在しているIDです。')");
            script.println("history.back()");    // 이전 페이지로 사용자를 보냄
            script.println("</script>");
            script.close();
            return;
        }else{ // 회원가입 성공시
        	session.setAttribute("id", join.getId()); // 추가
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = '/Portfolio/MainPage.jsp'");    // 메인 페이지로 이동
            script.println("</script>");     
        }
	}
%>
</body>
</html>