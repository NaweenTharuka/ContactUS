<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact us</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendorE/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendorE/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendorE/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendorE/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendorE/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="vendorE/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="css/utilEdit.css">
	<link rel="stylesheet" type="text/css" href="css/mainEdit.css">
</head>
<body>
	<%@page import="com.javatpoint.dao.ContactUsDao,com.javatpoint.bean.ContactUs"%>  
  
	<%  
		String id=request.getParameter("id");  
		ContactUs u=ContactUsDao.getRecordById(Integer.parseInt(id));  
	%> 
	
	

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="editContactUs.jsp" method="post">
			
				<span class="contact100-form-title">
					Send Us A Message
				</span>
				
				
				<input type="hidden" name="id" value="<%=u.getId() %>"/>  
				
				<label class="label-input100" for="first-name">Tell us your name *</label>
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Type first name">
					<input id="first-name" class="input100" type="text" name="first-name" value="<%= u.getName()%>">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Type last name">
					<input class="input100" type="text" name="last-name" value="<%= u.getEmail()%>">
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="email">Enter your email *</label>
				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input id="email" class="input100" type="text" name="email" value="<%= u.getPhone()%>">
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="phone">Enter phone number</label>
				<div class="wrap-input100">
					<input id="phone" class="input100" type="text" name="phone" value="<%= u.getCountry()%>">
					<span class="focus-input100"></span>
				</div>

				<label class="label-input100" for="message">Message *</label>
				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<textarea id="message" class="input100" name="message" value="<%= u.getMessage()%>"></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn" type="submit">
						Send Message
					</button>
				</div>
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('images/bg-02.jpg');">
				<div class="flex-w size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Address
						</span>

						<span class="txt2">
							Boddhi Mawatha,
							Wella Wathuara,
							Godellawela, Tangalle
							Sri Lanka						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-phone-handset"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Lets Talk
						</span>

						<span class="txt3">
							tel:  +94 47 224 1333						</span>
						<span class="txt3">
							For reservations:  +94 91 223 4591							</span>	
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-envelope"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							General Support
						</span>

						<span class="txt3">
							amanwella@aman.com						</span>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendorE/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorE/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorE/bootstrap/js/popper.js"></script>
	<script src="vendorE/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendoEr/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="vendorE/daterangepicker/moment.min.js"></script>
	<script src="vendorE/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendorE/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main1.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>
