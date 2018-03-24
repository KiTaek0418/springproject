<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<%@ include file="../new_include/header.jsp" %>

<script src="../resources/js/membermodify.js"></script>

<section id="main-content">
    <section class="wrapper">
    	<h3><i class="fa fa-angle-right"></i> 내 정보 수정</h3>
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<form role="form" method="post" id="frm" name="frm" onsubmit="return go_save();">
						<div class="box-body">
							<div class="form-group" style="width: 600px;">
								<label>ID</label>
								<input type="text" id="id" name="id" class="form-control" value="${memList.id}" readonly="readonly">
								<div style="height: 25px;">
									<span id="idChk" style="margin-top: 5px;"></span>
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="pw">PASS WORD</label>
								<input type="password" id="pw" name="pw" class="form-control" maxlength="20">
								<div style="height: 25px;">
									<span id="pwError"></span>
									<input type="hidden" value="${memList.pw}" id="pwChk" name="pwChk">
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="name">NAME</label>
								<input type="text" id="name" name="name" class="form-control" placeholder="${memList.name}" maxlength="5">
								<div style="height: 25px;">
									<span id="nameError"></span>
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="phone">PHONE</label>
								<input type="text" id="phone" name="phone" class="form-control" placeholder="${memList.phone}" maxlength="11">
								<div style="height: 25px;">
									<span id="phoneError"></span>
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="nick">NICK NAME</label>
								<input type="text" id="nick" name="nick" class="form-control" placeholder="${memList.nick}" maxlength="15">
								<div style="height: 25px;">
									<span id="nickError"></span>
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="email">EMAIL</label>
								<input type="text" id="email" name="email" class="form-control" placeholder="${memList.email}" maxlength="30">
								<div style="height: 25px;">
									<span id="emailError"></span>
								</div>
							</div>
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="joinBtn">Modify</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</section>

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>