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


@WebServlet("/customer/modify.do")
public class ModifyController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String custId = req.getParameter("custId");
		CustomerVO vo = CustomerDAO.getInstance().selectCustomer(Integer.parseInt(custId));
		
		req.setAttribute("vo", vo);
		
		// 포워드
		RequestDispatcher dispatcher = req.getRequestDispatcher("/customer/modify.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String custId  = req.getParameter("custId");
		String cusname = req.getParameter("cusname");
		String cusaddr 	= req.getParameter("cusaddr");
		String cushp  = req.getParameter("cushp");
		
		CustomerVO vo = new CustomerVO();
		vo.setCustId(custId);
		vo.setCusname(cusname);
		vo.setCusaddr(cusaddr);
		vo.setCushp(cushp);
		
		CustomerDAO.getInstance().updateCustomer(vo);
		
		// 리다이렉트
		resp.sendRedirect("/Bookstore2/customer/list.do");
		
	}
		
}
