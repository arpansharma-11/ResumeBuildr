<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "com.mongodb.*" %>
<%@ page import = "com.mongodb.client.*" %>

<%@ page import = "org.bson.Document"%>
<%@ page import = "org.bson.types.ObjectId"%>
<%@ page import = "java.util.*"%>

<%@ page import = "static com.mongodb.client.model.Filters.*"%>
<%@ page import = "static com.mongodb.client.model.Updates.*"%> 
<%@ page import = "Connect.Connection" %>

<%!Connection cn = new Connection();%>
<%
	try{
		MongoCollection<Document> collection = cn.getCollection("registrationData");
		
		
		
		Document document = new Document("firstname", request.getParameter("first_name"))
				.append("lastname", request.getParameter("last_name"))
				.append("email", request.getParameter("email"))
				.append("phone", request.getParameter("phone"))
				.append("password", request.getParameter("password"));
		collection.insertOne(document);
		System.out.println("Register Details inserted successfully");
	}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		System.out.println();
	}
%>