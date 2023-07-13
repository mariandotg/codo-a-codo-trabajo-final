package models;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

public class MemberController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public MemberController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        String action = null;
        MemberDao memberDao = null;

        try {
            memberDao = new MemberDao();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = null;
        action = request.getParameter("action");
        System.out.println(action);

        if(action == null || action.isEmpty()) {
            dispatcher = request.getRequestDispatcher("views/members.jsp");
        }
        else if(action.equals("modificar")) {
            dispatcher = request.getRequestDispatcher("views/modificar.jsp");
        }
        else if(action.equals("actualizar")) {
            int id = Integer.parseInt(request.getParameter("id"));

            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            int nationalId = Integer.parseInt(request.getParameter("nationalId"));
            String email = request.getParameter("email");
            Member member = new Member(id, name, lastName, nationalId, email, true, LocalDate.now());

            assert memberDao != null;
            memberDao.updateMember(member);
            dispatcher = request.getRequestDispatcher("views/members.jsp");
        }
        else if(action.equals("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            assert memberDao != null;
            memberDao.deleteMember(id);
            dispatcher = request.getRequestDispatcher("views/members.jsp");
        }
        else if(action.equals("nuevo")) {
            dispatcher = request.getRequestDispatcher("views/nuevo.jsp");
        }
        else if(action.equals("insert")) {
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            int nationalId = Integer.parseInt(request.getParameter("nationalId"));
            String email = request.getParameter("email");

            Member member = new Member(0, name, lastName, nationalId, email, true, LocalDate.now());
            assert memberDao != null;
            memberDao.postMember(member);
            dispatcher = request.getRequestDispatcher("views/members.jsp");
        }
        assert dispatcher != null;
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
