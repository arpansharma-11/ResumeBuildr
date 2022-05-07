<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import = "com.mongodb.*" %>
<%@ page import = "com.mongodb.client.MongoClients" %>
<%@ page import = "com.mongodb.client.MongoClient"%>
<%@ page import = "com.mongodb.client.MongoCollection"%>
<%@ page import = "com.mongodb.client.MongoDatabase"%>
<%@ page import = "com.mongodb.client.model.Filters"%>
<%@ page import = "com.mongodb.client.model.UpdateOptions"%>
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
		MongoCollection<Document> collection = cn.getCollection("fillResumeData");
		Document document = new Document("firstname", request.getParameter("first_name"))
				.append("lastname", request.getParameter("last_name"))
				.append("email", request.getParameter("email"))
				.append("phone", request.getParameter("phone"))
				.append("address", request.getParameter("address"))
				.append("about", request.getParameter("about"))
				.append("qualification", request.getParameter("qualification"))
				.append("institute_name", request.getParameter("institute_name"))
				.append("cgpa", request.getParameter("cgpa"))
				.append("skill", request.getParameter("skill"))
				.append("proficiency", request.getParameter("proficiency"))
				.append("project_title", request.getParameter("project_title"))
				.append("project_desc", request.getParameter("project_desc"))
				.append("organization_name", request.getParameter("organization_name"))
				.append("role", request.getParameter("role"))
				.append("experience", request.getParameter("experience"))
				.append("tenure", request.getParameter("tenure"))
				.append("hobby", request.getParameter("hobby"));
		collection.insertOne(document);
		System.out.println("Document inserted successfully");
	}
	catch(Exception e){
		System.out.println(e);
	}
	finally{
		System.out.println();
	}
%>