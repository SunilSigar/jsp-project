<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %><br>
<font color="Green"> <h1><u> Search Result</u> </h1></font>
<a href="adddonor.jsp"><br>Add new Blood Donor </a> </br>
<%@ include file="db.jsp" %>
<TABLE ALIGN="left" BORDER CELLSPACING="0" CELLPADDING="0">
<CAPTION><B>Blood Donor Information</B></CAPTION>
<TH>Name</TH>
<TH>Blood Group</TH>
<TH>Gender</TH>
<TH>Mobile Number</TH>
<TH>State</TH>
<TH>District</TH>
<TH>Email</TH>
<TH>Address</TH>
<TH>User Id</TH>
<TH>PWD</TH>
<TH>Availability</TH>

<TR ALIGN="CENTER">



<%
String bg=request.getParameter("bg");
 String ss=request.getParameter("ss");
 String ds=request.getParameter("ds");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from students where BloodGroup='"+bg+"' and District='"+ds+"'" ); 
while(rs.next()) 
{ 
%>
<TR ALIGN="CENTER"> 
<TD><B><%=rs.getString(1)%></B></TD>
<TD><B><%=rs.getString(2)%></B></TD>
<TD><B><%=rs.getString(3)%></B></TD>
<TD><B><%=rs.getString(4)%></B></TD>
<TD><B><%=rs.getString(5)%></B></TD>
<TD><B><%=rs.getString(12)%></B></TD>
<TD><B><%=rs.getString(6)%></B></TD>
<TD><B><%=rs.getString(7)%></B></TD>
<TD><B><%=rs.getString(8)%></B></TD>
<TD><B><%=rs.getString(9)%></B></TD>
<TD><B><%=rs.getString(10)%></B></TD>




</TR>
<%
}
%>

</TABLE> 

