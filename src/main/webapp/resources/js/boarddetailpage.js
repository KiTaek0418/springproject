/**
 * 디테일 페이지
 */
$(document).ready(function($){
	
	$("#modify").on("click", function() {
		$("#frm").attr("action", "/board/modify");
	});
	
	$("#remove").on("click", function() {
		$("#frm").attr("action", "/board/delete");
	});
	
});