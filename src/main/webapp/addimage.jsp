<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddImage</title>
</head>
<body>
<form action="message.jsp" method="post"  enctype="multipart/form-data">
<input type="hidden" name="id" value="${param.id}">
<input type="file"  name = "photo"><br><br>
<input type="submit" value="Submit" ><br>
</form>
</body>
</html>