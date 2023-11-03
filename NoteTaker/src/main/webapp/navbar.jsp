<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<nav class="navbar navbar-expand-lg  purple">
  <div class="container-fluid">
    <a class="navbar-brand  fw-bold text-white " >Note Taker</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"  aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active  fw-bold text-white text-uppercase" aria-current="page" href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-white fw-bold text-uppercase " href="add_notes.jsp">Add Note</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link text-white fw-bold text-uppercase" id="navText" href="all_notes.jsp">Show Notes</a>
        </li>
      </ul>
      <form action="SearchServlet" class="d-flex" role="search">
        <input class="form-control me-2" name="search" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-light " type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</body>
</html>