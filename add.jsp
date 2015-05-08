<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ include file="db.jsp"%>
<font color="Green"><h1 align="center">Donor added</h1></font>
<%
String fn=request.getParameter("fn"); 
 String bg=request.getParameter("bg");
 String g=request.getParameter("g"); 
 String mn=request.getParameter("mn"); 
 String ss=request.getParameter("ss");
 String ds=request.getParameter("ds");
 String ei=request.getParameter("ei");
  String a=request.getParameter("a"); 
 String ui=request.getParameter("ui");
 String p=request.getParameter("p");
  String pc=request.getParameter("pc"); 
 String c=request.getParameter("c");
 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into students values ('"+fn+"','"+bg+"','"+g+"','"+mn+"','"+ss+"','"+ei+"','"+a+"','"+ui+"','"+p+"','"+pc+"','"+c+"','"+ds+"')"); 

%>

<h3 align="center">
<a href="adddonor.jsp">Add a new Donor </a> </br>
<a href="searchInput.jsp">Search a Donor </a></br>
<a href="show.jsp">View Donor Details </a></h3>
</br>
