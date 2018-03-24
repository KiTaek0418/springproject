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
    	mpw = $('#mpw'), 
    	upw = $('#upw'), 
    	pw = $('#pw'), 
    	pwChk = $('#pwChk');
    /**
     * 패턴
     */
    var blank_pattern = /[\s]/g; //공백 체크
    var kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    var eng = /[a-zA-Z]/;
    var idchk =  /^[a-zA-Z0-9]*$/;
    var namechk =  /^[a-zA-Z가-힣]*$/;
    var hanja = /[\u4E00-\u9FD5]/g; //한자 추출
    var num = /^[0-9]+$/;
    var ptMail = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
    
//    $('#btId, #pwd, #pwdCheck, #irum, #email, #zipNum, #addr1, #addr2, #phone').after('<strong></strong>');
    $('#newPwError, #pwError, #pwChkError').after('<strong></strong>');
    
    /**
     * 기존 비밀번호 체크
     */
    mpw.blur( function() {
		var s = $("#pwError").next('strong'); // strong 요소를 변수에 할당
		if (mpw.val().length == 0) { // 입력 값이 없을 때
			$("#oripw").val("0");
			s.text(''); // strong 요소에 포함된 문자 지움
		} else if (upw.val() != mpw.val()) {
			s.text('비밀번호가 틀렸습니다.').css({"color": "red", "font-weight": "bold"}); // strong 요소에 문자 출력
			$("#oripw").val("1");
		} else { // 입력 값이 3 이상 16 이하일 때
			s.text('비밀번호 변경이 가능합니다.').css({"color": "blue", "font-weight": "bold"}); // strong 요소에 문자 출력
			$("#oripw").val("0");
		}
	});
    
    /**
     * 새 비밀번호 체크
     */
    pw.blur( function() {
		var s = $("#newPwError").next('strong'); // strong 요소를 변수에 할당
		if (pw.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
			$("#newpw").val("0");
		} else if (blank_pattern.test(pw.val()) == true || kor.test(pw.val()) == true || pw.val().length < 6) { // 유효하지 않은 문자 입력 시
			s.text('6~20자 영문 대 소문자, 숫자, 특수문자만 사용 가능합니다.').css({"color": "red", "font-weight": "bold"}); // strong 요소에 문자 출력
		} else if (upw.val() == pw.val()) { 
			s.text('이전 비밀번호와 같습니다.'); 
			$("#newpw").val("1");
		} else {
			s.text('비밀번호 변경이 가능합니다.').css({"color": "blue", "font-weight": "bold"}); // strong 요소에 문자 출력
			$("#newpw").val("0");
		}
		
		if (pwChk.val() != pw.val()) {
			$("#pwChkError").next('strong').text('입력한 비밀번호와 다릅니다.').css({"color": "red", "font-weight": "bold"});; // strong 요소에 문자 출력
			$("#pwResult").val("1");
    	}
	});   
    
    /**
     * 비밀번호 확인 체크
     */
    pwChk.blur( function() {
		var s = $("#pwChkError").next('strong'); // strong 요소를 변수에 할당
		if (pwChk.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
			$("#pwResult").val("0");
		} else if (pwChk.val() != pw.val()) {
			s.text('입력한 비밀번호와 다릅니다.').css({"color": "red", "font-weight": "bold"});; // strong 요소에 문자 출력
			$("#pwResult").val("1");
		} else { // 입력 값이 3 이상 16 이하일 때
			s.text('비밀번호가 일치합니다.').css({"color": "blue", "font-weight": "bold"});; // strong 요소에 문자 출력
			$("#pwResult").val("0");
		}
	});
    
});

function go_save() {
	if(document.frm.oripw.value == 1) {
		alert("기존 비밀 번호를 확인해주십시오.");
		document.frm.mpw.focus();
		document.frm.mpw.select();
		return false;
	}
	
	if (document.frm.newpw.value == 1) {
		alert("변경 할 비밀 번호를 확인해주십시오.");
		document.frm.pw.focus();
		document.frm.pw.select();
		return false;
	} 
	
	if (document.frm.pwResult.value == 1) {
		alert("입력한 비밀번호와 다릅니다.");
		document.frm.pwChk.focus();
		document.frm.pwChk.select();
		return false;
	} 
	
	alert("비밀번호가 변경 되었습니다.");
	
}