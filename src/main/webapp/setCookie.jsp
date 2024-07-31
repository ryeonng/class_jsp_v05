<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String username = "홍길동";
	Cookie userCookie = new Cookie("username", username); // 쿠키 객체 생성
	/* 쿠키는 서버 측에 저장이 되지 않는다! - 요청한 사용자 브라우저에 저장된다. 
		즉, setCookie.jsp 를 요청한 사용자에 response 객체로 데이터 조각을 담아서 보내주어야 한다.
	*/
	userCookie.setMaxAge(60 * 60 * 24); // 60 = 60초 / 60 * 60 * 24 = 하루
	
	response.addCookie(userCookie);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>사용자가 이 페이지 요청 시, 서버 측에서 쿠키를 생성해서 응답합니다.</h1>
		
		<a href="getCookie.jsp">쿠키 값을 읽어보는 페이지</a>
</body>
</html>