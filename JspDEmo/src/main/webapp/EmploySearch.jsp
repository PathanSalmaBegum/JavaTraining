<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.java.mphasis.jsp.ConnectionHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <form method="get" action="EmploySearch.jsp">
           Employ no:
           <input type="number" name="empno"/><br/><br/>
           <input type="submit" value="Search"/>
       </form>
       <%
          if(request.getParameter("empno")!=null)
          {
        	  Connection con=ConnectionHelper.getConnection();
        	  String cmd = "select * from Employ where empno=?";
  			PreparedStatement pst = con.prepareStatement(cmd);
  			pst.setInt(1, Integer.parseInt(request.getParameter("empno")));
  			ResultSet rs = pst.executeQuery();
  			if (rs.next()) {
  				out.println("Employ Name " +rs.getString("name") + "<br/>");
  				out.println("Employ Department " +rs.getString("dept") + "<br/>");
  				out.println("Employ Designation " +rs.getString("desig") + "<br/>");
  				out.println("Employ Gender " +rs.getString("gender") + "<br/>");
  				out.println("Employ salary " +rs.getString("basic") + "<br/>");
  			}
        	  
          }
       %>
</body>
</html>