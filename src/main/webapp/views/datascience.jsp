<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Science with Python Course</title>
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
            background-image: url(https://www.unite.ai/wp-content/uploads/2022/05/Image-Processing-Python-Libraries-1000x600.png);
            background-size: cover;
            background-position: center;
            color: white;
            border-radius: 15px;
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
            <h1 class="text-5xl font-bold mb-4 text-gray-900">Data Science with Python Course</h1>
            <p class="text-lg mb-4 text-gray-800">Unlock the power of data and machine learning!</p>
            <button onclick="toggleApplyForm()" class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-6 rounded-full shadow-lg transition duration-300">Apply Now</button>
        </div>
    </div>

    <!-- Course Enrollment Deadline Timer -->
    <div class="text-center mb-8">
        <h2 class="text-2xl font-bold mb-4">Application Deadline Countdown</h2>
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
            <p class="text-gray-700 mb-4">This internship is designed to equip you with the foundational skills in Data Science using Python. You will learn data analysis, visualization, and machine learning techniques through hands-on projects.</p>
            <p class="text-gray-700">Ideal for anyone looking to start a career in data science or enhance their data analytics skills.</p>
        </div>

        <!-- Course Responsibilities -->
        <div class="card bg-white shadow-lg rounded-lg p-6">
            <h2 class="section-header text-3xl font-semibold text-blue-600 mb-4"><i class="fas fa-tasks mr-2"></i>Course Responsibilities</h2>
            <ul class="list-disc list-inside text-gray-700 space-y-2">
                <li>Complete assignments and projects using Python libraries like Pandas and NumPy.</li>
                <li>Participate in group discussions and code reviews.</li>
                <li>Apply machine learning algorithms to real-world datasets.</li>
                <li>Develop data visualization skills using Matplotlib and Seaborn.</li>
            </ul>
        </div>

        <!-- Course Requirements -->
        <div class="card bg-white shadow-lg rounded-lg p-6 md:col-span-2">
            <h2 class="section-header text-3xl font-semibold text-blue-600 mb-4"><i class="fas fa-check-circle mr-2"></i>Requirements</h2>
            <ul class="list-disc list-inside text-gray-700 space-y-2">
                <li>Basic understanding of programming concepts.</li>
                <li>Familiarity with Python is a plus, but not required.</li>
                <li>A passion for data and willingness to learn.</li>
                <li>Access to a computer with internet for course materials.</li>
            </ul>
        </div>

        <!-- Enrollment Section -->
        <div class="md:col-span-2 text-center mt-8">
            <button onclick="toggleApplyForm()" class="bg-blue-600 hover:bg-blue-700 text-white font-semibold py-3 px-6 rounded-full shadow-lg transition duration-300">Apply Now</button>
        </div>
    </div>

    <!-- Frequently Asked Questions Section -->
    <div class="faq-box mt-12 p-6">
        <div class="card bg-white shadow-lg rounded-lg p-6">
            <h2 class="text-3xl font-semibold text-blue-600 mb-4">Frequently Asked Questions</h2>
            <div class="space-y-4">
                <h3 class="font-semibold">1. What topics will be covered in this course?</h3>
                <p class="text-gray-700">The course covers data analysis, visualization, machine learning, and data preprocessing using Python.</p>
                <h3 class="font-semibold">2. Is there a certificate provided upon completion?</h3>
                <p class="text-gray-700">Yes, a certificate of completion will be awarded after finishing the course.</p>
                <h3 class="font-semibold">3. Do I need any prior experience to join?</h3>
                <p class="text-gray-700">No prior experience is required, but a basic understanding of programming concepts will be helpful.</p>
                <h3 class="font-semibold">4. How long is the course?</h3>
                <p class="text-gray-700">The course lasts for 8 weeks, with flexible scheduling options available.</p>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>
