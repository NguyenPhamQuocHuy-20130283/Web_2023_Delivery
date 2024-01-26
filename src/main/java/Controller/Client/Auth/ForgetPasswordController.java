package Controller.Client.Auth;

import DAO.Client.AccountDAO;
import Utils.SendEmail;
import model.Account;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ForgetPasswordController")
public class ForgetPasswordController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
		String email = request.getParameter("Email");
		Account a = AccountDAO.getAccountByEmail(email);
		if (a == null) {
			request.setAttribute("emailNot", email);
			request.setAttribute("errorForget", "Email này không tồn tại bạn vui lòng tạo tài khoản mới");
			request.getRequestDispatcher("/client/Login.jsp").forward(request, response);
		}else {
			String newPass = SendEmail.getRandomPass(8);
			AccountDAO.editAccountPassword(String.valueOf(a.getId()), newPass);
			SendEmail.sendMailFogetPassWord(email, newPass);
			request.setAttribute("emailNot", email);
			request.setAttribute("sucForget", "Chúng tôi đã gửi mật khẩu cho bạn vui lòng kiểm tra email");
			request.getRequestDispatcher("../webapp/views/landings/landing/login.jsp").forward(request, response);

		}
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
