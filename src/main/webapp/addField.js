function addEducation() {

    var x = document.getElementById("f1");
    // create an input field to insert
    var new_field1 = document.createElement("div");
    new_field1.setAttribute("class", "row line4");

    var div41 = document.createElement("div");
    div41.setAttribute("class", "col");

    new_field1.appendChild(div41);

    var inp41 = document.createElement("input");
    inp41.setAttribute("type", "text");
    inp41.setAttribute("placeholder", "Enter your qualification");
    inp41.setAttribute("name", "Qualification");

    div41.appendChild(inp41);

    var div42 = document.createElement("div");
    div42.setAttribute("class", "col");

    new_field1.appendChild(div42);

    var inp42 = document.createElement("input");
    inp42.setAttribute("type", "text");
    inp42.setAttribute("placeholder", "Enter Institute Name");
    inp42.setAttribute("name", "institute_name");

    div42.appendChild(inp42);

    //row line5


    var new_field2 = document.createElement("div");
    new_field2.setAttribute("class", "row line5");

    var div51 = document.createElement("div");
    div51.setAttribute("class", "col ");

    new_field2.appendChild(div51);

    var inp51 = document.createElement("input");
    inp51.setAttribute("type", "text");
    inp51.setAttribute("placeholder", "Enter CGPA");
    inp51.setAttribute("name", "cgpa");

    div51.appendChild(inp51);

    var div52 = document.createElement("div");
    div52.setAttribute("class", "col ");

    new_field2.appendChild(div52);

    var inp52 = document.createElement("input");
    inp52.setAttribute("type", "text");
    inp52.setAttribute("placeholder", "Enter Passing Year");
    inp52.setAttribute("name", "passing_year");

    div52.appendChild(inp52);

    var btn = document.getElementById("add");
    // insert element


    x.insertBefore(new_field1, btn);
    x.insertBefore(new_field2, btn);

    var line4 = document.querySelectorAll(".line4 .col input");

    for (var i = 0; i < line4.length; i++) {
        if (i % 2 == 0) {
            line4[i].name = "qualification" + Math.floor(i / 2);
        } else {
            line4[i].name = "institute_name" + Math.floor(i / 2);
        }
    }

    var line5 = document.querySelectorAll(".line5 .col input");

    for (var i = 0; i < line5.length; i++) {
        if (i % 2 == 0) {
            line5[i].name = "cgpa" + Math.floor(i / 2);
        } else {
            line5[i].name = "passing_year" + Math.floor(i / 2);
        }
    }

}


function addSkills() {
    var x = document.getElementById("f2");

    var new_field1 = document.createElement("div");
    new_field1.setAttribute("class", "row line6");

    var div61 = document.createElement("div");
    div61.setAttribute("class", "col");

    new_field1.appendChild(div61);

    var inp61 = document.createElement("input");
    inp61.setAttribute("type", "text");
    inp61.setAttribute("placeholder", "Enter Skill");
    inp61.setAttribute("name", "skill");

    div61.appendChild(inp61);


    var div62 = document.createElement("div");
    div62.setAttribute("class", "col option");

    new_field1.appendChild(div62);

    var r1 = document.createElement("input");
    r1.setAttribute("type", "radio");
    r1.setAttribute("id", "beginner");
    r1.setAttribute("name", "proficiency");
    r1.setAttribute("value", "1");
    var l1 = document.createElement("label");
    l1.setAttribute("for", "Beginner");
    l1.textContent = "Beginner";

    div62.appendChild(r1);
    div62.appendChild(l1);

    var div63 = document.createElement("div");
    div63.setAttribute("class", "col option");

    new_field1.appendChild(div63);


    var r2 = document.createElement("input");
    r2.setAttribute("type", "radio");
    r2.setAttribute("id", "amateur");
    r2.setAttribute("name", "proficiency");
    r2.setAttribute("value", "2");
    var l2 = document.createElement("label");
    l2.setAttribute("for", "amateur");
    l2.textContent = "Amateur";

    div63.appendChild(r2);
    div63.appendChild(l2);

    var div64 = document.createElement("div");
    div64.setAttribute("class", "col option");

    new_field1.appendChild(div64);

    var r3 = document.createElement("input");
    r3.setAttribute("type", "radio");
    r3.setAttribute("id", "professional");
    r3.setAttribute("name", "proficiency");
    r3.setAttribute("value", "3");
    var l3 = document.createElement("label");
    l3.setAttribute("for", "professional");
    l3.textContent = "Professional";

    div64.appendChild(r3);
    div64.appendChild(l3);

    var div65 = document.createElement("div");
    div65.setAttribute("class", "col option");

    new_field1.appendChild(div65);

    var r4 = document.createElement("input");
    r4.setAttribute("type", "radio");
    r4.setAttribute("id", "expert");
    r4.setAttribute("name", "proficiency");
    r4.setAttribute("value", "4");
    var l4 = document.createElement("label");
    l4.setAttribute("for", "expert");
    l4.textContent = "Expert";

    div65.appendChild(r4);
    div65.appendChild(l4);

    var btn = document.getElementById("skillAdd");

    x.insertBefore(new_field1, btn);

    var line6 = document.querySelectorAll(".line6 .col input");

    for (var i = 0; i < line6.length; i++) {
        if (i%5== 0) {
            line6[i].name = "skill" + i%5;
        } 
    }

}

