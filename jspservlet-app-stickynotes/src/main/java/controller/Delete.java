package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.TopicDao;
import model.Message;
import utility.ConnectionManager;

public class Delete extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		
		int noteId =Integer.parseInt(req.getParameter("topicid"));
		//out.println(topicid);
		TopicDao tdao = new TopicDao(ConnectionManager.getConnection());
		tdao.deleteTopic(noteId);
		HttpSession s = req.getSession();
		Message m = new Message("Note Deleted", "error", "danger");
		s.setAttribute("msg", m);
		res.sendRedirect("index.jsp");
		out.println("Note Deleted");
	}

}
