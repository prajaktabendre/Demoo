<form action="registration_db.jsp">
<link rel="stylesheet" href="css/registration.css">
  <div class="container">
    <h1>Register</h1>
    <hr>
     
     
      <label for="firstname"><b>FirstName</b></label>
      <input type="text" placeholder="Enter firstname" name="firstname" id="firstname" required>
      
      <label for="lastname"><b>LastName</b></label>
      <input type="text" placeholder="Enter lastname" name="lastname" id="lastname" required>
      
      <label for="username"><b>UserName</b></label>
      <input type="text" placeholder="Enter Username" name="username" id="username" required>
     
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="psw" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
    
     <div class="form-group">
                            <select name="role" class="form-input"  required>
                            	<option value="" selected disabled hidden title="Tooltip">Select Role</option>
                            	<option value="employee">Employee</option>
                            	<option value="facilator">Facilator</option>
                            	
                            </select>
      </div>
    
    <hr>

    
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
    <p>Already have an account? <a href="index.jsp">LogIn</a>.</p>
  </div>
</form>
