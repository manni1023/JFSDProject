<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Graphic Design Fundamentals - Course Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"/>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-100">
    <jsp:include page="navbar.jsp" />

    <div class="container mx-auto mt-8 p-4">
        <!-- Course Title and Banner Image -->
        <div class="bg-white rounded-lg shadow-lg p-6">
            <h1 class="text-4xl font-bold text-gray-800">Graphic Design Fundamentals</h1>
            <p class="text-gray-600 text-sm">Instructor: Prof. B. R. Gupta</p>
        </div>

        <!-- Course Details Section -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-6">
            <!-- Left Column: Course Info -->
            <div class="bg-white rounded-lg shadow-md p-6">
                <h2 class="text-2xl font-bold mb-4">Course Information</h2>
                <p><strong>Duration:</strong> 6 weeks</p>
                <p><strong>Cost:</strong> $149</p>
                <p><strong>Start Date:</strong> March 5, 2024</p>
                <p><strong>Prerequisites:</strong> Interest in design principles and basic computer skills</p>
                <p class="mt-4"><strong>Course Overview:</strong> This course introduces the foundations of graphic design, covering typography, color theory, and essential software tools like Adobe Photoshop and Illustrator.</p>
                <p class="mt-4"><strong>Skills You Will Gain:</strong></p>
                <ul class="list-disc list-inside">
                    <li>Typography and Layout Design</li>
                    <li>Color Theory and Application</li>
                    <li>Basic Adobe Photoshop Skills</li>
                    <li>Introduction to Adobe Illustrator</li>
                    <li>Creating Visual Branding</li>
                </ul>
                <a href="/enrollcourse?courseName=Graphic%20Design%20Fundamentals&courseFee=149" class="block mt-6 bg-blue-500 text-white text-center py-2 px-4 rounded hover:bg-blue-600">Enroll Now</a>
            </div>

            <!-- Right Column: Instructor Info and Reviews -->
            <div>
                <!-- Instructor Information -->
                <div class="bg-white rounded-lg shadow-md p-6 mb-6">
                    <h2 class="text-2xl font-bold mb-4">Instructor Information</h2>
                    <p class="text-gray-800">Prof. B. R. Gupta</p>
                    <p class="text-gray-600">Prof. Gupta is an experienced graphic designer and educator with over a decade of experience in branding and visual design, guiding students to build professional-grade design skills.</p>
                </div>

                <!-- Course Reviews -->
                <div class="bg-white rounded-lg shadow-md p-6">
                    <h2 class="text-2xl font-bold mb-4">Student Reviews</h2>
                    
                    <div class="divide-y divide-gray-300">
                        <c:choose>
                            <c:when test="${not empty reviews}">
                                <c:forEach items="${reviews}" var="review">
                                    <div class="py-2">
                                        <p class="text-gray-700 font-semibold">${review.studentName}</p>
                                        <p class="text-gray-600">"${review.review}"</p>
                                        <p class="text-yellow-500 text-sm">
                                            Rating:
                                            <c:forEach begin="1" end="${review.rating}">
                                                &#9733;
                                            </c:forEach>
                                            <c:forEach begin="1" end="${5 - review.rating}">
                                                &#9734;
                                            </c:forEach>
                                        </p>
                                    </div>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <p class="text-gray-500">No reviews yet. Be the first to <a href="/review?courseName=${courseName}" class="text-blue-500 hover:underline">add a review</a>.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <!-- Link to add a review -->
                    <a href="/review?courseName=${courseName}" class="mt-4 inline-block text-blue-500 hover:underline">Add a Review</a>
                </div>
            </div>
        </div>

        <!-- Instructor and Student Feedback Section -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mt-8">
            <!-- Instructor Feedback Card -->
            <div class="bg-white rounded-lg shadow-md p-6">
                <h2 class="text-xl font-bold mb-4">What the Instructor Says</h2>
                <p class="text-gray-600">"Our Graphic Design Fundamentals course is crafted to provide a hands-on experience in building compelling designs that communicate effectively."</p>
            </div>

            <!-- Student Feedback Card -->
            <div class="bg-white rounded-lg shadow-md p-6">
                <h2 class="text-xl font-bold mb-4">What Our Students Say</h2>
                <p class="text-gray-600">"The course content was clear and concise, helping me build a solid foundation in design that I applied to my own projects."</p>
            </div>
        </div>
    </div>
    
    <footer class="bg-white mt-8 py-4">
        <div class="container mx-auto text-center">
            <p class="text-gray-600">&copy; 2200031188 Javvaji Manvitha. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
