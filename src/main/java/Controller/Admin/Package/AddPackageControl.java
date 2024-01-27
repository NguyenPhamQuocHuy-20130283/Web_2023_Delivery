package Controller.Admin.Package;

import DAO.Client.CategoryDAO;
import model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/AddPackage")
public class AddPackageControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            session.setAttribute("listCategory", CategoryDAO.listCategory());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        request.getRequestDispatcher("/views/admin/add-order.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String nameSender = request.getParameter("nameSender");
        String phoneSender = request.getParameter("phoneSender");
        String namePackage = request.getParameter("namePackage");
        String addressSender = request.getParameter("address");
        String nameReceiver = request.getParameter("nameReceiver");
        String phoneReceiver = request.getParameter("phoneReceiver");
        String weight = request.getParameter("weight");

        switch (action){
            case "addPackage":

                break;
            case "calculatePrice":
                break;
            default:
                break;
        }
    }

}
