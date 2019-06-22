<!DOCTYPE html>
<html>
<head>
<title>New Product</title>
</head>
<link rel="stylesheet" type="text/css" href="view.css">
<body style="background-color:#A03">


<form action="ProductUpdate.jsp" method="post" style="text-align:center">
<jsp:include page="header.jsp"></jsp:include><br><br>

Product Name <input type="text" name="nnm" placeholder="Enter Product Name"><br><br>
Product Price <input type="text" name="nprice" placeholder="Enter price"><br><br>
Product Quantity <input type="text" name="nqnty" placeholder="Enter quantity"><br><br>
Product Category Id <input type="text" name="ncid" placeholder="Enter Category id"><br><br>
Product Description<input type="textArea" name="npdes"placeholder="Enter the Description of the Product"><br><br>
<button type="Submit">ADD</button>
</form>

</body>
</html>
