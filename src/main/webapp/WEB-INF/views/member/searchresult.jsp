<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp" %> --%>
<%@ include file="../new_include/header.jsp" %>

<script src="../resources/js/memberjoin.js"></script>

<section id="main-content">
    <section class="wrapper">
		<div class="row">
			<div class="col-md-6">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">ID/PW SEARCH</h3>
					</div>
					<div class="box-body">
						<div class="form-group">
							<c:choose>
								<c:when test="${chk eq 0 }">
									<h1>당신의 아이디는 ${idResult }입니다.</h1>
								</c:when>
								<c:otherwise>
									<h1>당신의 비밀번호는 ${pwResult }입니다.</h1>
								</c:otherwise>
							</c:choose>
							<br><a href="/board/listAll"><button class="btn btn-primary">메인으로</button></a>
							<a href="/member/login"><button class="btn btn-primary">로그인</button></a>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</section>
</section>

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>
