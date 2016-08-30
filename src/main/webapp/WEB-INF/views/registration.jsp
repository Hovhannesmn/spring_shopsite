<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<p><font color="red">${errorMessage}</font></p>
<a href="/">Sign In </a>
<form action="/registration" method="POST">
    First Name : <input name="firstName" type="text" /><br>
    Last Name : <input name="lastName" type="text" /><br>
    email: <input name="email" type="text" /><br>
    Password : <input name="password" type="password" /><br><br>
    <input type="submit" />
</form>

<%--${lists.add("privetik")}--%>

<c:forEach items="${lists}" var="item">
${item}<br>
</c:forEach>
</body>
</html>