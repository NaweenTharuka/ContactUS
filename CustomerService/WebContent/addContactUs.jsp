<%@page import="com.javatpoint.dao.ContactUsDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.ContactUs"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=ContactUsDao.save(u);  
if(i>0){  
	response.sendRedirect("contactUs-success.jsp");  
}else{  
	response.sendRedirect("contactUs-error.jsp");  
}  
%>  
