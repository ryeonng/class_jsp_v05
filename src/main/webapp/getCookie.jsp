<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String cUsername = null;
	// 방어적 코드
	if(cookies != null) {
		// 쿠키는 여러 개 존재 가능하다.
		// 이 페이지에서 필요한 쿠키는 우리가 정의한 username 이라는 이름을 가진 것이다.
		for(Cookie c : cookies) {
			if(c.getName().equals("username")) {
				cUsername = c.getValue();
				break;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 읽기</h2>
	<%
		if(cUsername != null) {
			out.println("<p> 안녕하세요 " + cUsername + " 님 </p>");
		} else {
			out.println("<p> 쿠키가 설정되지 않았습니다.</p>");
		}
	%>
	
		<a href="setCookie.jsp"> 쿠키 설정하러 가기</a>
</body>
</html>