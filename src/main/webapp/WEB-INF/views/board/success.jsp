<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function result() {
		var msg = "${msg}";
		alert(msg);
	}
</script>
</head>
<body onload="result();">
	<c:forEach items="${result }" var="result" >
		${result }<br>
	</c:forEach>
</body>
</html>