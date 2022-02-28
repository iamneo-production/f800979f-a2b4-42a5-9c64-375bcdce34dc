package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Topic;
import model.Message;
import service.TopicDao;
@WebServlet("/Servlet")
public class Servlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String topicName = request.getParameter("topicName");
        String topicDescription =request.getParameter("topicDescription");
        String date =request.getParameter("enterDate");
        PrintWriter out = response.getWriter();
        Topic top = new Topic();
        top.setTopicName(topicName);
        top.setTopicDescription(topicDescription);
        top.setDate(date);
        boolean b = TopicDao.create();
        int insert = TopicDao.addTopic(top);
        if(insert>0){
           Message m = new Message("Note Saved Succefully !", "success", "success");
	    s.setAttribute("msg", m);
	    res.sendRedirect("index.jsp");
        } else if(insert <=0 || b ){
            out.println("Error while adding data");
        }
        

    }
}
    

