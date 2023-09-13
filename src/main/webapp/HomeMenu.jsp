<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>eLearning Website</title> 
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">  
    <style> 
        body {
            background-color: #f8f9fa;
        }

        header {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav ul li {
            display: inline-block;
            margin-right: 20px;
        }

        main {
            padding: 20px;
        }

        .intro {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .featured-courses {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        footer {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
	.LR {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: #fff;
            border-radius: 30px;
            padding-top: 10px;
        }

        .LR ul {
            list-style: none;
            padding: 0;
        }

        .LR ul li {
            display: inline;
            margin-left: 20px;
        }

        .LR ul li a {
            color: #333;
            text-decoration: none;
            transition: color 0.9s ease;
            
        }

        .LR ul li a:hover {
            color: #007BFF;
            font-size: 20px;
        }

        .LR ul li a:active {
            color: #ff0000;
        }
        .LR:hover {
			border-width:3px;
			border-style: solid;
			border-color: silver;
			
		}
		/* Styling for the main navigation */
.main-nav {
    background-color: gray;
    padding: 10px 0;
}

.main-nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    text-align: center;
}

.main-nav ul li {
    display: inline-block;
    margin-right: 20px;
}

.main-nav ul li:last-child {
    margin-right: 0;
}

.main-nav ul li a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    padding: 5px 10px;
    border-radius: 3px;
    transition: background-color 0.3s ease;
}

.main-nav ul li a:hover {
    background-color: black;
}
		
    </style>
</head>
    <header>
        <h1>Welcome to Our eLearning Website</h1>
        
    </header>
    <nav class="LR">
        	<ul>
        	     <li><a href="Login.jsp">Login</a></li>
        	     <li><a href="Register.jsp"">Register</a> </li>
        	</ul>
        </nav>
    
    <nav class="main-nav">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="courses.jsp">Courses</a></li>
            <li><a href="schedule.jsp">Schedule</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
    </nav>
<body>
    
    <main>
        <section class="intro">
            <h2 class="text-center">Explore a World of Knowledge</h2>
            <p>Welcome to our eLearning platform where you can access a wide range of courses.</p>
        </section>
        <section class="featured-courses"> 
        </section>
    </main> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
