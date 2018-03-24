<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<%@ include file="../new_include/header.jsp" %>

<section id="main-content">
    <section class="wrapper">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary" style="margin-top: 20px;">
					<div class="box-header">
						<ul class="nav nav-pills">
						  <li class="<c:out value="${active eq 0? 'active' : ''}"/>"><a href="/member/memberidfind">아이디 찾기</a></li>
						  <li class="<c:out value="${active eq 1? 'active' : ''}"/>"><a href="/member/memberpwfind">비밀번호 찾기</a></li>
						</ul>
					</div>
				<div class="box box-primary">
					<h3> 비밀번호 찾기</h3>
					<form role="form" id="frmPw" name="frmPw" action="/member/pwSearch">
						<div class="box-body">
							<div class="form-group">
								<div class="col-lg-7">
									<label for="id">ID</label>
									<input type="text" id="id" name="id" class="form-control" placeholder="Enter Id">
									<div style="height: 25px;">
										<span id="nameError"></span>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="name">NAME</label>
									<input type="text" id="name" name="name" class="form-control" placeholder="Enter Name">
									<div style="height: 25px;">
										<span id="nameError"></span>
									</div>
								</div>
							<div style="height: 25px;">
								<span id="pwResult"></span>
							</div>
						<div class="box-footer">
							<div class="col-lg-7">
								<button type="submit" class="btn btn-primary" id="joinBtn">검색</button>
							</div>
						</div>
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
