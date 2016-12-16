package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/plan"})
public class PlanServlet extends HttpServlet{

	private static final long serialVersionUID = -4771554803296964657L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String contextPath = request.getContextPath();
		request.setAttribute("contextPath", contextPath);

		// Session Check
		HttpSession session = request.getSession();
		new IndexServlet();
		if (session == null || session.getAttribute(IndexServlet.SESSION) == null) {
			response.sendRedirect(contextPath);
			return;
		}

		// Calling View
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/plan.jsp");
		dispatcher.forward(request, response);
	}

}
