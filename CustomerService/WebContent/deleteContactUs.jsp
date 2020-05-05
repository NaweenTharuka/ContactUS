<%@page import="com.javatpoint.dao.ContactUsDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.ContactUs"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
	ContactUsDao.delete(u);  
	response.sendRedirect("viewContactUs.jsp");  
%>  