package Controller.Client;

import Connect.DB;
import DAO.Client.AuthDAO;
import model.Account;
import model.Log;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Login")
public class LoginControl extends HttpServlet {
    private static final long serialVersionUID = 1L;
    String name = "Login";
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String userName = request.getParameter("email");
        String passWord = request.getParameter("password");
        String pid = request.getParameter("pid");

        HttpSession session = request.getSession();
        Account account = AuthDAO.loginNoJdbi(userName, passWord);
        System.out.println(account);
        String ipAddress = request.getRemoteAddr();
        Log log = new Log(Log.INFO, ipAddress, -1, this.name, "", 0);
        if (account == null) {
            log.setSrc(this.name + " LOGIN FALSE");
            log.setContent("LOGIN FALSE: USER - " + userName);
            log.setLevel(Log.WARNING);
            request.setAttribute("error", "Tài khoản hoặc mật khẩu không hợp lệ ");
            System.out.println("Tài khoản hoặc mật khẩu không hợp lệ ");
            request.getRequestDispatcher("/views/landings/landing/login.jsp").forward(request, response);
        } else {

            session.setMaxInactiveInterval(1800);
            log.setSrc(this.name + " LOGIN");
            log.setContent("LOGIN SUCCESS: USER - " + userName);

            int id = account.getIdRoleMember();
            session.setAttribute("account", account);
            String sessionID = ";jsessionid="+session.getId();
            response.sendRedirect(request.getContextPath() + "/AdminHome"+sessionID);
        }

    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
}
