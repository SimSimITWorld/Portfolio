<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ギュホONLINE会員登録</title>
<link rel="stylesheet" href="../Register/Register_CSS.css">
</head>
<body>
<div id="header">
	<a href="../All/Index.jsp" target="_blank" title="メインページへ"><img src="../Picture_Source/logo.png" id="logo"></a>
</div>
<form action="RegisterAction.jsp" method="post">
	<div id="wrapper">
		<div id="content">
			<!-- ID -->
			<div>
				<h3 class="join_title">
					<label for="id">ユーザID</label>
				</h3>
				<span class="box int_id">
					<input type="text" id="id" class="int" maxlength="20">
					<span class="step_url">@GyuhoOnline.co.jp</span>
				</span>
				<span class="error_next_box"></span>
			</div>
			<!-- PW -->
			<div>
				<h3 class="join_title"><label for="pswd1">パスワード</label></h3>
				<span class="box int_pass">
					<input type="password" id="pswd1" class="int" maxlength="20">
					<span id="alertTxt">使用不可</span>
					<img alt="パスワード" src="../Picture_Source/パスワード.png" id="pswdImg1" class="pswdImg">
				</span>
				<span class="error_next_box"></span>
			</div>
			<!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">パスワードチェック</label></h3>
                <span class="box int_pass_check">
                    <input type="password" id="pswd2" class="int" maxlength="20">
                    <img src="../Picture_Source/パスワードチェック.png" id="pswdImg2" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>
            <!-- 氏名 -->
            <div>
                <h3 class="join_title"><label for="name">氏名</label></h3>
                <span class="box int_name">
                    <input type="text" id="name" class="int" maxlength="20">
                </span>
                <span class="error_next_box"></span>
            </div>
            <!-- 誕生日 -->
            <div>
                <h3 class="join_title"><label for="yy">生年月日</label></h3>
                <div id="bir_wrap">
                    <!-- 誕生日_年 -->
                    <div id="bir_yy">
                        <span class="box">
                            <input type="text" id="yy" class="int" maxlength="4" placeholder="年(4字)">
                        </span>
                    </div>
                    <!-- 誕生日_月 -->
                    <div id="bir_mm">
                        <span class="box">
                            <select id="mm" class="sel">
                                <option>月</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>                                    
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </span>
                    </div>
                    <!-- 誕生日_日 -->
                    <div id="bir_dd">
                        <span class="box">
                            <input type="text" id="dd" class="int" maxlength="2" placeholder="日">
                        </span>
                    </div>
                </div>
                <span class="error_next_box"></span>    
            </div>
            <!-- 性別 -->
            <div>
                <h3 class="join_title"><label for="gender">性別</label></h3>
                <span class="box gender_code">
                    <select id="gender" class="sel">
                        <option>性別</option>
                        <option value="M">男</option>
                        <option value="F">女</option>
                    </select>                            
                </span>
                <span class="error_next_box">必須項目でございます。</span>
            </div>
            <!-- メール -->
            <div>
                <h3 class="join_title"><label for="email">メールアドレス<span class="optional">（選択）</span></label></h3>
                <span class="box int_email">
                    <input type="text" id="email" class="int" maxlength="100" placeholder="選択入力">
                </span>
                <span class="error_next_box">メールアドレスをもう一度チェックしてください。</span>    
            </div>
            <!-- ケータイ -->
            <div>
                <h3 class="join_title"><label for="phoneno">ケータイ</label></h3>
                <span class="box int_mobile">
                    <input type="tel" id="mobile" class="int" maxlength="16" placeholder="電話番号入力">
                </span>
                <span class="error_next_box"></span>    
            </div>
            <!-- 同録　-->
            <div class="btn_area">
                <input type="submit" id="btnJoin" value="同録する" onclick="return signCheck()">
            </div> 
		</div>
	</div>
	<script src="Register_JS.js"></script>
</form>
</body>
</html>