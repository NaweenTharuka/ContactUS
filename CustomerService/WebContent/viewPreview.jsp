<!DOCTYPE html>
<html lang="en">  
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
<body id="page-top">  
  
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
                        <h1 class="text-white mt-0">Check your message here!</h1>
                             <hr class="divider light my-4" />
                        <p class="text-white-50 mb-4">You can make changes to your feedback</p>
                        <a class="btn btn-light btn-xl js-scroll-trigger" href="addContactUsForm.jsp">Click for other response!</a>
						<a class="btn btn-light btn-xl js-scroll-trigger" href="index.jsp">Back!</a><br><br><br><br>	
                    </div>
                </div>
            </div>
</section>
<section class="page-section bg-primary" id="about">
	<div class="Feedbacks" style=" margin-left: 100px;">		 
		<c:forEach items="${list}" var="u"> 
			<div class="card text-white bg-secondary mb-3" style="max-width: 60rem;">
   				<div class="card-header">${u.getId()} message</div>
  					<div class="card-body">
    					<h4 class="card-title">${u.getMessage()}</h4></div>
    					<p class="card-text"><a href="editContactUsForm.jsp?id=${u.getId()}"><button type="button" class="btn btn-primary">Make changes!</button></a></p>
						</div><br>
		</c:forEach>
	</div>
	<br><br><br><br>
</section>
<section class="page-section" id="contact">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 text-center"><br><br><br>
                        <h2 class="mt-0">Let's Get In Touch!</h2>
                        <hr class="divider my-4" />
                        <p class="text-muted mb-5">There are two ways to talk to us 24 hours a day, 7 days a week </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 ml-auto text-center mb-5 mb-lg-0">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>Tel: +94 47 224 1333</div>
						<div>For reservations: +94 91 223 4591</div>
						<div>Fax: +94 47 224 1334</div>
                    </div>
                    <div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-envelope fa-3x mb-3 text-muted"></i
                        ><a class="d-block" href="mailto:contact@yourwebsite.com">amanwella@aman.com</a>
                    </div>
					<div class="col-lg-4 mr-auto text-center">
                        <i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                        <div>AMANWELLA</div>
						<div>Boddhi Mawatha, Wella Wathuara,</div>
						<div>Godellawela, Tangalle</div>
						<div>Sri Lanka</div>
                    </div>
                </div>
				
            </div>
        </section>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
        <script src="js/scripts.js"></script>
</body>  
</html>  