<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="javax.persistence.criteria.CriteriaBuilder.In"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>This Is Edit Page</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
 
   
    <div class="container">
         <%@include file="navbar.jsp" %>
         <h1>Edit Your Note</h1>
         <%
          
         int noteId=Integer.parseInt(request.getParameter("note_id").trim());
         Session se=FactoryProvider.getFactory().openSession();
         Note note=(Note)se.get(Note.class,noteId);
          
         
         %>
         
         <form action="UpdateServlet" method="post">
         <input value="<%= note.getId()%>" name="note_id" type="hidden">
           <div class="mb-3">
			  <label for="title" class="form-label">Note Title</label>
			  <input type="text" class="form-control"
			   name="title"
			   placeholder="Enter Title Here" 
			   required="required"
			    value="<%= note.getTitle() %>"
			   >
			   
			   
           </div>
    
    
    
     <div class="mb-3">
       <label for="exampleInputPassword1"  class="form-label">Note Content</label>
         <textarea id="content"
         placeholder="Enter Your Conteent here"
         class="form-control" 
         name="content"
         required="required" 
         style="height: 300px;"
         >
         <%= note.getContent() %></textarea>
         
     </div>
     
     
     <div class="container text-center">
     
     <button type="submit" class="btn btn-success">Save Your Note</button>
     
     </div>
     
     
  </form>
    </div>
    
    
   
   </body>
</html>