document.addEventListener("DOMContentLoaded", function() {
    var currentDateField = document.getElementById("current-date");
    var currentDate = new Date().toISOString().split("T")[0];
    currentDateField.value = currentDate;
  });