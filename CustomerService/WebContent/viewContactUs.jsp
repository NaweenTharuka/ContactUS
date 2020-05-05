
<!DOCTYPE html>
<html>  
<head>  
<meta charset="ISO-8859-1">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<link rel="stylesheet" href="https://bootswatch.com/4/slate/bootstrap.min.css" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link rel="stylesheet" href="css/stylesheet.css"> 
		<title>Feedbacks</title> 
</head> 
<style>
 body{
  font-family: 'Nunito';
  background-image:url(images/IMG_9830.JPG);
  background-size:cover;
  background-attachment:fixed;
}
</style> 
<body>  
  
<%@page import="com.javatpoint.dao.ContactUsDao,com.javatpoint.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<%  
	List<ContactUs> list=ContactUsDao.getAllRecords();  
	request.setAttribute("list",list);  
%>  
<section class="page-section bg-primary" id="about">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center"><br><br><br>
                        <h1 class="text-white mt-0">CUSTOMER SERVICE MANAGEMENT</h1>
                        <hr class="divider light my-4" />
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="addContactUsForm.jsp">Generate Report</a>
                    </div>
                </div>
            </div>
            <br><br><br>
        </section>
  <section id="viewfeedbacks" class="py-5" style="" > 
  <table class="table table-hover" >
  <thead>
    <tr>
      		<th scope="col">ID</th>
      		<th scope="col">Name</th>
      		<th scope="col">Email</th>
      		<th scope="col">Phone number</th>
      		<th scope="col">Country</th>
      		<th scope="col">Message</th>
      		<th scope="col">Delete</th>
    </tr>
  </thead>
  <c:forEach items="${list}" var="u">  
  <tr class="table-light">
      <th scope="row">${u.getId()}</th>
      <td>${u.getName()}</td>
      <td>${u.getEmail()}</td>
      <td>${u.getPhone()}</td>
      <td>${u.getCountry()}</td>
      <td>${u.getMessage()}</td>
      <td><a href="deleteContactUs.jsp?id=${u.getId()}"><button type="button" class="btn btn-danger">Delete</button></a></td>
    </tr>
  <tbody>
  </tbody>
  </c:forEach>
  </table>
  </section>
  <div class="replybutton" style="margin-left: 600px">
      	<p class="card-text"><a href=""><button type="button" class="btn btn-primary btn-lg">Reply via Phone</button></a>
      	<a href=""><button type="button" class="btn btn-primary btn-lg">Reply  via  Email </button></a></p>
  </div>
  <br><br><br><br><br><br>
</body>  
</html>  