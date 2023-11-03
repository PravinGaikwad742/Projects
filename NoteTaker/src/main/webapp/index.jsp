<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title> Note Taker :Home page</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
 
   
    <div class="container ">
         <%@include file="navbar.jsp" %>
         <h1 >This is Home page</h1>
         <div class="card p-3">
         
         <img alt="" class="img-fluid mx-auto" src="image/notes.png
         ">
            <h1 class="text-primary text-center mt-3">Start Taking your notes</h1>
            <div class="container text-center p-2">
           <a href="add_notes.jsp"> <button class="btn btn-outline-primary text-center">Start</button>
           </a>
            </div>
              </div>
    </div>
    
    
   
   </body>
</html>