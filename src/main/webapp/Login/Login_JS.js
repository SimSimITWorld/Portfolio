/*　コールバック関数 */


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
}