function validation() {
    var email = document.getElementById('email').value;
    var number = document.getElementById('number').value;
    var password = document.getElementById('password').value;
    var cpassword = document.getElementById('confirm-password').value;
    var passwordcheck = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{6,12}$/;
    var emailcheck = /^[A-Za-z_0-9.]{3,}@[A-Za-z]{3,}[.]{1}[A-Za-z.]{2,6}$/;
    var numbercheck = /^[6789][0-9]{9}$/;
    if (emailcheck.test(email)) {
        console.log("Data Entry Successful");
    }
    else {
        alert("Invalid Email Address. \nPlease enter a valid one.");
        return false;
    }
    if (numbercheck.test(number)) {
        console.log("Data Entry Successful");
    }
    else {
        alert("Invalid Phone Number. \nPlease try again with a valid one");
        return false;
    }
    if(passwordcheck.test(password)){
        console.log("Data Entry Successful");
    }
    else{
        alert("Password length should be between 6 to 12, \nThere should be one numeric \nAn upper case letter \nA lower case letter \nA special character");
        return false;
    }
    if(!passwordcheck.value.match(password)){
		msg2 = "**Password length should be between 6 to 12, \n There should be one numeric \n An upper case letter \n A lower case letter \n A special character!"
		alert(msg2)
		return false;
	}
	else if(password.value != cpassword.value){
		alert("**Password and Confirm password should be same!");
		password.value = "";
		cpassword.value = "";
		return false;
	}
	return true;
};