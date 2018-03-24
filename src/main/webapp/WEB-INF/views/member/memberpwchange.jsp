<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<%@ include file="../new_include/header.jsp" %>

<script src="../resources/js/memberpwchange.js"></script>

<section id="main-content">
    <section class="wrapper">
    	<h3><i class="fa fa-angle-right"></i> 비밀번호 변경</h3>
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<form role="form" method="post" id="frm" name="frm" onsubmit="return go_save();">
						<div class="box-body">
							<div class="form-group" style="width: 600px;">
								<label>ID</label>
								<input type="text" class="form-control" id="id" name="id" value="${memList.id}" readonly="readonly">
								<div style="height: 25px;">
									<span id="idChk" style="margin-top: 5px;"></span>
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="pw">PASS WORD</label>
								<input type="password" id="mpw" name="mpw" class="form-control" placeholder="Enter PASS WORD">
								<div style="height: 25px;">
									<span id="pwError"></span>
								</div>
								<input type="hidden" id="upw" name="upw" value="${memList.pw}">
								<input type="hidden" id="oripw" name="oripw" value="0">
								<input type="hidden" id="newpw" name="newpw" value="0">
								<input type="hidden" id="pwResult" name="pwResult" value="0">
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="pw">NEW PASS WORD</label>
								<input type="password" id="pw" name="pw" class="form-control" placeholder="Enter PASS WORD">
								<div style="height: 25px;">
									<span id="newPwError"></span>
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="pwChk">NEW PASS WORD CHECK</label>
								<input type="password" id="pwChk" name="pwChk" class="form-control" placeholder="Enter PASS WORD">
								<div style="height: 25px;">
									<span id="pwChkError"></span>
								</div>
							</div>
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="joinBtn">Change</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</section>

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>