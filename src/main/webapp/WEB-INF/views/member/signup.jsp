<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<%@ include file="../new_include/header.jsp" %>

<script src="../resources/js/memberjoin.js"></script>

<section id="main-content">
    <section class="wrapper">
		<h3> 회원 가입</h3>
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">SIGN UP</h3>
					</div>
					<form role="form" method="post" id="frm" name="frm">
						<div class="box-body">
							<div class="form-group">
								<div class="col-lg-7">
									<label for="id">ID</label>
									<input type="text" id="id" name="id" class="form-control" placeholder="Enter ID" maxlength="15">
									<div style="height: 25px;">
										<span id="idChk" style="margin-top: 5px;"></span>
									</div>
									<input type="hidden" id="reid" name="reid">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="pw">PASS WORD</label>
									<input type="password" id="pw" name="pw" class="form-control" placeholder="Enter PASS WORD" maxlength="20">
									<div style="height: 25px;">
										<span id="pwError"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="pwChk">PASS WORD CHECK</label>
									<input type="password" id="pwChk" name="pwChk" class="form-control" placeholder="Enter PASS WORD" maxlength="20">
									<div style="height: 25px;">
										<span id="pwChkError"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="name">NAME</label>
									<input type="text" id="name" name="name" class="form-control" placeholder="Enter Name"  maxlength="5">
									<div style="height: 25px;">
										<span id="nameError"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="phone">PHONE</label>
									<input type="text" id="phone" name="phone" class="form-control" placeholder="Enter Phone" maxlength="11">
									<div style="height: 25px;">
										<span id="phoneError"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="nick">NICK NAME</label>
									<input type="text" id="nick" name="nick" class="form-control" placeholder="Enter NickName" maxlength="15">
									<div style="height: 25px;">
										<span id="nickError"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="email">EMAIL</label>
									<input type="text" id="email" name="email" class="form-control" placeholder="Enter EMail" maxlength="30">
									<div style="height: 25px;">
										<span id="emailError"></span>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="box-footer" >
								<button type="button" class="btn btn-primary" id="joinBtn">Submit</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</section>

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>
