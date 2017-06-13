<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>현재 시간 출력</title>
</head>
<body>

<%
	//자바 코드작성
	SimpleDateFormat formatter = new SimpleDateFormat ("HH:mm:ss", Locale.KOREA);
	Date currentTime = new Date();
	String dTime = formatter.format(currentTime);
%>

<%= dTime %>

</body>
</html>