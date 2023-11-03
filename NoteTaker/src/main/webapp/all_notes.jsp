<!doctype html>

<%@page import="java.util.ArrayList"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Note Taker :Home page</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
 
   
    <div class="container">
         <%@include file="navbar.jsp" %>
         <br>
         <h1 class="text-uppercase">All Notes:</h1>
         
         
         <div class="row">
          <div class="col-12">
          
          <%
         
         Session s=FactoryProvider.getFactory().openSession();
         Query q=s.createQuery("from Note");
         List<Note> list=q.list();
         
         for(Note note:list)
         {
        %>	 
        	 
        	 <div class="card m-3">
        	 <img class="card-img-top m-4 text-center" style ="max-width:100px;" src="image/notes.png">
        	 <div class="card-body">
        	   
        	   <h5 class="card-title"><%=note.getTitle() %></h5>
        	   <p class="card-text" >
        	    <%= note.getContent() %>
        	   </p>
        	  <div> <p class="text-primary pl-5"><b><%=note.getAdddDate() %></b></p></div>
        	   <div class="container text-center">
        	   <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
        	   <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">Update</a>
        	 
        	   </div>
        	  </div>
        	 
        	 </div>
        	
         
    
        <% }
          
         %>
          
          </div>
         </div>
         
         
         
    </div>
    
    
   
   </body>
</html>