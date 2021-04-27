<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="b1" class="com.java.mphasis.beans.Calc" />
<jsp:setProperty property="*" name="b1"/>
Sum is : <%=b1.sum() %>><br/><br/>
Sub is : <%=b1.sub() %> <br/><br/> 
Mult is : <%=b1.mult() %>
</body>
</html>