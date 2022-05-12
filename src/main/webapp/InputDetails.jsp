<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Input</title>
</head>
<body>
<form action = "FillDatabase" method="post">
<h2>Personal Information</h2>
<%! String fn,ln,eml,phn;%>
<%
	Cookie ck[] = request.getCookies();
	for(int i = 0; i<ck.length; i++)
	{
		if(ck[i].getName().equals("first_name"))
		{
			fn = (String)ck[i].getValue();
		}
		if(ck[i].getName().equals("last_name"))
		{
			ln = (String)ck[i].getValue();
		}
		if(ck[i].getName().equals("email"))
		{
			eml = (String)ck[i].getValue();
		}
		if(ck[i].getName().equals("phone"))
		{
			phn = (String)ck[i].getValue();
		}
	}
%>

First Name<input type = "text" name = "first_name" value=<%=fn %>><br>
Last Name<input type = "text" name = "last_name" value=<%=ln %>><br>
Email<input type = "email" name = "email" value=<%=eml %>><br>
Phone No.<input type = "text" name = "phone" value=<%=phn %>><br>
Address<input type = "text" name = "address" placeholder = "Enter Address"><br><br>

<h2>About</h2>
About<input type = "text" name = "about" placeholder = "Enter About You"><br><br>

<h2>Educational Qualification</h2>
Qualification<input type = "text" name = "qualification" placeholder = "Enter your qualification"><br>
Institute<input type = "text" name = "institute_name" placeholder = "Enter Insititute Name"><br>
CGPA<input type = "text" name = "cgpa" placeholder = "Enter CGPA"><br><br>

<h2>Skills</h2>
Skill name<input type = "text" name = "skill" placeholder = "Enter Skill">
<select name="proficiency">
<option value = "1">1</option>
<option value = "2">2</option>
<option value = "3">3</option>
<option value = "4">4</option>
<option value = "5">5</option>
</select><br><br>

<h2>Projects</h2>
Project Title<input type = "text" name = "project_title" placeholder = "Enter Project Title"><br>
Project Description<input type = "text" name = "project_desc" placeholder = "Enter Project Description"><br><br>

<h2>Work Experience</h2>
Organization Name<input type = "text" name = "organization_name" placeholder = "Enter Organization Name"><br>
Role<input type = "text" name = "role" placeholder = "Enter your role"><br>
Experience<input type = "text" name = "experience" placeholder = "Enter your experience"><br>
Tenure<input type = "text" name = "tenure" placeholder = "Enter Tenture"><br><br>

<h2>Hobbies</h2>
Hobby Name<input type = "text" name = "hobby" placeholder = "Enter hobby"><br><br>

<input type="submit">
</form>
</body>
</html>