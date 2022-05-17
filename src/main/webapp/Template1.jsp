<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.mongodb.client.*"%>
<%@ page import = "com.mongodb.client.MongoCollection"%>
<%@ page import = "org.bson.Document" %>
<%@ page import = "org.bson.types.ObjectId"%>
<%@ page import = "com.mongodb.*" %>
<%@ page import = "static com.mongodb.client.model.Filters.*"%>
<%@ page import = "static com.mongodb.client.model.Updates.*"%>
<%@ page import = "Connect.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Template - 1</title>
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.7.0/build/reset-fonts-grids/reset-fonts-grids.css" media="all" /> 
<link rel="stylesheet" type="text/css" href="Template1.css" media="all" />
<script src="Template1.js"></script>
<script src="https://raw.githack.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>
</head>
<body>
<%!String name="",eml = ""; %>
<%
	Connection cn = new Connection();
	try{
		Cookie ck[] = request.getCookies();
		for(int i=0;i<ck.length;i++) {
			if(ck[i].getName().equals("email")) {
				eml = ck[i].getValue();
				break;
			}
		}
		
		MongoCollection<Document> collection = cn.getCollection("fillResumeData");
		Document myEmail = collection.find(eq("email", eml)).first();
		name = myEmail.get("firstname")+" "+myEmail.get("lastname");
		%>
		
		<div id="doc" class="template_1">
		<div id="inner">

			<div id="hd" class="personalParent">
				<div class="yui-gc">
					<div class="yui-u first userName">
						<h1><%=name%></h1>
					</div>
					<div class="yui-u personalChild">
						<div class="contact-info">
							<button onclick="generatePdf()"><a id="pdf" href="#">Download PDF</a></button>
							<h3><a href="<%=myEmail.get("email")%>"><%=myEmail.get("email")%></a></h3>
							<h3><%=myEmail.get("phone")%></h3>
							<h3><%=myEmail.get("address")%></h3>
							<h3><%=myEmail.get("city")%></h3>
							<h3><%=myEmail.get("state")%></h3>
							<h3><%=myEmail.get("zip")%></h3>
						</div>
					</div>
				</div>
			</div>
			<div class="yui-gf last eductionParent">
				<div class="yui-u first">
					<h2>Education</h2>
				</div>
				<div class="yui-u educationChild">
					<h2><%=myEmail.get("institute_name")%></h2>
					<h3>Bachelor in Technology &mdash; <strong><%=myEmail.get("cgpa")%></strong> </h3>
					<h3><%=myEmail.get("passing_year")%></h3>
				</div>
			</div>
			<div id="bd">
				<div id="yui-main">
					<div class="yui-b">

						<div class="yui-gf skillParent">
							<div class="yui-u first">
								<h2>Skills</h2>
							</div>
							<div class="yui-u skillchild">

								<div class="talent skillGrandchild">
									<h2><%=myEmail.get("skill")%></h2>
									<h3><%=myEmail.get("proficiency")%></h3>
								</div>

								<div class="talent skillGrandchild">
									<h2>Interface Design</h2>
									<h3>Proficiency</h3>
								</div>

								<div class="talent skillGrandchild">
									<h2>Project Direction</h2>
									<h3>Proficiency</h3>
								</div>
							</div>
						</div>

						
						<div class="yui-gf projectParent">

							<div class="yui-u first">
								<h2>Projects</h2>
							</div>

							<div class="yui-u projectChild">

								<div class="job projectGrandchild">
									<h2><%=myEmail.get("project_title")%></h2>
									<p><%=myEmail.get("project_desc")%></p>
								</div>

								<div class="job projectGrandchild">
									<h2>Project Title</h2>
									<p>Project Description</p>
								</div>

							</div>
						</div>
						<div class="yui-gf jobParent">

							<div class="yui-u first">
								<h2>Experience</h2>
							</div>

							<div class="yui-u jobChild">

								<div class="job jobGrandchild">
									<h2><%=myEmail.get("organization_name")%></h2>
									<h3><%=myEmail.get("role")%></h3>
									<h4><%=myEmail.get("start-date")+" - "+myEmail.get("end-date")%></h4>
								</div>

								<div class="job jobGrandchild">
									<h2>Organization Name</h2>
									<h3>Role<h3>
									<h4>Start Date-End Date</h4>
								</div>
							</div>
						</div>
						<div class="yui-gf hobbyParent">

							<div class="yui-u first">
								<h2>Hobbies</h2>
							</div>

							<div class="yui-u hobbyChild">
								<div class="job hobbyGrandchild">
									<h2><%=myEmail.get("hobbies")%></h2>
								</div>

								<div class=" job hobbyGrandchild">
									<h2>Hobby 2</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		
	<% 
		
	}
	catch(Exception e){
		System.out.println(e);
	}
 %>


</body>

</html>