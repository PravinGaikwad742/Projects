<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Add Notes</title>
    <%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container">
         <%@include file="navbar.jsp" %>
         <h1>Please fill your Notes</h1>
         
  <form action="SaveNoteServlet" method="post">
  <div class="mb-3">
			<label for="title" class="form-label">Note Title</label>
			<input type="text" class="form-control"
			 id="title" 
			 name="title"
			 placeholder="Enter Title Here" required="required">
    </div>
    
    
    
  <div class="mb-3">
    <label for="exampleInputPassword1"  class="form-label">Note Content</label>
     <textarea id="content"
         placeholder="Enter Your Conteent here"
         class="form-control" 
         name="content"
         required="required" 
         style="height: 300px;"></textarea>
     </div>
     
     
     <div class="container text-center">
     
     <button type="submit" class="btn btn-primary">Add</button>
     
     </div>
     
     
  </form>
  
  
    </div>
</body>
</html>