/*変数宣言*/

var id = document.querySelector('#id');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');

var userName = document.querySelector('#name');

var yy = document.querySelector('#yy');
var mm = document.querySelector('#mm');
var dd = document.querySelector('#dd');

var gender = document.querySelector('#gender');

var email = document.querySelector('#email');

var mobile = document.querySelector('#mobile');

var error = document.querySelectorAll('.error_next_box');



/*　イベントハンドラー接続　*/


id.addEventListener("focusout", checkId);
pw1.addEventListener("focusout", checkPw);
pw2.addEventListener("focusout", comparePw);
userName.addEventListener("focusout", checkName);
yy.addEventListener("focusout", isBirthCompleted);
mm.addEventListener("focusout", isBirthCompleted);
dd.addEventListener("focusout", isBirthCompleted);
gender.addEventListener("focusout", function() {
    if(gender.value === "性別") {
        error[5].style.display = "block";
    } else {
        error[5].style.display = "none";
    }
})
email.addEventListener("focusout", isEmailCorrect);
mobile.addEventListener("focusout", checkPhoneNum);





/*　コールバック関数 */


function checkId() {
    var idPattern = /[a-zA-Z0-9_-]{5,20}/;
    if(id.value === "") {
        error[0].innerHTML = "必須項目";
        error[0].style.display = "block";
    } else if(!idPattern.test(id.value)) {
        error[0].innerHTML = "5~20文字の英文小文字、数字、特殊文字(_),(-)しか使用出来ません。";
        error[0].style.display = "block";
    } else {
        error[0].innerHTML = "いいIDですね!";
        error[0].style.color = "#08A600";
        error[0].style.display = "block";
    }
}

function checkPw() {
    var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
    if(pw1.value === "") {
        error[1].innerHTML = "必須項目";
        error[1].style.display = "block";
    } else if(!pwPattern.test(pw1.value)) {
        error[1].innerHTML = "8~16文字の英文大文字・小文字・数字・特殊文字を使用してください。";
        pwMsg.innerHTML = "使用不可";
        pwMsgArea.style.paddingRight = "93px";
        error[1].style.display = "block";
        
        pwMsg.style.display = "block";
        pswdImg1.src = "../Picture_Source/パスワード使用不可.png";
    } else {
        error[1].style.display = "none";
        pwMsg.innerHTML = "安全";
        pwMsg.style.display = "block";
        pwMsg.style.color = "#03c75a";
        pswdImg1.src = "../Picture_Source/パスワード安全.png";
    }
}

function comparePw() {
    if(pw2.value === pw1.value && pw2.value != "") {
        pswdImg2.src = "../Picture_Source/パスワード安全.png";
        error[2].style.display = "none";
    } else if(pw2.value !== pw1.value) {
        pswdImg2.src = "../Picture_Source/パスワード使用不可.png";
        error[2].innerHTML = "パスワードが一致しません。";
        error[2].style.display = "block";
    } 

    if(pw2.value === "") {
        error[2].innerHTML = "必須項目";
        error[2].style.display = "block";
    }
}

function checkName() {
    var namePattern = /[a-zA-Zあ-んア-ン]/;
    if(userName.value === "") {
        error[3].innerHTML = "必須項目";
        error[3].style.display = "block";
    } else if(!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
        error[3].innerHTML = "ひらがな・カタカナと英語の大文字・小文字を使ってください。（特殊文字・空白使用不可）";
        error[3].style.display = "block";
    } else {
        error[3].style.display = "none";
    }
}


function isBirthCompleted() {
    var yearPattern = /[0-9]{4}/;

    if(!yearPattern.test(yy.value)) {
        error[4].innerHTML = "生まれた年の4桁を正確に入力してください。";
        error[4].style.display = "block";
    } else {
        isMonthSelected();
    }


    function isMonthSelected() {
        if(mm.value === "月") {
            error[4].innerHTML = "生まれた月を選んでください。";
        } else {
            isDateCompleted();
        }
    }

    function isDateCompleted() {
        if(dd.value === "") {
            error[4].innerHTML = "生まれた日（日付）２桁を正確に入力してください。";
        } else {
            isBirthRight();
        }
    }
}



function isBirthRight() {
    var datePattern = /\d{1,2}/;
    if(!datePattern.test(dd.value) || Number(dd.value)<1 || Number(dd.value)>31) {
        error[4].innerHTML = "生年月日をもう一度確認してください。";
    } else {
        checkAge();
    }
}

function checkAge() {
    if(Number(yy.value) < 1920) {
        error[4].innerHTML = "マジで？";
        error[4].style.display = "block";
    } else if(Number(yy.value) > 2024) {
        error[4].innerHTML = "未来から来ましたね！^^";
        error[4].style.display = "block";
    } else if(Number(yy.value) > 2010) {
        error[4].innerHTML = "14歳未満の子供は保護者の同意が必要です。";
        error[4].style.display = "block";
    } else {
        error[4].style.display = "none";
    }
}


function isEmailCorrect() {
    var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

    if(email.value === ""){ 
        error[6].style.display = "none"; 
    } else if(!emailPattern.test(email.value)) {
        error[6].style.display = "block";
    } else {
        error[6].style.display = "none"; 
    }

}

function checkPhoneNum() {
    var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

    if(mobile.value === "") {
        error[7].innerHTML = "必須項目";
        error[7].style.display = "block";
    } else if(!isPhoneNum.test(mobile.value)) {
        error[7].innerHTML = "形式に合わない番号です。";
        error[7].style.display = "block";
    } else {
        error[7].style.display = "none";
    }

    
}