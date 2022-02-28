<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*" import= "controller.Servlet" import="model.Topic" 
    import="service.TopicDao" import="service.ShowNotes"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="assets/css/style.css" rel="stylesheet">
        <script src="js/style.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <title>Show Notes</title>
    </head>
    <body>
        
          
          <br><br>
          <div class="container">
            <%@include file="navbar.jsp" %> 
    
            <br>
            <% List<Topic> top = (List<Topic>)request.getAttribute("top"); %>
            <div class="row mx-5">

                <div class="col-12">
                    
                    <% for(Topic tp:top){ %>

                        <div class="card" >
                            <div class="card-body">
                                      <h5 class="card-title"><%= tp.getTopicName() %></h5>
                              <h6 class="card-subtitle mb-2 text-muted"><%= tp.getDate() %></h6>
                          
                                  <p class="card-text"><%=tp.getTopicDescription()%> </p>
                                  <a href="#" class="btn btn-primary">Edit</a>
                                  <a href="#" class="btn btn-primary">Delete</a>
                            </div>
                          </div>
                          

                    <%} %>
                    



                </div>
            </div>
                
          </div>
      
        
    </body>
    
</html>
