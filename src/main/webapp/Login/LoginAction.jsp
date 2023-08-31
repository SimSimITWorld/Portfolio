<%@page import="com.login.model.ConnUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import=  "com.login.model.LoginVO" %>
<%@ page import = "com.login.model.LoginDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="login" class="com.login.model.LoginVO" scope="application" />
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

	login.setId(id);
	login.setPassword(password);
	
	LoginDAO LoginPro = new LoginDAO();
    int result = LoginPro.Login(login, password);
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = "SELECT NICKNAME FROM PORTFOLIO_MEMBER WHERE ID=?";
    try{
    	conn = ConnUtil.getConnection();
    	pstmt = conn.prepareStatement(sql);
    	pstmt.setString(1, id);
    	rs = pstmt.executeQuery();
    	if(rs.next()){
    		nickname = rs.getString("nickname");
    		login.setNickname(nickname);
    	}
    }catch(Exception e){
    	e.printStackTrace();
    }finally{
    	try{if(conn!=null){conn.close();}}catch(Exception e){e.printStackTrace();}
    	try{if(pstmt!=null){pstmt.close();}}catch(Exception e){e.printStackTrace();}
    	try{if(rs!=null){rs.close();}}catch(Exception e){e.printStackTrace();}
    }
    
    if(result == 0){
    	PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('パスワードを再び確認してください。')");
        script.println("history.back()");    // 前のページへユーザーを送る
        script.println("</script>");
        script.close();
    }else if (result == -1){ // 
        PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('IDを再び確認してください。')");
        script.println("history.back()");    // 前のページへユーザーを送る
        script.println("</script>");
        script.close();
        return;
    }else if(result == -2){
    	PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('データベースにエラーが発生しました。')");
        script.println("history.back()");    // 前のページへユーザーを送る
        script.println("</script>");
        script.close();
        return;
    }else{ // ログインを成功した場合
        PrintWriter script = response.getWriter();
    	session.setAttribute("id", id);
    	session.setAttribute("nickname", login.getNickname());
        script.println("<script>");
        script.println("location.href = '/Portfolio/MainPage.jsp'");    // メインページへ
        script.println("</script>");     
    }
%>
</body>
</html>