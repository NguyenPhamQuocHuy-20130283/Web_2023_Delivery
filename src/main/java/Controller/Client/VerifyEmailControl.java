package Controller.Client;

import Util.SendEmail;
import model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.time.LocalDateTime;

@WebServlet("/VerifyEmailControl")
public class VerifyEmailControl extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Account customer = (Account) request.getAttribute("cus");
        String email = request.getParameter("email");
        System.out.println(email);
        request.setAttribute("email", customer.getEmail());
        String newVerify = SendEmail.getRandomPass(6);
        SendEmail.sendMailFogetPassWord(email, newVerify);
        HttpSession session = request.getSession();
        session.setAttribute("newVerify", newVerify);
        session.setAttribute("custemp", customer);
        session.setAttribute("timeNow", LocalDateTime.now());
        request.getRequestDispatcher("/webapp/views/landings/landing/email-verification.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
