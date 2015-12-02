<%@ page language="java" import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%
    String name1 = request.getParameter("fname");
    String name2 = request.getParameter("lname");
    String email = request.getParameter("umail");
    String pass = request.getParameter("upass");
    String gender = request.getParameter("ugender");
    String phone = request.getParameter("uphone");
    String role = request.getParameter("urole"); 
    try {
        
        Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","uttam");

        PreparedStatement ps = con.prepareStatement("insert into reg values(?,?,?,?,?,?)");
        ps.setString(1, name1);
        ps.setString(2, name2);
        ps.setString(3, email);
        ps.setString(4, pass);
        ps.setString(5, gender);
        ps.setString(6, phone);
        ps.executeUpdate();
        out.println("Data saved successfully");
    } catch (Exception e) {
        out.println(e);
    } 
%>
