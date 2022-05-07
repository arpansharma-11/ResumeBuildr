<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.mongodb.client.MongoClients" %>
<%@ page import = "com.mongodb.client.MongoClient"%>
<%@ page import = "com.mongodb.client.MongoCollection"%>
<%@ page import = "com.mongodb.client.MongoDatabase"%>
<%@ page import = "com.mongodb.client.model.Filters"%>
<%@ page import = "com.mongodb.client.model.UpdateOptions"%>
<%@ page import = "com.mongodb.client.FindIterable"%>
<%@ page import = "com.mongodb.client.result.*"%>
<%@ page import = "org.bson.Document"%>
<%@ page import = "org.bson.types.ObjectId"%>
<%@ page import = "java.util.List"%>
<%@ page import = "java.util.Arrays"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "static com.mongodb.client.model.Filters.*"%>
<%@ page import = "static com.mongodb.client.model.Updates.*"%> 

<%@ page import = "Connect.Connection" %>

<%!Connection cn = new Connection();%>
<%
	try{
	MongoCollection<Document> collection = cn.getCollection("registrationData");
	Document myEmail = collection.find(eq("email", request.getParameter("email"))).first();
	if(myEmail != null){
		if(myEmail.get("password").equals(request.getParameter("password"))){
			%><h1>User Found</h1><%
		}
		else{
			//%><h1>Wrong Password</h1><%
		}
	}
	else{
		%><h1>Email not found</h1><%
	}
	}
	catch(Exception e){
		System.out.println(e);
	}
%>