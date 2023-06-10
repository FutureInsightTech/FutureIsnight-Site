---
date: 2023-06-08T23:49:59+05:00
draft: false
type: "page"
url: /select-package/
---

<!-- Adding Css -->
<link rel="stylesheet" href="/css/Select-Package/select-package.css">

<!-- Fetching Data -->
<script defer src="/js/select-package/autodate.js"></script>
<script defer src="/js/select-package/firebase-connection.js"></script>

<div class="container">
  <div class="form-container">
        <h1 class="text-center">Assignment/Project Details Form</h1>
        <form id="assignment-form">
            <div class="form-group">
                <label for="fullname">Enter your full name:</label>
                <input type="text" id="fullname" name="fullname" class="form-control form-control-lg rounded" required>
            </div>
            <div class="form-group">
                <label for="email">Enter your email:</label>
                <input type="email" id="email" name="email" class="form-control form-control-lg rounded" required>
            </div>
            <div class="form-group">
                <label for="phone">Enter your phone number:</label>
                <input type="tel" id="phone" name="phone" class="form-control form-control-lg rounded" required>
            </div>
            <div class="form-group">
                <label for="domain">Select your Domain:</label>
                <select id="domain" name="domain" class="form-control form-control-lg rounded" required>
                    <option value="">-- Select Domain --</option>
                    <option value="Web Development">Web Development</option>
                    <option value="Mobile App Development">Mobile App Development</option>
                    <option value="Data Science">Machine Learning</option>
                    <option value="Data Science">Student Assignment</option>
                    <!-- Add more domain options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="package">Select your package:</label>
                <select id="package" name="package" class="form-control form-control-lg rounded" required>
                    <option value="">-- Select Package --</option>
                    <option value="Basic">Basic</option>
                    <option value="Standard">Advance</option>
                    <option value="Premium">Premium</option>
                    <!-- Add more package options as needed -->
                </select>
            </div>
            <div class="form-group">
                <label for="assignment-file">Upload your Assignment question or requirements:</label>
                <input type="file" id="assignment-file" name="assignment-file" class="form-control-file rounded" accept=".pdf, .doc, .docx" required>
            </div>
            <div class="form-group">
                <label for="current-date">Current Date:</label>
                <input type="date" id="current-date" name="current-date" class="form-control form-control-lg rounded" disabled required>
            </div>
            <div class="form-group">
                <label for="deadline">Deadline of the Project/Assignment:</label>
                <input type="date" id="deadline" name="deadline" class="form-control form-control-lg rounded" required>
            </div>
            <div class="form-group">
                <label for="special-instructions">Special Instructions:</label>
                <textarea id="special-instructions" name="special-instructions" class="form-control form-control-lg rounded"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <div id="result" class="container mt-4" style="display: none;">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Your project is assigned!</h2>
                    <!-- Additional result information can be displayed here -->
                </div>
            </div>
        </div>
    </div>
</div>
