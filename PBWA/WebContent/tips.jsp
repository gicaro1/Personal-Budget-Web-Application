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
<link
	href="https://fonts.googleapis.com/css?family=Nunito:400,700,800i&display=swap"
	rel="stylesheet">
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <!--  ----------ANIMATE-CDN ----------- --> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
<!-- bootraap -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- StylesSheet  -->
<link rel="stylesheet" href="http://localhost:8080/PBWA/css/styles.css" />

<title>Tips</title>
</head>
<body>

  <div class="tips bg-dark ">
  		<div >
  		     <div class="">Tips</div>
 
  		</div>
  		<div>
  		
  		
  		</div>

        
    </div>
    
    
<!--   -------------- cards ------------ -->

    <div class="container-fluid">

     

        <div class="row d-flex justify-content-center text-center">
        
            <div class="card text-white bg-primary  cardtip col-sm">
                <div class="card-header">avoid Private Loans</div>
                <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">Federal loans have flexible terms of payment if your employment dreams don’t exactly go according to plan after college. Plus, private loans typically have better interest rates. So be smart about the loans you take out—and try to avoid these other big student loan mistakes..</p>
                </div>
            </div>

            
            
            <div class="card text-white bg-secondary  center cardtip col-sm" >
                <div class="card-header">Check Your Interest Rate</div>
                <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text"> Which loan should you pay off first? A: The one with the highest interest rate. Q: Which savings account should you open? A: The one with the best interest rate. Q: Why does credit card debt give us such a headache? A: Blame it on the compound interest rate. Bottom line here: Paying attention to interest rates will help inform which debt or savings commitments you should focus on</p>
                </div>
            </div>
            
        
        
            <div class="card text-white bg-success text-center cardtip col-sm" >
                <div class="card-header">Students Should Fill Out the SFE grand</div>
        
                <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text center">SEven if you don’t think that you’ll get aid, it doesn’t hurt to fill out the form. That’s because 1.3 million students last year missed out on a Pell Grant—which doesn’t need to be paid back!—because they didn’t fill out the form.</p>
                </div>
            </div>
        
            
            <div class="card text-white bg-danger  text-center cardtip col-sm" >
                <div class="card-header">Set Specific Financial Goals</div>
                <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">pUse numbers and dates, not just words, to describe what you want to accomplish with your money. How much debt do you want to pay off—and when? How much do you want saved, and by what date?.</p>
                </div>
            </div>

        </div>
        <div class="row d-flex justify-content-center text-center">
    
             
            <div class="card text-white bg-warning  cardtip col-sm" >
                <div class="card-header">Check Your Interest Rate</div>
                <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">Which loan should you pay off first? A: The one with the highest interest rate. Q: Which savings account should you open? A: The one with the best interest rate. Q: Why does credit card debt give us such a headache? A: Blame it on the compound interest rate. Bottom line here: Paying attention to interest rates will help inform which debt or savings commitments you should focus on</p>
                </div>
            </div>
       
            
        
            <div class="card text-white bg-info  text-center cardtip col-sm" >
                <div class="card-header">Track Your Net Worth</div>
                <div class="card-body">
                <h5 class="card-title">  </h5>
                <p class="card-text">Your net worth—the difference between your assets and debt—is the big-picture number that can tell you where you stand financially. Keep an eye on it, and it can help keep you apprised of the progress you’re making toward your financial goals—or warn you if you’re backsliding.</p>
                </div>
            </div>
        
            
            <div class="card bg-light  text-center cardtip col-sm" >
                <div class="card-header">Allocate at Least 20% of Your Income Toward Financial Priorities</div>
                <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">By priorities, we mean building up emergency savings, paying off debt, and padding your retirement nest egg. Seem like a big percentage?.</p>
                </div>
            </div>
          
       
        
            
            <div class="card text-white bg-dark text-center cardtip col-sm">
                <div class="card-header">Budget About 30% of Your Income for Lifestyle Spending</div>
                <div class="card-body">
                <h5 class="card-title"></h5>
                <p class="card-text">This includes movies, restaurants, and happy hours—basically, anything that doesn’t cover basic necessities. By abiding by the 30% rule, you can save and splurge at the same time.</p>
                </div>
            </div>
        </div>

    </div>


       

    <div class="text-muted   mt-5 shadow">

        <div class="footer-copyright text-center  text-muted py-3">© 2020 Copyright:
            <a class="text-muted" href="https://mdbootstrap.com/"> PBWA</a>
            </div>
    </div>

</body>
</html>