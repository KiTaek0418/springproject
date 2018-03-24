<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/board/modify">
	<input type="hidden" id="bno" name="bno" value="${detail.title }">
	글 제목<input type="text" id="title" name="title" value="${detail.title }"><br>
	글 내용<input type="text" id="content" name="content" value="${detail.writer }"><br>
	작성자<input type="text" id="writer" name="writer" value="${detail.content }"><br>
	<input type="submit" value="수정하기">
</form>
</body>
</html>