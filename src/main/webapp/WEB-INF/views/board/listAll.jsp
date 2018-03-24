<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sct"%>
<%-- <%@ include file="../include/header.jsp"%> --%>
<%@ include file="../new_include/header.jsp"%>

<style type="text/css">
.list_title {
	width: 145px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}
</style>

<script type="text/javascript">
	/* function result() {
		alert("${msg}");
		alert("${type}");
		
		if("${result }" == 1){
			alert("회원 정보가 수정 되었습니다.");
		} else if("${result}" == 2) {
			alert("탈퇴가 성공적으로 되었습니다.");
		} else if("${result }" == 3) {
			alert("회원의 비밀번호가 수정 되었습니다.");
		}
	} */

	$(document).ready(function() {

		/* alert("${msg}"); */

		if ("${result }" == 1) {
			alert("회원 정보가 수정 되었습니다.");
		} else if ("${result}" == 2) {
			alert("탈퇴가 성공적으로 되었습니다.");
		} else if ("${result }" == 3) {
			alert("회원의 비밀번호가 수정 되었습니다.");
		}
		/* $("#searchBtn").on("click", function() {
			var searchType = $("#searchType").val();
			var searchContent = $("#searchContent").val();
			
			alert(searchContent);
			alert(searchType);
			
		}); */
	});
</script>
<section id="main-content">
    <section class="wrapper">
		<h3> 자유 게시판</h3>
		<div class="row">
			<div class="col-md-12">
				<div class="box">
					<div class="box-header box-title">
						<div id="filter-panel" class="filter-panel">
							<div class="panel-body">
								<form class="form-inline" role="form" action="/board/listAll">
									<div class="form-group">
										<input type="hidden" value="${seaDto.page }"> 
										<input type="hidden" value="${seaDto.perPageNum }"> 
										<input type="hidden" value="${seaDto.page }"> 
										<input type="hidden" value="${seaDto.perPageNum }"> 
										<select id="pref-perpage" class="form-control" name="searchType">
											<option value="option"
												<c:out value="${seaDto.searchType eq 'option'? 'selected' : ''}"/>>--- 검색 옵션 ---</option>
											<option value="writer"
												<c:out value="${seaDto.searchType eq 'writer'? 'selected' : ''}"/>>작성자</option>
											<option value="content"
												<c:out value="${seaDto.searchType eq 'content'? 'content' : ''}"/>>내용</option>
											<option value="title"
												<c:out value="${seaDto.searchType eq 'title'? 'selected' : ''}"/>>제목</option>
											<option value="multi"
												<c:out value="${seaDto.searchType eq 'multi'? 'selected' : ''}"/>>제목 + 내용</option>
										</select>
									</div>
									<div class="form-group">
										<label class="filter-col" style="margin-right: 0;" for="pref-search">Search:</label> 
										<input type="text" class="form-control input-sm" id="pref-search" size="50" name="searchContent" value="${seaDto.searchContent}">
										<button class="btn btn-primary" type="submit" id="searchBtn">
											<span class=" glyphicon glyphicon-search"></span>
										</button>
									</div>
									<div class="form-group">
										<label class="filter-col" style="margin-right: 0;"
											for="pref-orderby">List Count :</label> <select
											id="pref-orderby" class="form-control"
											onchange="location.href=this.value">
											<option
												value="listAll?pagenum=10&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
												<c:out value="${PerPageNum eq 10? 'selected' : ''}"/>>--- 보기 옵션 ---</option>
											<option
												value="listAll?pagenum=30&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
												<c:out value="${PerPageNum eq 30? 'selected' : ''}"/>>30개</option>
											<option
												value="listAll?pagenum=50&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
												<c:out value="${PerPageNum eq 50? 'selected' : ''}"/>>50개</option>
											<option
												value="listAll?pagenum=100&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
												<c:out value="${PerPageNum eq 100? 'selected' : ''}"/>>100개</option>
										</select>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="box-body">
						<table class="table table-bordered" id="memList">
							<tr>
								<th style="width: 10px;">BNO</th>
								<th>TITLE</th>
								<th>WRITER</th>
								<th>REGDATE</th>
								<th style="width: 40px;">VIEWCNT</th>
							</tr>
							<c:choose>
								<c:when test="${searchList.size() eq 0 }">
									<tr>
										<td><h1>해당 결과가 없습니다.</h1></td>
									</tr>
								</c:when>
	
								<c:otherwise>
									<c:forEach items="${searchList }" var="criList">
										<tr>
											<td>${criList.bno }</td>
											<td
												style="padding-left: <c:out value="${criList.depth > 0? 40*criList.depth : ''}"/>px;">
												<c:choose>
													<c:when test="${criList.depth > 0}">
														<img alt="리플 이미지" src="../resources/image/replyimg.png"
															style="width: 26px; height: 18px;">
														<a href="/board/detailpage?bno=${criList.bno }&user=${memList.id }">${criList.title }</a>
														<c:if test="${criList.filesize > 0 }">
															<img alt="이미지 체크" src="../resources/image/imgchk.png"
																style="width: 20px; height: 14px;">
														</c:if>
													</c:when>
													<c:otherwise>
														<a href="/board/detailpage?bno=${criList.bno }&user=${memList.id }">${criList.title }</a>
														<%-- <a href="/board/detailpage?bno=${criList.bno }&user=${memList.id }">${criList.title }</a> --%>
														<c:if test="${criList.filesize > 0 }">
															<img alt="이미지 체크" src="../resources/image/imgchk.png"
																style="width: 20px; height: 14px;">
														</c:if>
													</c:otherwise>
												</c:choose>
											</td>
											<td>${criList.writer }</td>
											<td><fmt:formatDate value="${criList.regdate}"
													pattern="yyyy-MM-dd HH:mm:ss" /></td>
											<td><span class="badge bg-ref">${criList.viewcnt }</span></td>
										</tr>
									</c:forEach>
						</table>
						<div style="width: 800px; margin: 0px auto;">
							<ul class="pagination">
								<li><c:if test="${pagDto.prev }">
										<a href="/board/listAll?page=${pagDto.startPage -10}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"><span
											class="glyphicon glyphicon-chevron-left"></span></a>
									</c:if></li>
								<c:forEach var="i" begin="${pagDto.startPage }"
									end="${pagDto.endPage }">
									<c:choose>
										<c:when test="${seaDto.page eq i}">
											<li class="active"><a
												href="/board/listAll?page=${i}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
												class="pageCnt">${i }</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/board/listAll?page=${i}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}"
												class="pageCnt">${i }</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<%-- <c:forEach var="i" begin="${pagDto.startPage }" end="${pagDto.endPage }">
												<li class="active">
													<a href="/board/listAll?page=${i}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}" class="pageCnt">${i }</a>
												</li>
											</c:forEach> --%>
								<li>
									<c:if test="${pagDto.next }">
										<a href="/board/listAll?page=${pagDto.endPage +1}&pagenum=${PerPageNum}&searchType=${seaDto.searchType}&searchContent=${seaDto.searchContent}">
										<span class="glyphicon glyphicon-chevron-right"></span></a>
									</c:if>
								</li>
							</ul>
						</div>
						</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>
