<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enroll in ${courseName}</title>
    <link rel="stylesheet" href="https://cdn.tailwindcss.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-100">
    <jsp:include page="navbar.jsp" />

    <div class="container mx-auto p-8">
        <h1 class="text-4xl font-bold mb-6 text-center">Enroll in ${courseName}</h1>

        <!-- Course Summary Section -->
        <div class="bg-white shadow-md rounded-lg p-6 mb-6">
            <h2 class="text-3xl font-semibold mb-2">Course Details</h2>
            <p class="text-gray-700">Course Fee: <span class="font-bold text-lg">${courseFee}</span></p>
            <p class="text-gray-600"><strong>Duration:</strong> ${duration}</p>
            <p class="text-gray-600"><strong>Prerequisites:</strong> ${prerequisites}</p>
        </div>

        <!-- Enrollment Form -->
        <form action="/processEnrollment" method="post" class="bg-white shadow-md rounded-lg p-6 mb-6">
            <h2 class="text-xl font-bold mb-4">Personal Information</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mb-4">
                <div>
                    <label for="studentName" class="block text-gray-700">Your Name</label>
                    <input type="text" id="studentName" name="studentName" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md focus:border-blue-500 focus:ring focus:ring-blue-200" placeholder="Enter your name">
                </div>
                <div>
                    <label for="email" class="block text-gray-700">Your Email</label>
                    <input type="email" id="email" name="email" required class="mt-1 block w-full p-2 border border-gray-300 rounded-md focus:border-blue-500 focus:ring focus:ring-blue-200" placeholder="Enter your email">
                </div>
                <div>
                    <label for="phone" class="block text-gray-700">Your Phone Number</label>
                    <input type="tel" id="phone" name="phone" class="mt-1 block w-full p-2 border border-gray-300 rounded-md focus:border-blue-500 focus:ring focus:ring-blue-200" placeholder="Enter your phone number (optional)">
                </div>
                <div>
                    <label for="paymentMethod" class="block text-gray-700">Payment Method</label>
                    <select id="paymentMethod" name="paymentMethod" class="mt-1 block w-full p-2 border border-gray-300 rounded-md focus:border-blue-500 focus:ring focus:ring-blue-200">
                        <option value="Credit Card">Credit Card</option>
                        <option value="PayPal">PayPal</option>
                    </select>
                </div>
            </div>

            <div class="mb-4">
                <label for="comments" class="block text-gray-700">Comments/Questions</label>
                <textarea id="comments" name="comments" rows="4" class="mt-1 block w-full p-2 border border-gray-300 rounded-md focus:border-blue-500 focus:ring focus:ring-blue-200" placeholder="Any additional comments or questions?"></textarea>
            </div>

            <div class="flex items-center mb-4">
                <input type="checkbox" id="terms" name="terms" required class="mr-2">
                <label for="terms" class="text-gray-700">I agree to the <a href="#" class="text-blue-600 underline">Terms and Conditions</a>.</label>
            </div>

            <button type="submit" class="w-full bg-blue-600 text-white font-bold py-2 px-4 rounded hover:bg-blue-700 transition duration-200 mb-6">
                Enroll Now
            </button>
        </form>

        <!-- Instructor Details Card -->
        <div class="bg-white shadow-md rounded-lg p-6 mb-6">
            <h2 class="text-2xl font-semibold mb-4">Meet Your Instructor</h2>
            <div>
                <h3 class="text-xl font-bold">Dr. Jane Doe</h3>
                <p class="text-gray-600">Expert in Data Science with 10+ years of industry experience.</p>
                <p class="text-gray-500 mt-4">Dr. Jane has taught data science courses at various prestigious institutions and has authored several papers in the field.</p>
            </div>
        </div>

        <!-- Testimonials Card -->
        <div class="bg-white shadow-md rounded-lg p-6">
            <h2 class="text-2xl font-semibold mb-4">What Our Students Say</h2>
            <blockquote class="border-l-4 border-blue-500 pl-4 italic mb-4">
                "This course transformed my career! The hands-on projects were invaluable."
                <footer class="mt-2 text-gray-600">- Alex Smith</footer>
            </blockquote>
            <blockquote class="border-l-4 border-blue-500 pl-4 italic mb-4">
                "The instructor was fantastic! I gained practical skills that I use every day."
                <footer class="mt-2 text-gray-600">- Sarah Lee</footer>
            </blockquote>
            <blockquote class="border-l-4 border-blue-500 pl-4 italic mb-4">
                "Highly recommend this course to anyone looking to break into data science."
                <footer class="mt-2 text-gray-600">- Michael Johnson</footer>
            </blockquote>
        </div>
    </div>

    <jsp:include page="footer.jsp" />
</body>
</html>
