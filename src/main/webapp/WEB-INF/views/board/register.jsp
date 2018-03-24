<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@ include file="../include/header.jsp"%> --%>
<%@ include file="../new_include/header.jsp"%>

<section id="main-content">
    <section class="wrapper">
		<h3> 게시글 작성</h3>
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<form role="form" method="post" name="frm" enctype="multipart/form-data">
						<div class="box-body">
							<div class="form-group">
								<label for="title">Title</label>
								<input type="text" id="title" name="title" class="form-control" placeholder="Enter Title">
							</div>
							<div class="form-group">
								<label for="content">Content</label>
								<textarea id="content" name="content" class="form-control" rows="3" placeholder="Enter ..." style="resize: none;"></textarea>
							</div>
							<div class="form-group">
								<label for="writer">Writer</label>
								<input type="text" id="writer" name="writer" class="form-control" readonly="readonly" value="${memList.id }">
							</div>
							<div class="form-group">
								<label for="writer">File Upload</label>
								<input type="file" id="file" name="file[]" class="form-control" multiple="multiple">
							</div>
						</div>
						<div class="box-footer">
							<button type="submit" class="btn btn-primary" id="fileUploadBtn">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</section>
<script type="text/javascript">
	$(document).ready(function() {
		var fileSize ="";
		$("#file").on("change", function() {
			fileSize = this.files[0].size;
			if(fileSize > 10485760) {
				alert("업로드 할수 있는 파일의 용량은 10MB입니다.");
				$("#file").val("");
			}
		});
		
	});
</script>

<%-- <%@ include file="../include/footer.jsp"%> --%>
<%@ include file="../new_include/footer.jsp"%>
