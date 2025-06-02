package controllers;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import beans.User;
import services.TaskService;

/**
 * Servlet implementation class newtaskServlet
 */
@WebServlet("/newtaskServlet")
public class newtaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newtaskServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("newTask.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TaskService ts = new TaskService();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		String title = request.getParameter("title");
		String status = request.getParameter("status");
		String date = request.getParameter("deadline");
		LocalDate deadline = LocalDate.parse(date);
		int user_id = user.getId();
		System.out.println(user_id);
		
		int id = ts.insert(title, status, deadline, user_id);
		System.out.println(id);
		
		response.sendRedirect("indexServlet");
	}

}
