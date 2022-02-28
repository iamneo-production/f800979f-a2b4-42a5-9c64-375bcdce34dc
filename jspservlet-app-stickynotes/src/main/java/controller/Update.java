package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.TopicDao;
import model.Message;
import model.Topic;
import utility.ConnectionManager;

public class Update extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		//getting values from edit.jsp page 
		int noteId=Integer.parseInt( req.getParameter("topicId"));
		String topicName = req.getParameter("titleName");
		String topicDescription = req.getParameter("titleDescription");
		//saving values to note obj
        PrintWriter out = response.getWriter();
		Topic top = new Topic();
        top.setTopicName(topicName);
        top.setTopicDescription(topicDescription);
		//updating this values 
		TopicDao tdao = new TopicDao(ConnectionProvider.getConnection());
		tdao.updateTopic(top);
		Message m = new Message("Note Updated....!", "success", "success");
		HttpSession s = req.getSession();
		s.setAttribute("msg", m);
		res.sendRedirect("index.jsp");
		out.println("Note Updated....!");
		
		
		
		
	}
}