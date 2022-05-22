<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resumebuildr | Create</title>
    <link rel="icon" type="image/x-icon" href="img/logo2.png">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Quando&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <script src="addField.js"></script>
</head>

<%!String fn="",ln="",eml="",phn="";%>
<%
	Cookie ck[] = request.getCookies();
	for(int i=0;i<ck.length;i++) {
		if(ck[i].getName().equals("first_name")) {
			fn = ck[i].getValue();
		}
		else if(ck[i].getName().equals("last_name")) {
			ln = ck[i].getValue();
		}
		else if(ck[i].getName().equals("email")) {
			eml = ck[i].getValue();
		}
		else if(ck[i].getName().equals("phone")) {
			phn = ck[i].getValue();
		}
	}
%>
    
<body>
    <div class="navbar">
        <div class="logo">
            <img src="img/logo1.png" alt="RB Logo" class="src">
        </div>
        <nav>
            <ul id="menuItems">
                <li>
                    <a href="index.html">Home</a>
                    <a href="about.html">About</a>
                    <a href="contact.html">Contact</a>
                </li>
            </ul>
        </nav>
        <div class="build-button">
            <a href="joinus.html">Build</a>
        </div>
        <i class="fa-solid fa-bars menu-icon" onclick="menuToggle()"></i>
    </div>

    <section class="build-page container">
        <div class="form-container">
            <form action="FillDatabase" method="post" id="form1">
                <fieldset>
                    <legend>Personal Details</legend>
                    <div class="row line1">
                        <div class="col">
                            <input type="text" name="first_name" id="first_name" placeholder="First Name" value=<%=fn%>>
                        </div>
                        <div class="col">
                            <input type="text" name="last_name" id="last_name" placeholder="Last Name" value=<%=ln%>>
                        </div>
                    </div>

                    <div class="row line2">
                        <div class="col">
                            <input type="text" name="email" id="email" placeholder="Email" value=<%=eml%>>
                        </div>
                        <div class="col">
                            <input type="text" name="phone" id="phone" placeholder="Phone" value=<%=phn%>>
                        </div>
                    </div>

                    <div class="row line3">
                        <div class="col">
                            <input type="text" name="address" id="address" placeholder="Address" required>
                        </div>
                        <div class="col">
                            <input type="text" name="city" id="city" placeholder="City" required>
                        </div>
                        <div class="col">
                            <input type="text" name="state" id="state" placeholder="State" required>
                        </div>
                        <div class="col">
                            <input type="text" name="zip" id="zip" placeholder="Zip" required>
                        </div>
                    </div>
                </fieldset>

                <fieldset id="f1">
                    <legend>Educational Qualifications</legend>
                    <div class="row line4">
                        <div class="col">
                            <input type="text" name="qualification" placeholder="Enter your qualification">
                        </div>
                        <div class="col">
                            <input type="text" name="institute_name" placeholder="Enter Insititute Name">
                        </div>
                    </div>

                    <div class="row line5">
                        <div class="col">
                            <input type="text" name="cgpa" placeholder="Enter CGPA">
                        </div>
                        <div class="col">
                            <input type="text" name="passing_year" placeholder="Enter Passing Year">
                        </div>
                    </div>
                    <input type="button" onclick="addEducation()" value="Add" name="add" id="add" class="form-btn add"></button>
                </fieldset>

                <fieldset id="f2">
                    <legend>Skills</legend>
                    <div class="row line6">
                        <div class="col">
                            <input type="text" name="skill" placeholder="Enter Skill">
                        </div>
                    </div>
                    <input type="button" onclick="addSkills()" value="Add" name="add" id="skillAdd" class="form-btn add">
                </fieldset>

                <fieldset id="f3">
                    <legend>Projects</legend>
                    <div class="row line7">
                        <div class="col">
                            <input type="text" name="project_title" placeholder="Project Title">
                        </div>
                        <div class="col">
                            <input type="text" name="project_desc" placeholder="Project Description">
                        </div>
                    </div>
                    <input type="button" onclick="addProjects()" value="Add" name="add" id="projectAdd" class="form-btn add">
                </fieldset>

                <fieldset id="f4">
                    <legend>Work Experience</legend>
                    <div class="row line8">
                        <div class="col">
                            <input type="text" name="organization_name" placeholder="Enter Organization Name">
                        </div>
                        <div class="col">
                            <input type="text" name="role" placeholder="Enter your role">
                        </div>
                    </div>

                    <div class="row line9">
                        <div class="col">
                            <input type="date" name="start-date" placeholder="Start Date">
                        </div>
                        <div class="col">
                            <input type="date" name="end-date" placeholder="End Date">
                        </div>
                    </div>
                    <input type="button" onclick="workExperience()" value="Add" name="add" id="workAdd" class="form-btn add">
                </fieldset>

                <fieldset id="f5">
                    <legend>Hobbies</legend>
                    <div class="row line10">
                        <div class="col">
                            <input type="text" name="hobbies" placeholder="Enter your hobby">
                        </div>
                        <!-- <div class="col">
                            <input type="button" onclick="addHobby()" id="addHobby" value="Add" name="add" class="form-btn add">
                        </div> -->
                    </div>
                    <input type="button" onclick="addHobbies()" id="addHobby" value="Add" name="add" class="form-btn add">
                </fieldset>
                <input type="submit" value="Generate Resume" name="submit-btn" class="form-btn">
            </form>
        </div>
    </section>

    <section class="footer">
        <div class="container">
            <div class="img-container row">
                <img src="img/logo1.png" alt="logo">
            </div>
            <div class="row">
                <div class="col">
                    <a href="#">Terms of Service</a>
                    <a href="#">Privacy Policy</a>
                </div>
                <div class="col">
                    <a href="#">Facebook</a>
                    <a href="#">Twitter</a>
                    <a href="#">Instagram</a>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h5>&copy; 2022 Resume Builder</h5>
                </div>
            </div>
        </div>
    </section>
    </section>
</body>



<script type="text/javascript">
    var menuItems = document.getElementById("menuItems");
    menuItems.style.maxHeight = "0px";

    function menuToggle() {
        if (menuItems.style.maxHeight == "0px") {
            menuItems.style.maxHeight = "200px";
        } else {
            menuItems.style.maxHeight = "0px";
        }
    }
</script>

<script text="text/javascript">
    function addSec() {

    }
</script>
</body>

</html>