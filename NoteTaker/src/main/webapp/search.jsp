<!doctype html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Note Taker : page</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
 
   
    <div class="container ">
         <%@include file="navbar.jsp" %>
         <h1 >This is Home page</h1>
         <div class="card p-3">
         <%
        String search = request.getParameter("search"); 
 		Session sess= FactoryProvider.getFactory().openSession();
 		Note note= new Note();
 		  Query q=sess.createQuery("from Note n where n.content=:search");
 		 List<Note> list=q.list();
 		
 		for(Note n:list)
 		{
 			if(n.getTitle().equals(search))
 				
 		
 		
 		{%>
 			
 			 <div class="row">
 	          <div class="col-12">
 	          
 	          <%
 	         
 	       
 	       
 	         
 	       
 	         for(Note not:list)
 	         {
 	        %>	 
 	        	 
 	        	 <div class="card m-3">
 	        	 <img class="card-img-top m-4 text-center" style ="max-width:100px;" src="image/notes.png">
 	        	 <div class="card-body">
 	        	   
 	        	   <h5 class="card-title"><%=not.getTitle() %></h5>
 	        	   <p class="card-text" >
 	        	    <%= not.getContent() %>
 	        	   </p>
 	        	  <div> <p class="text-primary pl-5"><b><%=not.getAdddDate() %></b></p></div>
 	        	   <div class="container text-center">
 	        	   <a href="DeleteServlet?note_id=<%= not.getId() %>" class="btn btn-danger">Delete</a>
 	        	   <a href="edit.jsp?note_id=<%= not.getId() %>" class="btn btn-primary">Update</a>
 	        	 
 	        	   </div>
 	        	  </div>
 	        	 
 	        	 </div>
 	        	
 	         
 	    
 	        <% }
 	          
 	         %>
 	          
 	          </div>
 	         </div>
 	<%	}
 		else
 		{ %>
 		
         <h1>Data Note Found</h1>
         <% } }%>
         
         </div>
    </div>
    
    
   
   </body>
</html>