<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product List</title>
</head>
<body>
Products:

<sf:form method="POST" commandName="selectedproducts" action="list.html">
		<div>
			<c:forEach var="product" items="${productList}">
				<sf:checkbox path="itemList" value="${product.productId}" />
				<a href="view.html?productId=${product.productName}">
					<c:out value="${product.productName}" />
				</a>
				<br>
			</c:forEach>
		</div>
 		<input type="submit" value="Delete" />
	</sf:form>


<a href="add.html">Add New Product</a>
</body>
</html>