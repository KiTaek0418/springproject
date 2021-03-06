<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<%@ include file="../new_include/header.jsp" %>

<section id="main-content">
    <section class="wrapper">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<div class="box-header">
						<ul class="nav nav-pills">
						  <li class="<c:out value="${active eq 0? 'active' : ''}"/>"><a href="/member/memberidfind">아이디 찾기</a></li>
						  <li class="<c:out value="${active eq 1? 'active' : ''}"/>"><a href="/member/memberpwfind">비밀번호 찾기</a></li>
						</ul>
					</div>
					<h3> 아이디 찾기</h3>
					<form role="form" id="frmId" name="frmId" action="/member/idSearch" method="post">
						<div class="box-body">
							<div class="form-group" style="width: 600px;">
								<label for="name">NAME</label>
								<input type="text" id="name" name="name" class="form-control" placeholder="Enter Name">
								<div style="height: 25px;">
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="email">EMAIL</label>
								<input type="text" id="email" name="email" class="form-control" placeholder="Enter Email">
								<div style="height: 25px;">
								</div>
								<div style="height: 25px;">
									<c:choose>
										<c:when test="${!empty idResult}">
											<span style="margin: 7px;">${idResult}</span>
										</c:when>
										<c:otherwise>
											<span style="margin: 7px;"></span>
										</c:otherwise>
									</c:choose>
								</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="joinBtn">아이디 찾기</button>
						</div>
							</div>
						</div>
					</form>
				</div>
				
				<div class="box box-primary" style="margin-top: 80px;">
					<h3> 비밀번호 찾기</h3>
					<form role="form" id="frmPw" name="frmPw" action="/member/pwSearch">
						<div class="box-body">
							<div class="form-group" style="width: 600px;">
								<label for="id">ID</label>
								<input type="text" id="id" name="id" class="form-control" placeholder="Enter Id">
								<div style="height: 25px;">
									<span id="nameError"></span>
								</div>
							</div>
							<div class="form-group" style="width: 600px;">
								<label for="name">NAME</label>
								<input type="text" id="name" name="name" class="form-control" placeholder="Enter Name">
								<div style="height: 25px;">
									<span id="nameError"></span>
								</div>
							<div style="height: 25px;">
								<span id="pwResult"></span>
							</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="joinBtn">비밀번호 찾기</button>
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
