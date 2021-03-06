/**
 * 회원가입 관련 스크립트
 */


/**
 * 약관 동의
 */
$(document).ready(function($){  
    /**
     * 인풋태그 네임
     */
    var form = $('#frm'), 
    	id = $('#id'), 
    	pw = $('#pw'), 
    	pwChk = $('#pwChk'), 
    	name = $('#name'),
    	next = $('#next'),
    	phone = $('#phone'),
    	mail = $('#email'),
    	nick = $('#nick'); 
    
    /**
     * 패턴
     */
    var blank_pattern = /[\s]/g; //공백 체크
    var kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    var eng = /[a-zA-Z]/;
    var idchk =  /^[a-z0-9]*$/;
    var namechk =  /^[a-zA-Z가-힣]*$/;
    var hanja = /[\u4E00-\u9FD5]/g; //한자 추출
    var num = /^[0-9]+$/;
    var ptMail = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
    
//    $('#btId, #pwd, #pwdCheck, #irum, #email, #zipNum, #addr1, #addr2, #phone').after('<strong></strong>');
    $('#idChk, #pwError, #pwChkError, #nameError, #phoneError, #nickError, #emailError').after('<strong></strong>');

    /**
     * 이름 체크
     */
    name.keyup( function() {
		var s = $("#nameError").next('strong'); // strong 요소를 변수에 할당
		if (name.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
			return false;
		} else if (blank_pattern.test(name.val()) == true || namechk.test(name.val()) == false || name.val().length < 2) { // 유효하지 않은 문자 입력 시
			s.text('2~5자 영문 대 소문자, 한글만 사용 가능합니다.').css({"color": "red", "font-weight": "bold"});
			return false;
		} else {
			s.text("사용 가능한 이름 입니다.").css({"color": "blue", "font-weight": "bold"});
		}
	});
    
    /**
     * 닉네임 체크
     */
    nick.keyup( function() {
		var s = $("#nickError").next('strong'); // strong 요소를 변수에 할당
		if (nick.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
		} else if (blank_pattern.test(nick.val()) == true || nick.val().length < 1) { // 유효하지 않은 문자 입력 시
			s.text('1~15자 공백 없는 문자만 사용 가능합니다.').css({"color": "red", "font-weight": "bold"}); // strong 요소에 문자 출력
		} else { // 입력 값이 3 이상 16 이하일 때
			s.text("사용 가능한 닉네임 입니다.").css({"color": "blue", "font-weight": "bold"});
		}
	});
    
    /**
     * 이메일 체크
     */
   mail.keyup( function() {
		var s = $("#emailError").next('strong'); // strong 요소를 변수에 할당
		if (mail.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
			return false;
		} else if (blank_pattern.test(mail.val()) == true || ptMail.test(mail.val()) == false) { // 유효하지 않은 문자 입력 시
			s.text('이메일 형식을 맞춰주세요.(ex:test@naver.com)').css({"color": "red", "font-weight": "bold"}); // strong 요소에 문자 출력
			return false;
		} else { // 입력 값이 3 이상 16 이하일 때
			s.text("사용 가능한 이메일 입니다.").css({"color": "blue", "font-weight": "bold"});
		}
	});
   
   /**
    * 휴대폰 체크
    */
   phone.keyup( function() {
		var s = $("#phoneError").next('strong'); // strong 요소를 변수에 할당
		if (phone.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
			return false;
		} else if (blank_pattern.test(phone.val()) == true || num.test(phone.val()) == false || phone.val().length < 9) {
			s.text('휴대폰 번호 형식을 맞춰주세요.').css({"color": "red", "font-weight": "bold"});
			return false;
		} else { // 입력 값이 3보다 작을 때
			s.text("사용 가능한 휴대폰 번호입니다.").css({"color": "blue", "font-weight": "bold"});
		}
	});
    
});


/**
 * 회원 가입 버튼
 */
/**
 * 회원 가입 버튼
 */
function go_save() {
	alert("!!");
	var pw = document.frm.pw.value;
	var pwChk = document.frm.pwChk.value;
	var name = document.frm.name.value;
	var mail = document.frm.email.value;
	var phone = document.frm.phone.value;
	var nick = document.frm.nick.value;
	var nameLength = document.frm.name.value.length;
	
	var blank_pattern = /[\s]/g; //공백 체크
	var kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	var num = /^[0-9]+$/;
	var ptMail = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
	var namechk =  /^[a-zA-Z가-힣]*$/;
	
	if(blank_pattern.test(name) == true || name == "" || namechk.test(name) == false) {
		 alert("이름을 올바르게 입력 하십시오");
		 document.frm.name.focus();
		 document.frm.name.select();
		 return false;
	}
	
	if(nameLength < 2) {
		alert("이름은 2글자 이상 15글자 이하로 적으십시오.");
		document.frm.name.focus();
		document.frm.name.select();
		return false;
	}
	
	if(blank_pattern.test(mail) == true || mail == "") {
		 alert("이메일을 올바르게 입력 하십시오");
		 document.frm.mail.focus();
		 document.frm.mail.select();
		 return false;
	}
	
	if(kor.test(mail) == true) {
		alert("이메일에 한글을 입력 할 수 없습니다.");
		 document.frm.mail.focus();
		 document.frm.mail.select();
		 return false;
	}
	
	if(ptMail.test(mail) == false) {
		alert("이메일 형식이 잘못 되었습니다.")
		 document.frm.mail.focus();
		 document.frm.mail.select();
		 return false;
	}
	
	if(blank_pattern.test(phone) == true || num.test(phone) == false) {
		 alert("폰 번호를 올바르게 입력 하십시오");
		 document.frm.phone.focus();
		 document.frm.phone.select();
		 return false;
	}
	
	if(blank_pattern.test(nick) == true) {
		 alert("닉네임을 올바르게 입력 하십시오");
		 document.frm.nick.focus();
		 document.frm.nick.select();
		 return false;
	}
	
	if(pw != pwChk) {
		alert("비밀번호를 확인해 주십시오.");
		document.frm.pw.focus();
		document.frm.pw.select();
		return false;
	}
}
	
