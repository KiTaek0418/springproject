<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<%@ include file="../new_include/header.jsp" %>

<section id="main-content">
    <section class="wrapper">
    	<h3><i class="fa fa-angle-right"></i> 회원 탈퇴</h3>
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<form role="form" method="post" id="frm" name="frm">
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
								<input type="password" id="pw" name="pw" class="form-control">
								<div style="height: 25px;">
									<span id="pwError"></span>
								</div>
							</div>
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="joinBtn" onclick="go_save();">Delete</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</section>

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>