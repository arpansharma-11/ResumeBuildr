<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.mongodb.DBCursor" %>
<%@ page import = "com.mongodb.BasicDBObject"%>
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
<%@ page import = "java.util.Iterator" %>

<%@ page import = "Connect.Connection" %>

<%!Connection cn = new Connection();%>
<%
	MongoCollection<Document> collection = cn.getCollection("registrationData");
	BasicDBObject whereQuery = new BasicDBObject();
	whereQuery.put("employeeId", 5);
	DBCursor cursor = collection.find(whereQuery);
	while(cursor.hasNext()) {
	    System.out.println(cursor.next());
	}
%>