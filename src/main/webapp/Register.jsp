<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        /* Styling for the registration page */
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-container {
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            width: 350px;
            text-align: center;
        }

        h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input{
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
        }

        a {
            color: #007BFF;
            text-decoration: none;
        }
    </style>
    <script type="text/javascript">
    function validate() 
  	{
  		let phone=document.getElementById("phone").value;
  		let pwd=document.getElementById("password").value; 
  		let email=document.getElementById("email").value; 
  		let name=document.getElemntById("username").value;
  		let role=document.getElemntById("role").value;
  		
  		console.log("phone: "+phone);
  		console.log("pwd: "+pwd); 
  		console.log("email: "+email);
  		console.log("name: "+name);
  		console.log("role: "+role);
  	
  		
  		if(phone=="")
  		{	alert("Phone must not be empty..");
  			return false;
  		}
  		else if(pwd=="")
  		{	alert("Password must not be empty..");
			return false;
		} 
  		else if(name=="")
  		{	alert("name must not be empty..");
			return false;
		} 
  		else if(role=="")
  		{	alert("role must not be empty..");
			return false;
		} 
  		return true;
	}
 
    </script>
</head>
<body>
<%
		String msg=request.getParameter("msg");
		if(msg==null)
			msg="";
		//out.println(msg);
		
%>
    <div class="register-container">
        <h1>Register</h1>
        <div>
				<span class="mt-1 p-1  text-success display-5 text-center"><%=msg%></span>				
	</div>
        <form action="RegisterServlet" method="post" onSubmit="return validate()">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="password">Gmail:</label>
                <input type="email" id="mail" name="mail" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="number" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="role">Role:</label>
                <input type="text" id="role" name="role" required>
            </div>
            
            <button type="submit">Register</button>
            <button class="btn btn-info" type="reset">Reset</button>
        </form>
        <p>Already have an account? <a href="Login.jsp">Login</a></p>
    </div>
</body>
</html>
