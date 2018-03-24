<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp"%> --%>
<%@ include file="../new_include/header.jsp"%>

<script src="../resources/js/boarddetailpage.js"></script>

<style type="text/css">
	#ripContent {
	  width: 100%;
      resize: none;
      overflow-y: hidden;
      padding: 1.1em;
      padding-bottom: 0.2em;
      line-height: 1.6;
	}
	
	#content {
      resize: none;
      overflow-y: hidden;
      padding: 1.1em;
      padding-bottom: 0.2em;
      line-height: 1.6;
	}
</style>

<section id="main-content">
    <section class="wrapper">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">상세 페이지</h3>
					</div>
					<input type="hidden" id="user" name="user" value="${memList.id }" readonly="readonly">
					<form name="frm" id="frm">
					<c:forEach items="${detail }" var="detail" end="0">
						<input type="hidden" id="bno" name="bno" value="${detail.bno }" readonly>
						<%-- <input type="hidden" id="filename" name="filename" value="${detail.filename }" readonly="readonly"> --%>
						<div class="box-body">
							<div class="form-group"></div>
							<label for="title">Title</label>
							<input type="text" id="title" name="title" value="${detail.title }" <c:out value="${memList.id ne detail.writer? 'readonly' : ''}"/> class="form-control" >
						</div>
						<div class="box-body">
							<div class="form-group"></div>
							<label for="content">Content</label>
							<textarea class="form-control" rows="3" id="content" name="content" <c:out value="${memList.id ne detail.writer? 'readonly' : ''}"/>>${detail.content }</textarea>
					</c:forEach>
					<div style="margin-top: 20px;" class="col-md-12">
						<div >
							<c:forEach items="${detail}" var="detail">
								<input type="hidden" id="filename" name="filename" value="${detail.filename }" readonly="readonly">
									<c:if test="${detail.filesize > 0}">
										<c:choose>
											<c:when test="${detail.fileContentType eq 'x-zip-compressed'}">
												<img alt="이미지 체크" src="../resources/image/zipimg.png" style="width: 50px; height: 50px;">
												<a href="/board/filedownload?filename=${detail.filename}&fileContentType=${detail.fileContentType }">${detail.filename}</a>
											</c:when>
											<c:when test="${detail.fileContentType eq 'plain'}">
												<img alt="이미지 체크" src="../resources/image/txtimg.png" style="width: 50px; height: 50px;">
												<a href="/board/filedownload?filename=${detail.filename}&fileContentType=${detail.fileContentType }">${detail.filename}</a>
											</c:when>
											<c:when test="${detail.fileContentType eq 'pdf'}">
												<img alt="이미지 체크" src="../resources/image/pdfimg.png" style="width: 50px; height: 50px;">
												<a href="/board/filedownload?filename=${detail.filename}&fileContentType=${detail.fileContentType }">${detail.filename}</a>
											</c:when>
											<c:when test="${detail.fileContentType eq 'haansofthwp'}">
												<img alt="이미지 체크" src="../resources/image/hwpimg.png" style="width: 50px; height: 50px;">
												<a href="/board/filedownload?filename=${detail.filename}&fileContentType=${detail.fileContentType }">${detail.filename}</a>
											</c:when>
											<c:otherwise>
												<img alt="이미지 체크" src="../resources/upload/${detail.filename}" style="width: 50px; height: 50px;">
												<a href="/board/filedownload?filename=${detail.filename}&fileContentType=${detail.fileContentType }" style="margin-right: 7px">${detail.filename}</a>
											</c:otherwise>
										</c:choose>
									</c:if>
							</c:forEach>
							<div style="margin-bottom: 20px;"></div>
						</div>
					</div>
						</div>
						<c:forEach items="${detail}" var="detail" end="0">
						<div class="box-body">
							<div class="form-group"></div>
							<label for="writer">Writer</label>
							<input type="text" class="form-control" id="writer" name="writer" value="${detail.writer }" readonly>
						</div>
						<div class="box-footer" style="margin-top: 20px;">
						<c:if test="${memList.id eq detail.writer}">
							<span id="memberBtn">
								<button type="submit" id="modify" class="btn btn-warning">Modify</button>
								<button type="submit" id="remove" class="btn btn-danger">Remove</button>
							</span>
						</c:if>
						</c:forEach>
						<a href="/board/listAll"><button type="button" class="btn btn-primary" id="main">Main</button></a>
					</div>
					</form>
				</div>
				<c:if test="${!empty memList }">
					<div class="box box-primary">
						<div class="box-header">
							<h3 class="box-title">댓글</h3>
						</div>
						<form role="form" method="post" action="/board/ripple" enctype="multipart/form-data">
						<c:forEach items="${detail}" var="detail" end="0">
							<input type="hidden" id="bno" name="bno" value="${detail.bno}">
							<input type="hidden" id="depth" name="depth" value="${detail.depth}">
							<input type="hidden" id="groupNum" name="groupNum" value="${detail.groupNum}">
						</c:forEach>
							<div class="box-body">
								<div class="form-group"></div>
								<label for="title">Title</label>
								<input type="text" id="title" name="title" class="form-control">
							</div>
							<div class="box-body" id="ripWrap">
								<label for="ripContent">Content</label>
								<textarea id="content" name="content" class="form-control" rows="3"></textarea>
							</div>
							<div class="box-body">
								<div class="form-group"></div>
								<label for="writer">Writer</label>
								<input type="text" class="form-control" id="writer" name="writer" readonly="readonly" value="${memList.id }"><br>
							</div>
							<div class="box-body">
								<div class="form-group"></div>
								<label for="writer">File Upload</label>
								<input type="file" id="file" name="file[]" class="form-control" multiple="multiple">
							</div>
							<div class="box-footer">
								<input type="submit" value="등록" style="margin-top: 15px;">
							</div>
						</form>
					</div>
				</c:if>
			</div>
		</div>
	</section>
</section>

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>
