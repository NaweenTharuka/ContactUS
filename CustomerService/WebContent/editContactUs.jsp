<%@page import="com.javatpoint.dao.ContactUsDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.ContactUs"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
	int i=ContactUsDao.update(u);  
	response.sendRedirect("contactUsEdit-success.jsp");  
%>  