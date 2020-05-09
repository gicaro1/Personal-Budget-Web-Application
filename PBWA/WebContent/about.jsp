<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Cache-Control" content="no-store, must-revalidate" />



<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<!-- google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Bowlby+One+SC&family=Julius+Sans+One&family=Open+Sans+Condensed:ital,wght@0,300;0,700;1,300&display=swap" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:400,700,800i&display=swap"
	rel="stylesheet">
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- bootraap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- StylesSheet  -->
<link rel="stylesheet" href="http://localhost:8080/PBWA/css/styles.css" />

<title>Dashboard</title>
</head>
    
<body >
<!-- -------- TOGGLE BAR  -->
    <div class="col-sm bg-success side_bar  hidden_property text-light"  id="myDIV">
                        

        <div class="col-12-sm  col-12-sm py-1 d-inline-flex logo_col">
            <img src="/img/household-budget-logo.png"  class="logo mt-3 " alt="">
                <h6 class="text-light  d-flex   pbwa_tittle ">PBWA</h6>
                
        </div>
    
        <hr class="hr_line bg-light">

  
            <h6 class="das_t" >Dashboard</h6>
    

        <hr class="hr_line bg-light">

        <div class="col-12 interface">
            <div>
                    <h6 class="features_tittle">Features</h6>
                    <a  class="text-light" href="#"><i class="fa fa-folder p-2 ml-3 h6 "></i>Util</a><br>
                    <hr class="hr_line bg-light">


            </div>
           

      

            <h6 class="features_tittle">Interface</h6>
            <a  class="text-light" href="/deposit.html"><i class="fa fa-wrench p-2 ml-3 h6"></i>Dep</a><br>
            <hr class="hr_line bg-light">

            <h6 class="features_tittle">Features</h6>
            <a  class="text-light" href="#"><i class="fa fa-folder p-2 ml-3 h6 "></i>Util</a><br>
            <hr class="hr_line bg-light">
            
            <h6 class="features_tittle">Recomendations</h6>
            <a  class="text-light " href="#"><i class="fa fa-table p-2 ml-3 h6  "></i>Tips</a>
        </div>

        <hr class="hr_line bg-light">
    
    </div>



    <div class="row shadow  nav_top container-fluid ">
        
        <div class="container d-flex justify-content-between ">
            
             <div class="container" onclick="myFunction(this)">
                        <div class="bar1"></div>
                        <div class="bar2"></div>
                        <div class="bar3"></div>     
            </div>
            <div class="col-xs-2   p-3 w-40  d-flex  ">
							<a href="#"><i class="fa fa-envelope  p-2"></i></a> <a href="#"><i
								class="fa fa-bell  p-2"></i></a>

						</div>
						
						<div class="col-xs-4  d-flex profile_img_wrapper  text-center">

							<img class="profile_pic " src="img/profile2.jpeg" alt="">
							<p class="d-flex  profile_name ">
								<c:out value="${USER_SESSION}" />
							</p>
						</div>
        </div>
    </div>
<!--  *************** END ****************** -->

    <!--------------   TOP BRAND SECCION ---------------- -->
    <div class=" container-fluid bg-success top_brand_seccion" >
        <div class="row">
            <div class=" align-self-center m-4 col ">
                <h1 class="main_tittle_top"><strong>PBWA </strong></h1>
                <h5>Expense management simplified</h5>
            </div>
           <div>
            <img class="col" src="img/expense-receipts-rev.png" alt="">
           </div>
              
       


        </div>
   
    </div>
      

    <div class="container_row3 " >
        <div   class="container   text-center d-flex justify-content-center  " >
            <div class=" col sub_container_3">
                <h1 >Our Company</h1>
                <p class="text-center para_third_section" >Gain deep data visibility into student spend with the remarkable usability <br>
                     Automatically generate expens and control of you deposits ,</p>

            </div>
        </div>
    </div>
    <!------------THIRD SECCION ----------- -->

        <div class="container-fluid container_row4 d-flex  text-center bg-dark "  >
            <div class=" container d-flex  row_4_container" >
              

                    <div  class=" col  row4_secction  text-muted  m-2 bg-ing">
                        <h1> PBWA</h1>
                        <p>Manage and approve expenses or submit claims from anywhere with the cloud-based web and mobile app.</p>
                    </div>
                    <br>
            
                    <div  class=" col row4_secction  text-muted  m-2">
                        <h1>EXTRAORDINARY USABILITY</h1>
                        <p class="" >Users love our easy-to-use mobile app that makes expense management effortless and intuitive</p>
                    </div>

           
               


            </div>
         


        </div>
          <!--------------   TOP BRAND SECCION ---------------- -->
          <div class=" container-fluid container_row2" >
            <div class="row  row_cards d-flex justify-content-around p-5 ">
        
                <!-- CARD 1 TUTORIAS -->


                <div class="card_about " >
                    <h5 class="card-header">Tutorias</h5>
                    <img class="card-img-top img_aboutUS" src="img/book_aboutUS.svg" alt="Card image cap">
                    <div class="card-body">
                      <p class="card-text text-center ">Learn how to use Webexpenses with our short step-by-step tutorial videos features.</p>
                     
                    </div>
                    <a href="#" class="btn btn-primary btn-block text-center">See Tutorias</a>
                  </div>

           
                
                  <!-- CARD 2  Feature videos -->

                  <div class="card card_about" >
                    <h5 class="card-header">Feature videos</h5>
                    <img class="card-img-top img_aboutUS" src="img/camara_aboutUS.svg" alt="Card image cap">
                    <div class="card-body">
                      <p class="card-text text-center ">Take a look at our in-depth feature videos on some of our key Webexpenses features.</p>
                     
                    </div>
                    <a href="#" class="btn btn-danger btn-block text-center">Watch Videos</a>
                  </div>

                   <!-- CARD 3 FAQ's -->

                   <div class="card card_about" >
                    <h5 class="card-header">FAQ's</h5>
                    <img class="card-img-top img_aboutUS" src="img/Faq_aboutUS.svg" alt="Card image cap">
                    <div class="card-body">
                      <p class="card-text text-center  ">Answers to questions we get asked the most about popular topics..</p>
                    
                    </div>
                    <a href="#" class="btn btn-warning btn-block text-center">Read Answers</a>
                  </div>

                   <!-- CARD 4  Feature videos -->

                   <div class="card card_about" >
                    <h5 class="card-header">Review us</h5>
                    <img class="card-img-top img_aboutUS" src="img/reviews_aboutUS.svg" alt="Card image cap">
                    <div class="card-body">
                      <p class="card-text text-center">Recommend us to others and earn an Amazon gift card and get Ebay discounts...</p>
                      
                    </div>
                    <a href="#" class="btn btn-info  btn-block ">Leave a Review</a>
                  </div>
               
              
    
    
            </div>
       
        </div>
        <div class="text-muted    shadow">

            <div class="footer-copyright text-center  text-muted py-3">© 2020 Copyright:
                <a class="text-muted" href="https://mdbootstrap.com/"> PBWA</a>
             </div>
        </div>
        <script>
   
            function myFunction(x) {
                x.classList.toggle("change");
            var x = document.getElementById("myDIV");
            if (x.style.display === "block") {
                x.style.display = "none";
            } else {
                x.style.display = "block";
            }
            }
    </script>

 
    
</body>
</html>