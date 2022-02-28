<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="utility.ConnectionManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="assets/css/style.css" rel="stylesheet">
    <script src="js/style.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>

    <title>Edit Note Page</title>

</head>

<body>
    <%@include file="navbar.jsp" %>
        <%int Id=Integer.parseInt(request.getParameter("topicid")); Connection con=ConnectionManager.getConnection();
            String query="select * from notes where topicid=" +Id; Statement stmt=con.createStatement(); ResultSet
            rs=stmt.executeQuery(query); if(rs.next()){ %>
            <br><br>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title text-center">Update Note </h5>
                            <p class="card-text">
                            <form action="Update" method="POST" class="row g-3">
                                <div>
                                    <input type="hidden" name="topicId" value="<%= rs.getInt(" topicId") %>">
                                </div>
                                <div class="col-6">
                                    <label for="FormInput1" class="form-label">Topic</label>
                                    <input type="text" class="form-control" name="topicName" value="<%= rs.getString("
                                        noteTitle") %>" id="topicName" placeholder="Topic Name" required>
                                </div>
                                <div class="col-6">
                                    <label for="FormInput2" class="form-label">Date:mm/dd/yyyy</label>
                                    <input type="date" class="form-control" name="enterDate" id="enterDate"
                                        placeholder="Date" required>
                                </div>
                                <div class="col-12">
                                    <label for="FormTextarea" class="form-label">Topic Description</label>
                                    <textarea class="form-control" name="topicDescription" value="<%= rs.getString("
                                        noteDesc") %>" id="topicDescription" rows="7" required></textarea>
                                </div>

                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary" value="Update"
                                        id="addNoteButton">Add</button>
                                </div>
                            </form>


                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <% }%>

</body>

</html>