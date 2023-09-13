<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Courses Carousel</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- You can include your custom CSS here for additional styling -->
</head>
<body>
    <div class="container mt-4">
        <h2>Featured Courses</h2>
        <div id="courseCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#courseCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#courseCarousel" data-slide-to="1"></li>
                <li data-target="#courseCarousel" data-slide-to="2"></li>
                <!-- Add more indicators as needed -->
            </ul>

            <!-- Slides -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/course4.jpg" alt="Course 1">
                    <div class="carousel-caption">
                        <h3>Course 1</h3>
                        <p>Description of Course 1</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/course4.jpg" alt="Course 2">
                    <div class="carousel-caption">
                        <h3>Course 2</h3>
                        <p>Description of Course 2</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Images/course4.jpg" alt="Course 3">
                    <div class="carousel-caption">
                        <h3>Course 3</h3>
                        <p>Description of Course 3</p>
                    </div>
                </div>
                <!-- Add more slides for additional courses -->
            </div>

            <!-- Controls -->
            <a class="carousel-control-prev" href="#courseCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#courseCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <!-- Include Bootstrap and jQuery scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
