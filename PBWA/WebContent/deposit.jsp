<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- media queries  -->
  
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- google Fonts-->
<link href="https://fonts.googleapis.com/css?family=Nunito:400,700,800i&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Orbitron&display=swap" rel="stylesheet">
<!-- Font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- bootraap -->

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


  <!-- customs CSS -->
  <link rel="stylesheet" href="/CSS/styles.css">
    <title>Deposit</title>
</head>
<body>
	<%-- <h1>Deposit</h1>

	<div align="center" >


		<form   action="insertDep"   action="showbalance" method="post">
				<!-- <input type="hidden" name="showbalance"  /> -->
			

			<table border="1">
			
			
				<tr>
					<th>Sum:</th>
					<td><input type="text" name="total" size="10"
						value="<c:out value='${ProductExpense.sum}' />" /></td>
				</tr>
				
				<tr>
					<th>Date:</th>
					<td><input type="text" name="dateD" size="45"
						value="<c:out value='${ProductExpense.dfec}' />" /></td>
				</tr>


				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Save" /></td>
				</tr>
			</table>
		</form>
		
		
	<table>
			<tr>
				<c:forEach var="tempDep" items="${BALANCE}">
					<td><c:out value="${tempDep.total}" /> balance</td>

				</c:forEach>


			</tr>


		</table>

	</div>
	 --%>
	 <body> 
        <div class="row  d-flex justify-content-center row_login_container ">
            <div class="col-lg-5  A  ">
                <div class="container   ">
                    

                
                <div class="  card p-3 mt-3 login_main_container shadow rounded  card_container">
                        <div class="col-12-sm   welcome_tittle text-muted  ">
                                <h1 class=" text-center py-3 ">Deposit</h1>
                            
                        
                        
                        </div>
                    <div class="text-center card-header bg-success rounded shadow">
                    <h1 class="h1 text-light my-4  card_welcome_tittle ">Add Cash!</h1>
                    </div>

                    <div class="car-body pt-3">
                    
                    	<!--  action="showbalance" -->
                            <form class="user"  action="insertDep"   method="get">
                                    <!-- <div class="form-group shadow">
                                        <input type="text" class="form-control form-control  input_login form-control-user " name="total" aria-describedby="emailHelp" placeholder="Source:" value="<c:out value='${ProductExpense.sum}' />" />
                                    </div> -->
                                    <div class="form-group shadow">
                                        <input type="text" class="form-control form-control-user" name="total" placeholder="amount">
                                    </div>
                                    <div class="form-group d-flex align-items-center rounded">
                                        <label class="p-2 m-1 text-muted rounded shadow" >Date</label>
                                         <input type="date" name="dateD" max="3000-12-31" 
                                               min="1000-01-01" class="form-control shadow"  >
                                       </div>
                                      
                                    <button type="submit" class="btn btn-outline-success btn-lg  btn-block shadow">save</button>
                                
                                </form>

                    </div>
             
                    <hr>
                    <div class="text-center">
                    
                        <div class="text-center">
                            <!-- register link  -->
                                <a class="small" href="register.html">Go to register!</a>
                        </div>
                    </div>
                </div>
            </div>
           
            <div class="row m-3 bal_A ">
            
                

                <div class="col-12 bg-light  shadow  text-left  border_line2  d-flex  justify-content-between py-2 mt-2 bal_B">
                                          
                        <div class="col-xs-9  w-80  h-40 py-3  text-center d-flex align-itmes-center bal_C">
                                      
                                        <h3><i class="fa fa-dollar pr-1"></i>1126.78 </h3>
                        </div>

                        <div class="col-sm-3 ">

                                        <i class="fa fa-money fa-3x d-flex justify-content-center mt-2 pl-5 transport_logo "></i>
                        </div>
                              
                </div>


            </div>
            </div>
           
      
    </div>
</body>

</body>
</html>