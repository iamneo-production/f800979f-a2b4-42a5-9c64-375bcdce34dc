<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="model.Message"%>
	<%@page import="utility.ConnectionManager"%>
<%@page import="java.sql.Connection"%>

	
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
		<title>Sticky Notes</title>
	</head>
	<body>
		
		  
		  <br><br>
		  <div class="container">
			<%@include file="navbar.jsp" %> 
    
			<br>
			<div class="row justify-content-center">
				<div class="col-md-4">
				 <% Message msg =(Message) session.getAttribute("msg"); 
					  if(msg!=null){%>
						  <div class="alert alert-<%= msg.getCssClass() %>" role="alert">
							<%= msg.getContent() %>
							
							</div>
					  <% }
					  session.removeAttribute("msg");
				   %>
				
				</div>
			  
			<div class="card my-4 bg">
				<img class="img-fluid mx-auto mt-3" style="max-width: 450px;z-index:2"
					 src="https://i.ibb.co/pjG01Lf/oie-23103231-Uro9-Ewqw.gif">
	<!--            <img src="Taking notes-amico.png" alt=""/>-->
	<h1 class="text-primary  text-center" style="color: #673ab7!important">
					Start Taking Your Notes
				</h1>
				
				<div class="container text-center my-2">
		   
			<a class="btn btn-outline-primary text-center my-2 " href="add_notes.jsp">Start here</a>
		</div>
			</div> 
		
		
		  

		
	</body>
	
</html>