// Author: Abdul Rafay
// Script: This script will set the current date in the date field
// this data will be placed in the select package page

// Code 👇
document.addEventListener("DOMContentLoaded", function() {
    var currentDateField = document.getElementById("current-date");
    var currentDate = new Date().toISOString().split("T")[0];
    currentDateField.value = currentDate;
  });