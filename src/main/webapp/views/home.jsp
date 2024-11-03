<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - Course Management System</title>
    <link rel="stylesheet" href="https://cdn.tailwindcss.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
        .slider {
            position: relative;
            overflow: hidden;
        }
        .slides {
            display: flex;
            transition: transform 0.5s ease;
        }
        .slide {
            min-width: 100%;
        }
        .slider-button {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            background: rgba(255, 255, 255, 0.8);
            border: none;
            cursor: pointer;
            padding: 10px;
        }
        .slider-button-left {
            left: 10px;
        }
        .slider-button-right {
            right: 10px;
        }
    </style>
</head>
<body class="bg-gray-100">

    <jsp:include page="navbar.jsp" />

    <div class="relative px-20">
        <div class="slider">
            <div class="slides" id="slides">
                <div class="slide">
                    <img src="https://storage.googleapis.com/a1aa/image/HwecPrKPpxQ6byQ1OoqJnvLWeojU054TTAYiWALnG6p6qjrTA.jpg" alt="A person learning online with a laptop" class="w-full h-96 object-cover">
                </div>
                <div class="slide">
                    <img src="https://www.skillcast.com/hubfs/YoungPeopleBusinessMeeting_1200x627.jpg" alt="Another learning image" class="w-full h-96 object-cover">
                </div>
                <div class="slide">
                    <img src="https://cdn.prod.website-files.com/65830f20095c31525532a93d/65830f20095c31525532aceb_63647d14d20f4c2cf779a362_14%2520Tips%2520On%2520How%2520To%2520Organize%2520Effective%2520Meetings.jpeg" alt="Third learning image" class="w-full h-96 object-cover">
                </div>
            </div>
            <button class="slider-button slider-button-left" onclick="prevSlide()">&#10094;</button>
            <button class="slider-button slider-button-right" onclick="nextSlide()">&#10095;</button>
        </div>
        <div class="absolute inset-0 flex items-center justify-center">
            <div class="bg-white bg-opacity-80 p-8 rounded shadow-lg text-center">
                <h1 class="text-4xl font-bold mb-4">Unlock Your Potential</h1>
                <p class="text-gray-700 mb-6">Join our Course Management System to enhance your skills and knowledge.</p>
                <a href="${pageContext.request.contextPath}/explorecourses" class="bg-purple-600 text-white font-bold py-2 px-4 rounded hover:bg-purple-700">
                    Explore Courses
                </a>
            </div>
        </div>
    </div>
    
    <script>
        let currentSlide = 0;
        const slides = document.getElementById('slides');
        const totalSlides = slides.children.length;

        function showSlide(index) {
            slides.style.transform = 'translateX(' + (-index * 100) + '%)';
        }

        function nextSlide() {
            currentSlide = (currentSlide + 1) % totalSlides;
            showSlide(currentSlide);
        }

        function prevSlide() {
            currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
            showSlide(currentSlide);
        }

        // Auto slide every 5 seconds
        setInterval(nextSlide, 5000);
    </script>

    
    <div class="container mx-auto px-20 py-20">
        <h1 class="text-4xl font-bold mb-4">All the skills you need in one place</h1>
        <p class="text-lg text-gray-600 mb-8">From critical skills to technical topics, Udemy supports your professional development.</p>

    <!-- Navigation Links -->
				<div class="flex space-x-8 border-b border-gray-200 pb-2 mb-8">
				    <a href="#" class="text-lg font-semibold text-gray-600">Web Development</a>
				    <a href="#" class="text-lg font-semibold text-gray-600">IT Certifications</a>
				    <a href="#" class="text-lg font-semibold text-gray-600">Leadership</a>
				    <a href="#" class="text-lg font-semibold text-gray-600">Data Science</a>
				    <a href="#" class="text-lg font-semibold text-gray-600">Communication</a>
				    <a href="#" class="text-lg font-semibold text-gray-600">Business Analytics & Intelligence</a>
				</div>
				
				<!-- Scrollable Skills Section -->
				<div class="flex space-x-4 overflow-x-auto py-4 bg-gray-100 rounded-lg">
				    <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500 cursor-pointer" onclick="showWebDevCards()">
				        <p class="font-semibold">Web Development</p>
				        <p class="text-sm">13.3M+ learners</p>
				    </div>
				    <!-- Other skills... -->
				    
				    
				    <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500">
                <p class="font-semibold">JavaScript</p>
                <p class="text-sm">17.7M+ learners</p>
            </div>
            <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500">
                <p class="font-semibold">React JS</p>
                <p class="text-sm">7M+ learners</p>
            </div>
            <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500">
                <p class="font-semibold">Angular</p>
                <p class="text-sm">4M+ learners</p>
            </div>
            <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500">
                <p class="font-semibold">Java</p>
                <p class="text-sm">15.5M+ learners</p>
            </div>
            <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500">
                <p class="font-semibold">Android Development</p>
                <p class="text-sm">8M+ learners</p>
            </div>
            <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500">
                <p class="font-semibold">iOS Development</p>
                <p class="text-sm">4M+ learners</p>
            </div>
            <div class="flex-shrink-0 bg-gray-200 text-black rounded-full px-6 py-3 hover:bg-gray-500">
                <p class="font-semibold">CSS</p>
                <p class="text-sm">9M+ learners</p>
            </div>
            
        </div>
				    
	</div>
				
				<!-- Web Development Cards (Initially Hidden) -->
	<div id="webDevCards" class="grid grid-cols-1 md:grid-cols-2 gap-8 mt-8 hidden">
    <!-- Card 1 -->
    <div class="bg-white shadow-lg rounded-lg p-6 transform transition duration-300 hover:scale-105 hover:shadow-2xl border border-gray-200">
        <h3 class="text-2xl font-semibold text-gray-800 mb-2">HTML & CSS Basics</h3>
        <p class="text-sm text-gray-600 mb-4">Learn the foundations of web development.</p>
        <button class="mt-auto inline-flex items-center text-blue-600 font-semibold hover:text-blue-800 transition duration-200">
            Learn More
            <svg class="ml-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M12.293 3.293a1 1 0 010 1.414L7.414 9H17a1 1 0 110 2H7.414l4.879 4.879a1 1 0 11-1.414 1.414l-6.293-6.293a1 1 0 010-1.414l6.293-6.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>
        </button>
    </div>

    <!-- Card 2 -->
    <div class="bg-white shadow-lg rounded-lg p-6 transform transition duration-300 hover:scale-105 hover:shadow-2xl border border-gray-200">
        <h3 class="text-2xl font-semibold text-gray-800 mb-2">JavaScript Essentials</h3>
        <p class="text-sm text-gray-600 mb-4">Master the basics of JavaScript programming.</p>
        <button class="mt-auto inline-flex items-center text-blue-600 font-semibold hover:text-blue-800 transition duration-200">
            Learn More
            <svg class="ml-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M12.293 3.293a1 1 0 010 1.414L7.414 9H17a1 1 0 110 2H7.414l4.879 4.879a1 1 0 11-1.414 1.414l-6.293-6.293a1 1 0 010-1.414l6.293-6.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>
        </button>
    </div>

    <!-- Card 3 -->
    <div class="bg-white shadow-lg rounded-lg p-6 transform transition duration-300 hover:scale-105 hover:shadow-2xl border border-gray-200">
        <h3 class="text-2xl font-semibold text-gray-800 mb-2">Responsive Design</h3>
        <p class="text-sm text-gray-600 mb-4">Build websites that look great on any device.</p>
        <button class="mt-auto inline-flex items-center text-blue-600 font-semibold hover:text-blue-800 transition duration-200">
            Learn More
            <svg class="ml-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M12.293 3.293a1 1 0 010 1.414L7.414 9H17a1 1 0 110 2H7.414l4.879 4.879a1 1 0 11-1.414 1.414l-6.293-6.293a1 1 0 010-1.414l6.293-6.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>
        </button>
    </div>

    <!-- Card 4 -->
    <div class="bg-white shadow-lg rounded-lg p-6 transform transition duration-300 hover:scale-105 hover:shadow-2xl border border-gray-200">
        <h3 class="text-2xl font-semibold text-gray-800 mb-2">Front-End Frameworks</h3>
        <p class="text-sm text-gray-600 mb-4">Introduction to frameworks like React and Angular.</p>
        <button class="mt-auto inline-flex items-center text-blue-600 font-semibold hover:text-blue-800 transition duration-200">
            Learn More
            <svg class="ml-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M12.293 3.293a1 1 0 010 1.414L7.414 9H17a1 1 0 110 2H7.414l4.879 4.879a1 1 0 11-1.414 1.414l-6.293-6.293a1 1 0 010-1.414l6.293-6.293a1 1 0 011.414 0z" clip-rule="evenodd"></path></svg>
        </button>
    </div>
