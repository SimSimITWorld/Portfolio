<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ようこそ！ジュニア開発者SimGyuHoページへ！</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<link rel="stylesheet" href="CSS/Header_Style.css" />
<link rel="stylesheet" href="CSS/AboutMe.css" />
<!-- font -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100;400;600;700;800;900&family=Zen+Maru+Gothic&display=swap" rel="stylesheet">
</head>
<body class="vh-100 overflow-hidden">
<%
	String id = null;
	String nickname = null;
	if(session.getAttribute("id")!=null){
		id = (String)session.getAttribute("id");
	}
	if(session.getAttribute("nickname")!=null){
		nickname = (String)session.getAttribute("nickname");
	}
%>
<!-- header --> 
<div class="header">
<nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
  <div class="container">
  	<!-- logo -->
    <a class="navbar-brand" fs-4 href="#">SGH's Portfolio</a>
    <!-- toggle btn -->
    <button class="navbar-toggler shadow-none border-0" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!-- sidebar -->
    <div class="sidebar offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
      <!-- sidebar header -->
      <div class="offcanvas-header text-white border-bottom">
        <h5 class="offcanvas-title" id="offcanvasNavbarLabel">SGH's Portfolio</h5>
        <button type="button" class="btn-close btn-close-white shadow-none" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <!-- sidebar body -->
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-center align-items-center flex-grow-1 pe-3">
          <li class="nav-item mx-2">
            <a class="nav-link" href="#aboutme">About me</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#skills">Skills</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#archiving">Archiving</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#project">Project</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="#career">Career</a>
          </li>
        </ul>
          <br><hr>
          <!-- login / sign up -->
          <% if(id == null){%>
          <div class="d-flex justify-content-center align-items-center gap-3">
          	<a href="login.jsp" class="text-white">ログイン</a>
          	<a href="/Portfolio/Register/Register.jsp" class="text-white text-decoration-none px-3 py-1 rounded-4" style="background-color: gray">同録する</a>
          </div>
          <%}else{ %>
          <div class="d-flex justify-content-center align-items-center gap-3">
          	<h2 style="color: white; font-size: 120%; margin-top: 3%"><%=nickname %> 様ようこそ</h2>
          	<a href="/Portfolio/Logout/Logout.jsp" class="text-white text-decoration-none px-3 py-1 rounded-4" style="background-color: gray">ログアウト</a>
          </div>
          <% } %> 
      </div>
    </div>
  </div>
</nav>
<br><br>
<main>
	<section class="d-flex flex-column justify-content-top align-items-center text-white fs-5">
		<div style="line-height: 100%; font-size: 120%; font-weight: bolder;" align="center">
			<h1>- シムギュホ -</h1><br>
			<h1>開発者ポートフォリオ</h1>
		</div>
	</section>
	<section class="d-flex flex-column justify-content-top align-items-center text-white fs-5">
		<div style= "color: orange;" align="center">
			<h1 style="font-size: 500%; line-height: 30%;">-</h1><br>
		</div>
	</section>
	<section class="d-flex flex-column justify-content-top align-items-center text-white fs-3">
		<div style="line-height: 70%; font-size: 70%" align="center">
			<h3>コミュニケーションの大切さを忘れずに</h3><br>
			<h3>自分の実力を発展し,</h3><br>
			<h3>危険を機会に変わるのが私の長所です。</h3><br>
		</div>
	</section>
</main>
</div>
<!-- About Me -->
<div>
ㅎㅇ
</div>
</body>
</html>