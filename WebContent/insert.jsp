<%@page import="com.jx372.emaillist.dao.EmailListDao"%>
<%@page import="com.jx372.emaillist.vo.emailListVo"%>
<%
	request.setCharacterEncoding("utf-8");
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	emailListVo vo = new emailListVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	new EmailListDao().insert(vo);
	
	//리다이렉트 응답 브라우저(사용자) 리다이렉트 정보를 보낸다 - 바로 페이지 전환하는거 아님
	response.sendRedirect("/emaillist");
	
%>