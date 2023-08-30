/*変数宣言*/

var id = document.querySelector('#id');

var password = document.querySelector('#password');
var passwordMsg = document.querySelector('#alertTxt');
var passwordImg = document.querySelector('#passwordImg');

var passwordMsgArea = document.querySelector('.int_pass');

var nickname = document.querySelector('#nickname');

var error = document.querySelectorAll('.error_next_box');



/*　イベントハンドラー接続　*/


id.addEventListener("focusout", checkId);
password.addEventListener("focusout", checkPassword);
nickname.addEventListener("focusout", checkNickname);


/*　コールバック関数 */


function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(id.value === "") {
        error[0].innerHTML = "必須項目";
        error[0].style.display = "block";
    } else if(!idPattern.test(id.value)) {
        error[0].innerHTML = "5~20文字の英文小文字、数字、特殊文字(_),(-)しか使用出来ません。";
        error[0].style.display = "block";
		id.value = null;
    } else {
        error[0].innerHTML = "いいIDですね!";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }
}

function checkPassword() {
    var passwordPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(password.value === "") {
        error[1].innerHTML = "必須項目";
        error[1].style.display = "block";
    } else if(!passwordPattern.test(password.value)) {
        error[1].innerHTML = "8~16文字の英文大文字・小文字・数字・特殊文字を使用してください。";
        passwordMsg.innerHTML = "使用不可";
		passwordMsg.style.color = "red";
        passwordMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";  
        passwordMsg.style.display = "block";
        passwordImg.src = "/Portfolio/Pic_Source/パスワード使用不可.png";
		password.value = null;
    } else {
        error[1].style.display = "none";
        passwordMsg.innerHTML = "安全";
        passwordMsg.style.display = "block";
        passwordMsg.style.color = "#03c75a";
        passwordImg.src = "/Portfolio/Pic_Source/パスワード安全.png";
    }
}



function checkNickname() {
    var nicknamePattern = /[a-zA-Zあ-んア-ン]/;
    if(nickname.value === "") {
        error[2].innerHTML = "必須項目";
        error[2].style.display = "block";
    } else if(!nicknamePattern.test(nickname.value) || nickname.value.indexOf(" ") > -1) {
        error[2].innerHTML = "ひらがな・カタカナと英語の大文字・小文字を使ってください。（特殊文字・空白使用不可）";
        error[2].style.display = "block";
		nickname.value = null;
    } else {
        error[2].style.display = "none";
    }
}

function check(){
	if(document.getElementById("id").value==""){
		alert("IDを入力してください。");
		document.getElementById("id").focus();
		event.preventDefault();
	}
	
	else if(document.getElementById("password").value==""){
		alert("パスワードを入力してください。");
		document.getElementById("password").focus();
		event.preventDefault();
	}
	
	else if(document.getElementById("nickname").value==""){
		alert("ニックネームを入力してください。");
		document.getElementById("nickname").focus();
		event.preventDefault();
	}
}