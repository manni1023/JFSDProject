<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UI/UX Design Course</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f8fafc, #e2e8f0);
        }
        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }
        .bg-course {
            background-image: url(https://design4users.com/wp-content/uploads/2020/01/creative_ux_illustration_tubik.png);
            background-size: cover;
            background-position: center;
            color: white;
            border-radius: 15px;
        }
        .section-header {
            background: rgba(255, 255, 255, 0.8);
            padding: 1rem;
            border-radius: 10px;
        }
        .faq-box {
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 2rem;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }
        /* Overlay styling */
        .apply-form-overlay {
            display: none; /* Hidden by default */
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.7);
            justify-content: center;
            align-items: center;
            z-index: 10;
        }
        .form-container {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            max-width: 500px;
            width: 90%;
        }
        
    </style>
</head>
<body class="font-sans">
    <jsp:include page="navbar.jsp" />

    <!-- Course Header -->
    <div class="bg-course p-12 text-center mb-8 shadow-lg">
        <div class="bg-white bg-opacity-70 p-6 rounded-lg">
            <h1 class="text-5xl font-bold mb-4 text-gray-900">UI/UX Design Course</h1>
            <p class="text-lg mb-4 text-gray-800">Design user-centered products and experiences that captivate and engage!</p>
            <button onclick="toggleApplyForm()" class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-6 rounded-full shadow-lg transition duration-300">Apply Now</button>
        </div>
    </div>

    <!-- Course Enrollment Deadline Timer -->
    <div class="text-center mb-8">
        <h2 class="text-2xl font-bold mb-4">Enrollment Deadline Countdown</h2>
        <div id="timer" class="text-3xl font-semibold text-blue-600"></div>
    </div>

 <!-- Application Form Overlay -->
    <div class="apply-form-overlay" id="applyFormOverlay">
        <div class="form-container">
            <div class="text-center">
                <h2 class="text-3xl font-extrabold text-gray-800">Apply Now</h2>
                <p class="text-gray-500 mt-2">Start your journey as a Full Stack Developer with us!</p>
            </div>
            <form action="/submitApplication" method="POST" class="space-y-4" enctype="multipart/form-data">
                <div>
                    <label for="name" class="block text-sm font-semibold text-gray-700">Full Name</label>
                    <input type="text" id="name" name="name" required class="mt-1 p-3 w-full border border-gray-300 rounded-md focus:ring-blue-500 focus:border-blue-500">
                </div>
                
                <div>
                    <label for="email" class="block text-sm font-semibold text-gray-700">Email</label>
                    <input type="email" id="email" name="email" required class="mt-1 p-3 w-full border border-gray-300 rounded-md focus:ring-blue-500 focus:border-blue-500">
                </div>

                <div>
                    <label for="resume" class="block text-sm font-semibold text-gray-700">Upload Resume</label>
                    <input type="file" id="resume" name="resume" class="mt-1 block w-full text-gray-700 border border-gray-300 rounded-md focus:ring-blue-500 focus:border-blue-500">
                </div>

                <div>
                    <label for="coverLetter" class="block text-sm font-semibold text-gray-700">Cover Letter</label>
                    <textarea id="coverLetter" name="coverLetter" rows="4" required class="mt-1 p-3 w-full border border-gray-300 rounded-md focus:ring-blue-500 focus:border-blue-500" placeholder="Tell us why you want to join..."></textarea>
                </div>

                <button type="submit" class="w-full bg-gradient-to-r from-blue-500 to-blue-700 hover:from-blue-600 hover:to-blue-800 text-white font-bold py-3 rounded-md shadow-lg transform transition hover:-translate-y-1 hover:shadow-2xl mt-4">
                    Submit Application
                </button>
                <button type="button" onclick="toggleApplyForm()" class="mt-4 text-red-600">Cancel</button>
            </form>
        </div>
    </div>

    <!-- JavaScript to handle form visibility -->
    <script>
        function toggleApplyForm() {
            const overlay = document.getElementById("applyFormOverlay");
            if (overlay.style.display === "flex") {
                overlay.style.display = "none"; // Hide the overlay
            } else {
                overlay.style.display = "flex"; // Show the overlay
            }
        }
    </script>
    

    <!-- Course Details Section -->
    <div class="grid md:grid-cols-2 gap-8">
        <!-- About the Course -->
        <div class="card bg-white shadow-lg rounded-lg p-6">
            <h2 class="section-header text-3xl font-semibold text-blue-600 mb-4"><i class="fas fa-info-circle mr-2"></i>About the Course</h2>
            <p class="text-gray-700 mb-4">This course teaches you the fundamentals of UI/UX design, including user research, wireframing, prototyping, and usability testing. You'll learn how to create intuitive and visually appealing interfaces.</p>
            <p class="text-gray-700">Ideal for aspiring designers who want to create meaningful user experiences and enhance their design skills.</p>
        </div>

        <!-- Course Responsibilities -->
        <div class="card bg-white shadow-lg rounded-lg p-6">
            <h2 class="section-header text-3xl font-semibold text-blue-600 mb-4"><i class="fas fa-tasks mr-2"></i>Course Responsibilities</h2>
            <ul class="list-disc list-inside text-gray-700 space-y-2">
                <li>Conduct user research and gather user feedback.</li>
                <li>Create wireframes and prototypes using design tools.</li>
                <li>Design intuitive user interfaces for websites and applications.</li>
                <li>Perform usability testing and iterate based on findings.</li>
            </ul>
        </div>

        <!-- Course Requirements -->
        <div class="card bg-white shadow-lg rounded-lg p-6 md:col-span-2">
            <h2 class="section-header text-3xl font-semibold text-blue-600 mb-4"><i class="fas fa-check-circle mr-2"></i>Requirements</h2>
            <ul class="list-disc list-inside text-gray-700 space-y-2">
                <li>A passion for design and a desire to improve user experiences.</li>
                <li>No prior experience in UI/UX is necessary, but familiarity with design concepts is beneficial.</li>
                <li>Access to a computer with design software (Adobe XD, Sketch, or Figma) is recommended.</li>
            </ul>
        </div>

        <!-- Enrollment Section -->
        <div class="md:col-span-2 text-center mt-8">
            <button onclick="toggleApplyForm()" class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-6 rounded-full shadow-lg transition duration-300">Apply Now</button>
        </div>
    </div>

    <!-- Frequently Asked Questions Section -->
    <div class="faq-box mt-12 p-6">
        <h2 class="text-3xl font-semibold text-blue-600 mb-4">Frequently Asked Questions</h2>
        <div class="space-y-4">
            <h3 class="font-semibold">1. What skills will I learn in this course?</h3>
            <p class="text-gray-700">You will learn skills in user research, wireframing, prototyping, and user testing.</p>
            <h3 class="font-semibold">2. Is there a project included in this course?</h3>
            <p class="text-gray-700">Yes, you will work on a capstone project that applies what you have learned throughout the course.</p>
            <h3 class="font-semibold">3. Can I take this course without any prior design knowledge?</h3>
            <p class="text-gray-700">Absolutely! This course is designed for beginners.</p>
            <h3 class="font-semibold">4. What software will I need to complete the course?</h3>
            <p class="text-gray-700">You'll need access to design software such as Adobe XD, Sketch, or Figma.</p>
        </div>
    </div>

    <footer class="bg-white mt-12 py-6 shadow-lg">
        <div class="container mx-auto text-center">
            <p class="text-gray-600">&copy; 2200031188 Javvaji Manvitha. All rights reserved.</p>
        </div>
    </footer>

    <!-- FontAwesome Icons (for icons) -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    <!-- Countdown Timer Script -->
    <script>
        // Set the enrollment deadline date (change to your actual deadline)
        const deadline = new Date("2024-12-20T23:59:59").getTime();

        const x = setInterval(function() {
            const now = new Date().getTime();
            const distance = deadline - now;

            // Time calculations for days, hours, minutes, and seconds
            const days = Math.floor(distance / (1000 * 60 * 60 * 24));
            const hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((distance % (1000 * 60)) / 1000);

            // Display the result in the timer element
            document.getElementById("timer").innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s ";

            // If the countdown is over, write some text
            if (distance < 0) {
                clearInterval(x);
                document.getElementById("timer").innerHTML = "EXPIRED";
            }
        }, 1000);
    </script>
</body>
</html>