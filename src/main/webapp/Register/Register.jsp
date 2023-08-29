<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>ギュホONLINE会員登録</title>
<link rel="stylesheet" href="../Register/Register_CSS.css">
<link rel="stylesheet" href="./CSS/bootstrap.min.css">
</head>
<body>
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
                <input type="submit" id="btnJoin" value="同録する" style="border-radius: 1.5em;">
            </div> 
		</div>
	</div>
</form>
<script src="Register_JS.js"></script>
</body>
</html>