package controllers;

import java.io.IOException;
import java.time.LocalDate;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import beans.Task;
import services.TaskService;

/**
 * Servlet implementation class updateServlet
 */
@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		TaskService ts = new TaskService()
				
;	    Task task = ts.selectById(id);

	    request.setAttribute("task", task);
	    request.getRequestDispatcher("update.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String num1 = request.getParameter("id");
		int id = Integer.parseInt(num1);
		String title = request.getParameter("title");
		String status = request.getParameter("status");
		String date = request.getParameter("deadline");
		LocalDate deadline = LocalDate.parse(date);
		String num2 = request.getParameter("user_id");
		int user_id = Integer.parseInt(num2);
		
		Task task = new Task(id, title, status, deadline, user_id);
		TaskService ts = new TaskService();
		
		ts.update(task);
		
		response.sendRedirect("indexServlet");
	}

}
