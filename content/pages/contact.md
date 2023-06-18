---
draft: false
type: "page"
url: /contact/
---

<html>
<head>
  <style>
    .container {
      max-width: 750px;
      padding: 10px;
      transform: translateY(-20px); /* Adjust the position of the form */
      transition: background-color 0.3s, color 0.3s;
    }
    body.dark-mode .container {
      background-color: #333333; /* Dark mode background color */
      color: #f5f5f5; /* Dark mode text color */
    }
    .input-field {
      margin-bottom: 20px;
    }
    .input-field label {
      display: block;
      font-weight: bold;
    }
    .input-field input,
    .input-field textarea {
      width: 100%;
      padding: 10px;
      border-radius: 4px;
      border: 1px solid #dddddd;
      transition: border-color 0.3s;
      resize: vertical;
    }
    .input-field input:focus,
    .input-field textarea:focus {
      outline: none;
      border-color: #5c95e8; /* Focus color */
    }
    .submit-btn {
      display: inline-block;
      padding: 10px 20px;
      background-color: #5c95e8; /* Button background color */
      color: #ffffff; /* Button text color */
      border: none;
      border-radius: 4px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .submit-btn:hover {
      background-color: #3d7ed5; /* Button hover color */
    }
  </style>
</head>
<body>
  <div class="container">
    <h1 style="text-align: center;">Contact Us: Future Insight</h1>
    <form class="kwes-form" action="https://kwesforms.com/api/foreign/forms/ap1pWGfgsAJvJHOZ1Lx1">
      <!-- <form> -->
      <div class="input-field">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
      </div>
      <div class="input-field">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="input-field">
        <label for="message">Message</label>
        <textarea id="message" name="message" rows="5" required></textarea>
      </div>
      <button type="submit" class="submit-btn">Submit</button>
    </form>
  </div>

  <script>
    // Toggle dark mode
    function toggleDarkMode() {
      document.body.classList.toggle("dark-mode");
    }
  </script>
</body>
</html>
