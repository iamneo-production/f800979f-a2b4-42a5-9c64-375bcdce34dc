<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
       
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link href="assets/css/style.css" rel="stylesheet">
		<title>Add notes</title>
	</head>
    <body class="bg">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script
            src="https://code.jquery.com/jquery-3.5.1.js"
            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>   
         <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

        <div class="container">
            <%@include file="navbar.jsp" %> 
            <br>
            <form action="Servlet" method="POST" class="row g-3">
                  
                <div class="col-6">
                    <label for="FormInput1" class="form-label">Topic</label>
                    <input type="text" class="form-control" name = "topicName" id="topicName" placeholder="Topic Name" required>
                  </div>
                  <div class="col-6">
                    <label for="FormInput2" class="form-label">Date:mm/dd/yyyy</label>
                    <input type="date" class="form-control" name = "enterDate" id="enterDate" placeholder="Date" required>
                  </div>
                  <div class="col-12">
                    <label for="FormTextarea" class="form-label">Topic Description</label>
                    <textarea class="form-control" name = "topicDescription" id="topicDescription" rows="7" required></textarea>
                  </div>

                  <div class="col-12">
                    <button type="submit" class="btn btn-primary" value = "submit" id="addNoteButton">Add</button>
                  </div>
                </form>
            </div>
            
        </body>
    
       
</html>