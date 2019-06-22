<html>
<head>
<title>Search Product</title>

</head>
<link rel="stylesheet" type="text/css" href="view.css">
<body style="background-color:#A03">
<h1>Admin Registration</h1>
<hr>
<div align="center">
    <form action="list" method="post">
        Select a Category:&nbsp;
        <select name="category">
            <c:forEach items="${listCategory}" var="category">
                <option value="${category.id}"
                      <c:if test="${category.id eq selectedCatId}">selected="selected"</c:if>
                    >
                    ${category.name}
                </option>
            </c:forEach>
        </select>
        <br/><br/>
        <input type="submit" value="Submit" />
    </form>
</div>
</body>
</html>