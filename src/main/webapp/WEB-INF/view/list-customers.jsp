<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="en">

<head>
<!-- reference our style sheet -->
<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<!-- reference our style sheet -->
	<title>List Customers</title>
	<style>
	.card {
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      max-width: 400px;
      margin: auto;
      text-align: center;
      font-family: arial;
       top: 100px;

    }

    .price {
      color: grey;
      font-size: 22px;
    }

    .card button {
      border: none;
      outline: 0;
      padding: 12px;
      color: white;
      background-color: #000;
      text-align: center;
      cursor: pointer;
      width: 100%;
      font-size: 18px;
    }



    .card button:hover {
      opacity: 0.7;
    }

    .column {
      flex: 33.33%;
      padding: 10px;
    }

    .row{
    display: flex;
    }

    body{
    background-color: rgb(140, 140, 140);

    }


	</style>
	
</head>

<body>
<!-- Navbar  -->
<nav class="navbar navbar-dark py-0 bg-dark navbar-expand-lg fixed-top">
    <div class="container-fluid">
		<a class="navbar-brand" href="pageContext.request.contextPath/customer/list">Home</a>
	</div>
</nav>

<!--Body -->
<div class="row">
<c:forEach var="tempCustomer" items="${burgers}">


<div class="card">
    <div class="column">
  <c:choose>
          <c:when test="${tempCustomer.id == 1}"><img src="${pageContext.request.contextPath}/resources/img/burger.jpg" alt="Denim Jeans" style="width:100%" class="jeans"></c:when>
          <c:when test="${tempCustomer.id == 2}"><img src="${pageContext.request.contextPath}/resources/img/burger2.jpg" alt="Denim Jeans" style="width:100%" class="jeans"></c:when>
          <c:when test="${tempCustomer.id == 3}"><img src="${pageContext.request.contextPath}/resources/img/restaurant.jpg" alt="Denim Jeans" style="width:100%" class="jeans"></c:when>
          <c:otherwise>undefined</c:otherwise>
  </c:choose>
  <h1>${tempCustomer.name}</h1>

  <p class="price">${tempCustomer.price}</p>
  <p>${tempCustomer.description}</p>
  <p><button>Add to Cart</button></p>

  </div>
</div>

</c:forEach>
</div>








</body>

</html>









