<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body >
<br>
<a href ="account">My Profile</a><br><br>
<a href ="myorders"> My Orders </a>
Welcome to Resto <a href="viewcart" > <c:out value="${cart.size()}"> </c:out> </a> Item(s)
<c:if test="${empty uid}">
<a href ="register?c=index">Sigin</a> 
</c:if>
<c:if test="${not empty uid}">
Hello <c:out value="${uid}"> </c:out> <a href ="logout">Sign out</a>
</c:if><br>

<c:forEach var="pr" items="${prs}"><br><br>
<c:out value ="${pr.name}"> </c:out> 
<c:out value ="${pr.price}"> </c:out>
<!-- <img src="data:image/jpg;base64,${pr.base64Image}" width="340" height="300"/> <img src="uploads/${pr.id}/${image}" width="340" height="300"/> --> 
<!--<c:forEach items="${pr.photo}" var="image">-->
</c:forEach>

 <div id="myCarousel" class="carousel slide" data-ride="carousel">
 
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
     <li data-target="#myCarousel" data-slide-to="1"></li>
  </ol>

<c:forEach items="${pr.photo}" var="image">
  <div class="carousel-inner">
    <div class="item active">
      <img src="uploads/${pr.id}/${image}" width="340" height="300" alt="">
    </div>
     <div class="item ">
      <img src="uploads/${pr.id}/${image}" width="340" height="300" alt="">
    </div>
  </div>
</c:forEach>

  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<a href="addcart?id=${pr.id}">Add to Cart</a>
</c:forEach>

</body>
</html>

<!-- <img src="data:image/jpg;base64,${pr.base64Image}" width="340" height="300"/>  
 <%--<img src="uploads/{$pr.id}/${pr.fileName}" width="340" height="300"/> --%> -->