</div>
	
				
				<script>
				    // Function to show/hide Web Development Cards
				    function showWebDevCards() {
				        const webDevCards = document.getElementById("webDevCards");
				        webDevCards.classList.toggle("hidden");
				    }
				</script>
      </div> 
    <!-- Courses Section -->
    <section id="courses" class="py-6">
        <div class="container mx-auto px-4">
            <h2 class="text-4xl font-bold text-center mb-10">Available Courses</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <!-- Course Card 1 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="https://media.geeksforgeeks.org/wp-content/uploads/20241017105314407132/Basics-of-Computer-Programming-For-Beginners.webp" alt="Course Image" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-2">Course 1: Basics of Programming</h3>
                        <p class="text-gray-700 mb-4">Learn the fundamentals of programming with hands-on examples.</p>
                        <a href="#" class="bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
					        Enroll Now
					    </a>
                    </div>
                </div>
                <!-- Course Card 2 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="https://img-c.udemycdn.com/course/750x422/1468694_d595_2.jpg" alt="Course Image" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-2">Course 2: JavaScript Essentials</h3>
                        <p class="text-gray-700 mb-4">Dive into JavaScript and learn how to create dynamic web applications.</p>
                        <a href="#" class="bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
					        Enroll Now
					    </a>
                    </div>
                </div>
                <!-- Course Card 3 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="https://blog-media.byjusfutureschool.com/bfs-blog/2021/10/04211736/Python-for-Beginners-Article-Page.png" alt="Course Image" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-2">Course 3: Python for Beginners</h3>
                        <p class="text-gray-700 mb-4">Start your programming journey with Python, one of the most popular languages.</p>
                        <a href="#" class="bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
					        Enroll Now
					    </a>
                    </div>
                </div>
                <!-- Course Card 4 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="https://media.licdn.com/dms/image/D4E12AQEEzT08o0QxzA/article-cover_image-shrink_600_2000/0/1678306967729?e=2147483647&v=beta&t=ourUoVRy92GOr1CHai-wqK8XYrb13et2qn0JLNatOEA" alt="Course Image" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-2">Course 4: Java Fundamentals</h3>
                        <p class="text-gray-700 mb-4">Learn the basics of Java programming language and its applications.</p>
                        <a href="#" class="bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
					        Enroll Now
					    </a>
                    </div>
                </div>
                <!-- Course Card 5 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-KcrWPzf0YmN_xSZekLNlXcjGphpc4TxAuA&s" alt="Course Image" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-2">Course 5: Web Development with HTML & CSS</h3>
                        <p class="text-gray-700 mb-4">Create beautiful websites using HTML and CSS from scratch.</p>

                             <a href="#" class="bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
					        Enroll Now
					    </a>
                    </div>
                </div>
                <!-- Course Card 6 -->
                <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQrbDCA3Maj45_3QbtmL1xKkJZUVCz1cYo-g&s" alt="Course Image" class="w-full h-48 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-semibold mb-2">Course 6: Introduction to Databases</h3>
                        <p class="text-gray-700 mb-4">Understand database concepts and learn SQL to manage data.</p>
                        <a href="#" class="bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition duration-200">
					        Enroll Now
					    </a>
                    </div>
                </div>
            </div>
        </div>
    

    <div class="py-10 text-center">
        <h2 class="text-3xl font-semibold">Why Choose Us?</h2>
        <p class="mt-2 text-gray-600">We offer a variety of courses tailored to your learning needs.</p>
        <div class="flex justify-center mt-8 space-x-6">
            <div class="bg-white p-6 rounded shadow-md card">
                <h3 class="text-xl font-bold">Flexible Learning</h3>
                <p class="text-gray-600">Learn at your own pace, anytime, anywhere.</p>
            </div>
            <div class="bg-white p-6 rounded shadow-md card">
                <h3 class="text-xl font-bold">Expert Instructors</h3>
                <p class="text-gray-600">Learn from industry professionals and experienced educators.</p>
            </div>
            <div class="bg-white p-6 rounded shadow-md card">
                <h3 class="text-xl font-bold">Community Support</h3>
                <p class="text-gray-600">Join a community of learners and gain support from peers.</p>
            </div>
        </div>
    </div>
    

</body>
</html> 

    <%@ include file="footer.jsp" %>








