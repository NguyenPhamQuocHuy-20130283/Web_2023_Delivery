package Controller.Client;

import DAO.Client.AuthDAO;
import model.Account;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.Duration;
import java.time.LocalDateTime;

public class SubmitEmailControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Account customer = (Account) session.getAttribute("custemp");
        String codeverify = request.getParameter("codeverify");
        boolean checkCustommerExits = AuthDAO.checkAccountExist(customer.getAccountName(), customer.getEmail());
        LocalDateTime lastTime = (LocalDateTime) session.getAttribute("timeNow");
        LocalDateTime currentTime = LocalDateTime.now();
        Duration duration = Duration.between(lastTime, currentTime);
        if (duration.getSeconds() > 300) {
            request.setAttribute("timeUp", "Hết thời gian xác thực email!");
            request.getRequestDispatcher("/webapp/views/landings/landing/email-verification.jsp").forward(request, response);
        } else if (!codeverify.equals(session.getAttribute("newVerify"))) {
            request.setAttribute("error", "Mã xác thực không chính xác!");
            request.getRequestDispatcher("/webapp/views/landings/landing/email-verification.jsp").forward(request, response);
        } else if (checkCustommerExits == false) {
            AuthDAO.signup(customer.getAccountName(), customer.getPassword(), customer.getFullName(), customer.getEmail(),
                    customer.getEmail(), customer.getPhone());
            request.getRequestDispatcher("/webapp/views/landings/landing/login.jsp").forward(request, response);
        }
    }
}
