package controller.book;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import vo.BookVO;


@WebServlet("/book/register.do")
public class RegisterController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() throws ServletException {
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/book/register.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// POST 요청
		String bno 	= req.getParameter("bno");
		String bname = req.getParameter("bname");
		String bpub 	= req.getParameter("bpub");
		String bpric  = req.getParameter("bpric");
		
		System.out.println("파라미터  get");
		
		BookVO vo = new BookVO();
		vo.setBno(bno);
		vo.setBname(bname);
		vo.setBpub(bpub);
		vo.setBpric(bpric);
		
		BookDAO.getInstance().insertBook(vo);
		
		//리다이렉트
		resp.sendRedirect("/Bookstore2/book/list.do");
	}
	
}
