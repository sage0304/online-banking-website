package controller.User;

import business.Customer;
import DAO.CustomerDAO;
import business.Employee;
import DAO.EmployeeDAO;
import business.PaymentAccount;
import DAO.PaymentAccountDAO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

    CustomerDAO customerDAO = new CustomerDAO();
    EmployeeDAO employeeDAO = new EmployeeDAO();
    PaymentAccountDAO paymentAccountDAO = new PaymentAccountDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
        ServletContext servletContext = getServletContext();
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }
        String url = "/login.jsp";
        if (action.equals("login")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Customer customer = customerDAO.checkLogin(email, password);
            Employee employee = employeeDAO.checkLoginEmployee(email, password);

            if (customer == null) {
                if(employee != null){
                    response.sendRedirect(request.getContextPath() + "/admin-dashboard/index.jsp");
                    return;
                }
                else{
                    url = "/login.jsp";
                    request.setAttribute("errorMessage", "Your email or password is incorrect.");
                }    
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                session.setAttribute("customer", customer);

                PaymentAccount defaultPaymentAccount = paymentAccountDAO.findDefaultPaymentAccount(customer.getCustomerId());
                request.setAttribute("defaultPaymentAccount", defaultPaymentAccount);
                url = "/profile.jsp";
            }
        }
        servletContext.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
