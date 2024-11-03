<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Course Management System</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css">
</head>
<body class="bg-gray-100">
<jsp:include page="navbar.jsp" />
    <!-- Reduced top padding for a smaller gap -->
    <div class="relative bg-cover bg-center bg-no-repeat pt-10" style="background-image: url('path-to-your-background-image.jpg'); min-height: 100vh;">
        <div class="container mx-auto p-8 flex items-center justify-center h-full">
            <div class="bg-white shadow-lg rounded-lg max-w-3xl p-8">
                <h1 class="text-4xl font-bold mb-4 text-purple-700">About Our Course Management System</h1>
                <p class="text-lg mb-4">
                    Our Course Management System (CMS) is designed to streamline the process of managing courses, students, and instructors effectively. Whether you are a student looking to enroll in courses or an instructor wanting to manage your classes, our system is here to help.
                </p>
                <h2 class="text-2xl font-semibold mb-2 text-purple-700">Key Features</h2>
                <ul class="list-disc list-inside mb-4 text-gray-700">
                    <li>Course Enrollment: Easily enroll in courses with just a few clicks.</li>
                    <li>Instructor Management: Instructors can create, modify, and delete courses.</li>
                    <li>Student Management: Admins can manage student records efficiently.</li>
                    <li>Performance Tracking: Monitor student progress and performance throughout the course.</li>
                    <li>User-Friendly Interface: Designed with a focus on ease of use and accessibility.</li>
                </ul>
                <h2 class="text-2xl font-semibold mb-2 text-purple-700">Our Mission</h2>
                <p class="mb-4 text-gray-700">
                    Our mission is to provide an efficient and user-friendly platform for educational institutions, enabling them to manage their courses and student interactions seamlessly. We believe in the power of education and aim to support learners and educators alike.
                </p>
                <h2 class="text-2xl font-semibold mb-2 text-purple-700">Get Involved</h2>
                <p class="mb-4 text-gray-700">
                    We encourage feedback and collaboration from users to help us improve our platform. If you have any suggestions or would like to know more about our system, feel free to reach out to us.
                </p>
                <div class="mt-8 text-center">
                    <a href="<%= request.getContextPath() %>/home" class="bg-purple-600 text-white px-4 py-2 rounded hover:bg-purple-500">Back to Home</a>
                </div>
                <div class="mt-8 text-center text-gray-700">
                    <p class="text-lg font-semibold mb-2">Follow Us On</p>
                    <div class="flex justify-center space-x-4">
                        <a href="https://facebook.com" class="text-blue-600 hover:text-blue-700" target="_blank"><i class="fab fa-facebook fa-2x"></i></a>
                        <a href="https://twitter.com" class="text-blue-400 hover:text-blue-500" target="_blank"><i class="fab fa-twitter fa-2x"></i></a>
                        <a href="https://instagram.com" class="text-pink-600 hover:text-pink-700" target="_blank"><i class="fab fa-instagram fa-2x"></i></a>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
     <%@ include file="footer.jsp" %>
</body>
</html>