function addProjects() {
    var x = document.getElementById("f3");

    var new_field1 = document.createElement("div");
    new_field1.setAttribute("class", "row line7");

    var div71 = document.createElement("div");
    div71.setAttribute("class", "col");

    new_field1.appendChild(div71);

    var inp71 = document.createElement("input");
    inp71.setAttribute("type", "text");
    inp71.setAttribute("placeholder", "Project Title");


    div71.appendChild(inp71);

    var div72 = document.createElement("div");
    div72.setAttribute("class", "col");

    new_field1.appendChild(div72);

    var inp72 = document.createElement("input");
    inp72.setAttribute("type", "text");
    inp72.setAttribute("placeholder", "Project Description");


    div72.appendChild(inp72);

    var btn = document.getElementById("projectAdd");

    x.insertBefore(new_field1, btn);

    var line7 = document.querySelectorAll(".line7 .col input");

    for (var i = 0; i < line7.length; i++) {
        if (i % 2 == 0) {
            line7[i].name = "project_title" + Math.floor(i / 2);
        } else {
            line7[i].name = "project_description" + Math.floor(i / 2);
        }
    }

}


function workExperience() {
    var x = document.getElementById("f4");

    var new_field1 = document.createElement("div");
    new_field1.setAttribute("class", "row line8");

    var div81 = document.createElement("div");
    div81.setAttribute("class", "col");

    var inp81 = document.createElement("input");
    inp81.setAttribute("type","text");
    inp81.setAttribute("placeholder","Enter Organization Name");

    var div82 = document.createElement("div");
    div82.setAttribute("class", "col");

    var inp82 = document.createElement("input");
    inp82.setAttribute("type","text");
    inp82.setAttribute("placeholder","Enter your role");

    div81.appendChild(inp81);
    div82.appendChild(inp82);
    new_field1.appendChild(div81);
    new_field1.appendChild(div82);

    //new_field2

    var new_field2 = document.createElement("div");
    new_field2.setAttribute("class", "row line9");

    var div91 = document.createElement("div");
    div91.setAttribute("class", "col");

    var inp91 = document.createElement("input");
    inp91.setAttribute("type","date");
    inp91.setAttribute("placeholder","Start Date");

    var div92 = document.createElement("div");
    div92.setAttribute("class", "col");

    var inp92 = document.createElement("input");
    inp92.setAttribute("type","date");
    inp92.setAttribute("placeholder","End Date");

    div91.appendChild(inp91);
    div92.appendChild(inp92);
    new_field2.appendChild(div91);
    new_field2.appendChild(div92);


    

    var btn = document.getElementById("workAdd");

    x.insertBefore(new_field1, btn);
    x.insertBefore(new_field2, btn);


    var line8 = document.querySelectorAll(".line8 .col input");

    for (var i = 0; i < line8.length; i++) {
        if (i % 2 == 0) {
            line8[i].name = "organization_name_" + Math.floor(i / 2);
        } else {
            line8[i].name = "role_" + Math.floor(i / 2);
        }
    }

    var line9 = document.querySelectorAll(".line9 .col input");

    for (var i = 0; i < line9.length; i++) {
        if (i % 2 == 0) {
            line9[i].name = "start-date_" + Math.floor(i / 2);
        } else {
            line9[i].name = "end-date_" + Math.floor(i / 2);
        }
    }
}


function addHobbies() {
    var x = document.getElementById("f5");

    var new_field1 = document.createElement("div");
    new_field1.setAttribute("class", "row line10");

    var div10 = document.createElement("div");
    div10.setAttribute("class", "col");

    var inp10= document.createElement("input");
    inp10.setAttribute("type","text");
    inp10.setAttribute("placeholder", "Enter your hobby");

    div10.appendChild(inp10);
    new_field1.appendChild(div10);

    var btn = document.getElementById("addHobby");
    x.insertBefore(new_field1,btn);


    var line10 = document.querySelectorAll(".line10 .col input");

    for (var i = 0; i < line10.length; i++) {
            line10[i].name = "hobby_" + i;   
    }
    
}