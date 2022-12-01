package kr.co.farmstory2.controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.farmstory2.dao.UserDAO;
import kr.co.farmstory2.vo.UserVO;

@WebServlet("/user/login.do")
public class LoginController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		RequestDispatcher dispatcher = req.getRequestDispatcher("/user/login.jsp");
		dispatcher.forward(req, resp);
	
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// 데이터 수신
		String uid = req.getParameter("uid");
		String pass = req.getParameter("pass");
		String saveUid = req.getParameter("saveUid");
		
		// 데이터베이스 처리
		UserVO vo = UserDAO.getInstance().selectUser(uid, pass);

		//로그인 처리
		if(vo != null) {
			HttpSession session = req.getSession();
			session.setAttribute("sessUser", vo);
			resp.sendRedirect("/Farmstory2");
			
			
		}else {
			resp.sendRedirect("/Farmstory2/user/login.do?=success=100");
			
		}
		
	
	}
	

}
