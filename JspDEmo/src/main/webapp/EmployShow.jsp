<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.java.mphasis.jsp.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <%
		Connection con = ConnectionHelper.getConnection();
		String cmd = "select * from Employ";
		PreparedStatement pst = con.prepareStatement(cmd);
		ResultSet rs = pst.executeQuery();
		while(rs.next()) {
			out.println("Employ No  " +rs.getInt("empno") + "<br/>");
			out.println("Employ Name  " +rs.getString("Name") + "<br/>");
			out.println("Department  " +rs.getString("dept") + "<br/>");
			out.println("Designation  " +rs.getString("desig") + "<br/>");
			out.println("Gender  " +rs.getString("Gender") + "<br/>");
			out.println("Salary  " +rs.getInt("basic") + "<br/><hr/>");
		}
	%>
</body>
</html>