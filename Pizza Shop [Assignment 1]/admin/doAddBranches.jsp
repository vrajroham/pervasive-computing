<% 
	String bname=request.getParameter("bname"); 
	String blocation=request.getParameter("blocation");
	String bdetail=request.getParameter("bdetail");
%>
<%@ page import="java.io.*" %>
<% String bfile="/home/student/apache/tomcat/apache-tomcat-7.0.62/webapps/Raj133/branches.xml"; %>
<% try{
		PrintWriter pw=new PrintWriter(new FileOutputStream(bfile,true));
		String data="<item bname=\""+bname+"\" details=\""+bdetail+"\" blocation=\""+blocation+"\">"+bname+"</item>";
		pw.println(data);
		pw.close();
		out.println("New Branch Added");
	}catch(Exception e){
	    out.println(e);
	} 
%>
