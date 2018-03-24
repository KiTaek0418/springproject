<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp"%> --%>
<%@ include file="../new_include/header.jsp"%>

<section id="main-content">
    <section class="wrapper">
		<h3> LOGIN</h3>
		<c:if test="${logchk eq 1 }">
			<h3 style="color: red;">${logMsg }</h3>
		</c:if>
		<div class="row" style="margin-top: 20px;">
			<div class="col-md-12">
				<div class="box box-primary">
					<form role="form" method="post" name="frm">
						<div class="box-body">
							<div class="form-group">
								<div class="col-lg-7">
									<label for="id">ID</label>
									<input type="text" id="id" name="id" class="form-control" placeholder="Enter ID">
									<div style="height: 25px;"></div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-7">
									<label for="pw">PASS WORD</label>
									<input type="password" id="pw" name="pw" class="form-control" placeholder="Enter PASS WORD">
									<div style="height: 25px;"></div>
								</div>
							</div>
						</div>
						<div class="box-footer">
							<div class="col-lg-12">
								<button type="submit" class="btn btn-primary">Login</button>
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
