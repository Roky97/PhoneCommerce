<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<link rel="stylesheet" href="css/productsViewStyle.css">
 <script src="js/cart.js" type="text/javascript"></script>
 <script src="js/wishlist.js" type="text/javascript"></script>

 
 	
 	
 <!--  RIGA NUOVI PRODOTTI  -->
 
   	
   	<div class="boxcontainer container mt-5">
   	<h2 class="text-center" style="margin-bottom:40px;"> ${pageTitle} </h2>
	    <div class="row justify-content-center">
	        <c:forEach var="brandProduct" items="${brandProducts}">
	        <div class="col-auto mb-3">
	            <div class="card" style="width: 20rem;">
		 			<a href="home?action=singleProductView&productId=${brandProduct.id}" >
						<div style=" padding:10px;">
							<div class="img-preview" style=" background-image: url('${brandProduct.imageString}');"> </div>
						</div>
					</a>
						<div class="card-body flex-fill ">
							<h5 class="card-title">${brandProduct.name} ${brandProduct.price}0 €</h5>
							<h6 class="card-subtitle mb-2 text-muted">${brandProduct.category.name}</h6> <!-- category --> 
						    <p class="card-text">${brandProduct.description}</p>
							<button type="button" class="btn btn-sm btn-primary add-product-on-cart" data-id="${brandProduct.id}"> <i class="fa fa-shopping-cart"></i> </button> 
				  			<button type="button" class="btn btn-sm btn-warning btn-add-product-on-wishlist" data-idproduct="${brandProduct.id}" data-idwishlist="${wishlist.id}"> <i class="fa fa-heart-o"></i> Aggiungi ai preferiti</button>
						</div>
	        	 </div>
	        </div>
	        </c:forEach>
		</div>
	</div>
