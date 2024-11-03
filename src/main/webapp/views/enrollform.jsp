<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enroll Now - Course Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f7fafc;
            font-family: Arial, sans-serif;
        }
        .form-container {
            background: white;
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 2rem auto;
        }
        .btn-submit {
            background-color: #3182ce;
            color: white;
            padding: 0.75rem 1.5rem;
            border-radius: 0.5rem;
            transition: background-color 0.3s;
        }
        .btn-submit:hover {
            background-color: #2b6cb0;
        }
    </style>
</head>
<body>

    <jsp:include page="navbar.jsp" />

    <!-- Enrollment Form Section -->
    <div class="form-container">
        <h2 class="text-2xl font-semibold mb-4">Enroll Now</h2>
        <form action="processEnrollment" method="post">
            <div class="mb-4">
                <label for="fullName" class="block text-gray-700 font-bold mb-2">Full Name</label>
                <input type="text" id="fullName" name="fullName" class="w-full px-4 py-2 border rounded-lg" required>
            </div>
            <div class="mb-4">
                <label for="email" class="block text-gray-700 font-bold mb-2">Email</label>
                <input type="email" id="email" name="email" class="w-full px-4 py-2 border rounded-lg" required>
            </div>
            <div class="mb-4">
                <label for="phone" class="block text-gray-700 font-bold mb-2">Phone Number</label>
                <input type="tel" id="phone" name="phone" class="w-full px-4 py-2 border rounded-lg" required>
            </div>
            <div class="mb-4">
                <label for="course" class="block text-gray-700 font-bold mb-2">Course Selected</label>
                <select id="course" name="course" class="w-full px-4 py-2 border rounded-lg" required>
                    <option value="Introduction to Programming">Introduction to Programming</option>
                    <option value="JavaScript Essentials">JavaScript Essentials</option>
                    <option value="Python for Beginners">Python for Beginners</option>
                    <!-- Add other courses as options -->
                </select>
            </div>
            <button type="submit" class="btn-submit w-full">Submit Enrollment</button>
        </form>
    </div>

    <jsp:include page="footer.jsp" />

</body>
</html>
