<?php
session_start();
error_reporting(0);
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Wayfarer | Tourism Management System</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords" content="Tourism Management System In PHP" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Emergencybutton Js-->
<script src="js/emergency.js"></script>


<!--For the enquiry card-->

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="contact-form-05/css/enquiry_style.css">

<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
</head>
<body>
<!-- top-header -->
<div class="top-header">
<?php include('includes/header.php');?>

<section class="ftco-section">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-12">
          <div class="wrapper">
            <div class="row no-gutters">
              <div class="col-lg-6">
                <div class="contact-wrap w-100 p-md-5 p-4">
                  <h1>Get in touch with us</h1>
                  <p class="mb-4">We're open for any suggestion or just to have a chat</p>
                  <div id="form-message-warning" class="mb-4"></div> 
                  <div id="form-message-success" class="mb-4">
                    Your message was sent, thank you!
                  </div>
                  <div class="row mb-4">
                    <div class="col-md-4">
                      <div class="dbox w-100 d-flex align-items-start">
                        <div class="text">
                          <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="dbox w-100 d-flex align-items-start">
                        <div class="text">
                          <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <div class="dbox w-100 d-flex align-items-start">
                        <div class="text">
                          <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <form method="POST" id="contactForm" name="contactForm" class="contactForm">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="text" class="form-control" name="name" id="name" placeholder="Name">
                        </div>
                      </div>
                      <div class="col-md-12"> 
                        <div class="form-group">
                          <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                        </div>
                      </div>
                      <div class="col-md-12"> 
                        <div class="form-group">
                          <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone with country code">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <textarea name="message" class="form-control" id="message" cols="30" rows="4" placeholder="Create a message here"></textarea>
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="submit" value="Send Message" class="btn btn-primary">
                          <div class="submitting"></div>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-stretch">
                <div class="info-wrap w-100 p-5 img" style="background-image: url(contact-form-05/images/img.jpg);">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.validate.min.js"></script>
  <script src="js/main.js"></script>



<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>
</html>