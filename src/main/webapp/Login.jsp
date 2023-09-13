<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
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

        .login-container {
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
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

        input[type="text"],
        input[type="password"]{
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
        button[type="submit"]:hover{
            font-size:15px;
            border-radius: 6px;
        }

        .error-message {
            color: #ff0000;
            margin-top: 10px;
        }

        a {
            color: #007BFF;
            text-decoration: none;
        }
        
    </style>
</head>
<body>
 
<%
		String msg=request.getParameter("msg");
		if(msg==null)
			msg="";
		//out.println(msg);
		
%>
    <div class="login-container">
     <div>
				<span class="mt-2 p-2  text-success display-5 text-center"><%=msg%></span>				
	</div>
        <h1>Login</h1>
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        <p class="error-message">
            <%-- Display login error message here if needed --%>
        </p>
        <p>Don't have an account? <a href="signup.jsp">Sign up</a></p>
    </div>
</body>
</html>
