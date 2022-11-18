package controller.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomerDAO;
import vo.CustomerVO;


@WebServlet("/customer/register.do")
public class RegisterController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/customer/register.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// POST 요청
		String cusname = req.getParameter("cusname");
		String cusaddr 	= req.getParameter("cusaddr");
		String cushp  = req.getParameter("cushp");
		
		CustomerVO vo = new CustomerVO();
		vo.setCusname(cusname);
		vo.setCusaddr(cusaddr);
		vo.setCushp(cushp);
		
		CustomerDAO.getInstance().insertCustomer(vo);
		
		//리다이렉트
		resp.sendRedirect("/Bookstore2/customer/list.do");
	}
	
}
