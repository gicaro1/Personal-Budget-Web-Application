package Personal_Budeget_Web_Application;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/controllerPBWA")
public class controllerPBWA extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private jdbcDAO Exp1;

	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

		Exp1 = new jdbcDAO(jdbcURL, jdbcUsername, jdbcPassword);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        HttpSession session = request.getSession(false);
    
        if (session != null) {
            session.removeAttribute("username");
        
            session.invalidate();
             
//            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//            dispatcher.forward(request, response);
            response.sendRedirect("index.jsp");
        }
	
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			
			case "/login":
				login(request, response);
				break;
//			case "/logout":
//				logout(request, response);
//				break;

			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertExpense(request, response);

				break;
			case "/insertDep":
				insertDeposit(request, response);
			
				break;
	

			case "/delete":
				deleteExpense(request, response);
				break;

			case "/edit":
				showEditForm(request, response);
				break;
				
		

//			case "/update":
//				updateExpense(request, response);
//				
//				break;
			default:
				
			
				listexpenses(request, response);
//				listBalance(request, response) ;
				
//				DisplayBalance(request, response);

			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}


//	 <-----------LOGIN ---------------->
	private void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {

//		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String userpass = request.getParameter("userpass");

		response.setContentType("text/html");





	

		if (Exp1.validate(username, userpass)) {
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
			
//			<-------------------SESSION -------------------------->
			
		request.getSession(true).setAttribute("USER_SESSION", username);
	
			

				List<ProductExpense> list1 = Exp1.listAll();
				request.setAttribute("ELIST", list1);
				
				List<BalanceT> list2 = Exp1.listBalance();
				request.setAttribute("ELISTBAL", list2);
				
//				response.sendRedirect("Dashboard.jsp");
				
				
				RequestDispatcher rd = request.getRequestDispatcher("Dashboard.jsp");
				rd.forward(request, response);
//				if(request.getSession(true) == null) {
//					String username1 = (String) request.getSession().getAttribute("username");
//					out.print("Welcome " + username1);
//					out.print("<br/><a href=\"Logout\">Logout</a>");
//				}
			

			} else {
		
				request.setAttribute("MESSAGE", "Sorry username or password error" );
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
	}
	
//	<------------------------- LOGOUT---------------------->

	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
//	<------------------- ********************------------->
//	<--------------------- lIST METHODS -------------------->

	private void listexpenses(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		

		List<ProductExpense> list1 = Exp1.listAll();
		request.setAttribute("ELIST", list1);
		
		
//		
		List<BalanceT> list2 = Exp1.listBalance();
		request.setAttribute("ELISTBAL", list2);
		
//		<---- SUM METHOD ----->
		
//	
//		Double counterTotal = Exp1.SumAllDeposit(list2);
		
	
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
		dispatcher.forward(request, response);

	}
	
//
//	private void listBalance(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException, SQLException {
//		
//
//	
//		List<BalanceT> list2 = Exp1.listBalance();
//		
//		request.setAttribute("ELISTBAL", list2);
//		
//		
//		RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
//		dispatcher.forward(request, response);
//
//	}
	
	


//	
//
//	private void updateExpense(HttpServletRequest request, HttpServletResponse response)
//			throws SQLException, IOException {
//
//		int idUpdated = Integer.parseInt(request.getParameter("id"));
//
//		Double to = Double.parseDouble(request.getParameter("total"));
//		
//		String dat = request.getParameter("dateD");
//		
//		
//		
//
//		BalanceT BalP = new BalanceT( to, dat,idUpdated);
//
//		Exp1.updateExpense(BalP);
//		
//		response.sendRedirect("list");
//
//	}
	

	

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));

		ProductExpense existingBook = Exp1.getUnique(id);

		RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");

		request.setAttribute("EX1", existingBook);
		dispatcher.forward(request, response);

	}
	


	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
		dispatcher.forward(request, response);
	}

	// <------------------INSERT METHOD-------------------> //

	private void insertExpense(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		String pu = request.getParameter("purpose");
		String cat = request.getParameter("dish");
		Double sum = Double.parseDouble(request.getParameter("sum"));
		String dfec = request.getParameter("date");

		ProductExpense newExp = new ProductExpense(pu, cat, sum, dfec);

		Exp1.insertExp(newExp);

		response.sendRedirect("list");

	}

	// <------------------INSERT METHOD Deposit Page-------------------> //
	private void insertDeposit(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {

		Double to = Double.parseDouble(request.getParameter("total"));
		String dfecD = request.getParameter("dateD");

		BalanceT newExp = new BalanceT(to, dfecD);

		Exp1.insertDepositExp(newExp);

		response.sendRedirect("list");

//		RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
//		dispatcher.forward(request, response);

	}

	private void deleteExpense(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {

		int idParse = Integer.parseInt(request.getParameter("id"));

		ProductExpense newExp = new ProductExpense(idParse);

		Exp1.deleteDao(newExp);

		response.sendRedirect("list");

	}

}
