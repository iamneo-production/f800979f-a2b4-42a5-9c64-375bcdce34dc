package controller;

import java.util.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Topic;


@WebServlet("/ShowNotes")
public class ShowNotes extends HttpServlet{
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Topic> topics= TopicDao.viewTopicById();
        RequestDispatcher dispatcher = request.getRequestDispatcher("showNotes.jsp");
        request.setAttribute("top", topics);
        dispatcher.forward(request, response);

        

    }
    
}
