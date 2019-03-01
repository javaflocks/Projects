<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}



/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<form action="signup.action" method="post" name="signup" id="signup">
 <div class="container">
  	<div class="row">
    <h1>Sign Up</h1>
    <p>Please fill in this form to Request an account.</p>
    <hr>
	
	<label for="name"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" name="name" maxlength="100" required>
    
	<label for="lastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lastName" maxlength="100" required>
    
    <label for="email"><b>Primary Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" maxlength="100" required>
    
    <label for="altemail"><b>Alternate Email</b></label>
    <input type="text" placeholder="Enter Email" name="altemail" >
	
	<label for="altmobile"><b>Alternate Mobile Number</b></label>
    <input type="text" placeholder="Enter Mobile No." name="altmobile" maxlength="12" required>
    
    <label for="mobile"><b>Mobile Number</b></label>
    <input type="text" placeholder="Enter Mobile No." name="mobile" maxlength="12">
    
    <label for="address"><b>Address</b></label>
    <textarea class="form-control" placeholder="Enter Address" rows="5" id="address" name="address"></textarea>
    
    
    <label for="pincode"><b>Pin Code</b></label>
    <input type="text" placeholder="Enter Pin Code" name="pincode" maxlength="10">
    
    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
  </div>
</form>