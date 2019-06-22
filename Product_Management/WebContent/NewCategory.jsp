<!DOCTYPE html>
<html>
<head>
<title>New Category</title>
<link rel="stylesheet" type="text/css" href="view.css">
</head>

<body style="background-color:#A03">


<form action="CategoryUpdate.jsp" method="post" style="text-align:center">
<jsp:include page="header.jsp"></jsp:include>
<hr>
Category Name <input type="text" name="nnm" placeholder="Enter New Category here"><br><br>
Category Id <input type="text" name="nid" placeholder="Enter the Category id"><br><br>
Category Description <input type="textArea" name="ncdes"placeholder="Enter the Description of the category"><br><br>
<button type="Submit">ADD</button>
</form>

</body>
</html>
