package servlet;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.SessionBean;

@WebServlet(urlPatterns = {"/index","/login"})
public class IndexServlet extends HttpServlet{

	private static final long serialVersionUID = -2177527727524242922L;

	public static final String SESSION = "login";

	/**
	 * GET (View Login Screen).
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// セッション破棄
		HttpSession session = request.getSession();
		if (session != null && session.getAttribute(SESSION) != null) {
			session.removeAttribute(SESSION);
		}
		// View呼び出し
		String contextPath = request.getContextPath();
		request.setAttribute("contextPath", contextPath);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * POST (Login Check).
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ResourceBundle rb = ResourceBundle.getBundle("web");
		String pass = request.getParameter("password");
		Boolean err = false;
		String contextPath = request.getContextPath();
		// Password Check
		if (pass == null || pass.isEmpty()) {
			request.setAttribute("error", "Login Error");
			err = true;
		} else if (!pass.equals(rb.getString("pass"))) {
			request.setAttribute("error", "Password Error");
			err = true;
		}
		if (err) {
			// Login Error
			contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "?error");
		} else {
			// Login Success
			// Session Create
			HttpSession session = request.getSession();
			SessionBean bean = new SessionBean();
			bean.setIp(request.getRemoteAddr());
			session.setAttribute(SESSION, bean);
			// To Next Page
			contextPath = request.getContextPath();
			response.sendRedirect(contextPath + "/plan");
		}
	}
}
