<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ギュホONLINE会員登録</title>
<link rel="stylesheet" href="../CSS/Register_CSS.css">
<link rel="stylesheet" href="./CSS/bootstrap.min.css">
<!-- font -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100;400;600;700;800;900&family=Zen+Maru+Gothic&display=swap" rel="stylesheet">
</head>
<body>
<div class="header">
<nav class="navbar navbar-expand-lg navbar-dark bg-transparent">
  <div class="container">
  	<!-- logo -->
   <h1 align="center" style="padding-top: 1%; margin: 0;"><a class="navbar-brand" fs-4 href="/Portfolio/MainPage.jsp" style="font-size: 250%; text-decoration: none; color: white;">SGH's Portfolio</a></h1>
  </div>
</nav>
</div><br><br>
<form action="RegisterAction.jsp" method="post">
	<div id="wrapper">
		<div id="content">
			<!-- ID -->
			<div>
				<h3 class="join_title">
					<label for="id">ID</label>
				</h3>
				<span class="box int_id">
					<input type="text" id="id" name="id" class="int" maxlength="20">
				</span>
				<span class="error_next_box"></span>
			</div>
			<!-- PASSWORD -->
			<div>
				<h3 class="join_title"><label for="password">パスワード</label></h3>
				<span class="box int_pass">
					<input type="password" id="password" name="password" class="int" maxlength="20">
					<span id="alertTxt">使用不可</span>
					<img alt="パスワード" src="../Pic_Source/パスワード.png" id="passwordImg" class="passwordImg">
				</span>
				<span class="error_next_box"></span>
			</div>
            <!-- ニックネーム -->
            <div>
                <h3 class="join_title"><label for="nickname">ニックネーム</label></h3>
                <span class="box int_name">
                    <input type="text" id="nickname" name="nickname" class="int" maxlength="20">
                </span>
                <span class="error_next_box"></span>
            </div>
            <!-- 同録　-->
            <div class="btn_area">
                <input type="submit" id="btnJoin" value="同録する" style="border-radius: 1.5em;" onclick="check()">
            </div> 
		</div>
	</div>
</form>
<script src="../JS/Register_JS.js"></script>
</body>
</html>