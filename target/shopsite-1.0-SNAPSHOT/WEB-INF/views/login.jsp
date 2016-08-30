<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hovo</title>
    <link type="text/css" rel="StyleSheet" href="http://verjin.ru/.s/src/layer7.css" />
    <link type="text/css" rel="Stylesheet" href="http://verjin.ru/.s/src/panel7.css" />
</head>
<body>
<p><font color="red">${errorMessage}</font></p>
<a href="/registration">Sign Up </a>
<form action="/" method="POST">
    Name : <input name="email" type="text" /> Password : <input name="password" type="password" /> <input type="submit" />
</form>

${lists.add("privetik")}

<c:forEach items="${lists}" var="item">
    ${item}<br>
</c:forEach>
<c:forEach items="${data}" var="items">
    ${items}<br>
</c:forEach>
</body>
</html>


<!-- 0.00523 (s85) -->