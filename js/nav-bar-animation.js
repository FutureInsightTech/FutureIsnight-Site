// function toggleDarkMode() {
//     var body = document.body;
//    body.classList.toggle('dark-theme');
//   }
  
  // Toggle dropdown menu
var dropdownToggle = document.querySelector('.dropdown-toggle');
var dropdownMenu = document.querySelector('.dropdown-menu');

dropdownToggle.addEventListener('click', function() {
dropdownMenu.classList.toggle('show');
});

// Hide dropdown menu on click outside
window.addEventListener('click', function(event) {
if (!dropdownToggle.contains(event.target) && !dropdownMenu.contains(event.target)) {
    dropdownMenu.classList.remove('show');
}
});

// Enable option selection
var dropdownItems = document.querySelectorAll('.dropdown-item');

dropdownItems.forEach(function(item) {
item.addEventListener('click', function() {
    var selectedOption = this.querySelector('a').textContent;
    console.log('Selected option:', selectedOption);
    dropdownMenu.classList.remove('show');
});
});

// Close dropdown menu on mouseleave
dropdownToggle.addEventListener('mouseleave', function() {
setTimeout(function() {
    if (!dropdownMenu.classList.contains('show')) {
    dropdownMenu.classList.remove('show');
    }
}, 500);
});

dropdownMenu.addEventListener('mouseenter', function() {
clearTimeout(this.leaveTimeout);
});

dropdownMenu.addEventListener('mouseleave', function() {
this.leaveTimeout = setTimeout(function() {
    dropdownMenu.classList.remove('show');
}, 500);
});

        // JavaScript code
window.addEventListener('load', function() {
    var body = document.getElementById('myBody');
    var dropdownMenu = document.querySelector('.dropdown-menu');

    function toggleDarkMode() {
    if (body.classList.contains('dark-theme')) {
        // Dark mode is enabled
        dropdownMenu.style.backgroundColor = '#2d333b'; // Set dark mode background color
        dropdownMenu.style.color = '#fff'; // Set dark mode text color
    } else {
        // Dark mode is disabled
        dropdownMenu.style.backgroundColor = white; // Set light mode background color
        dropdownMenu.style.color = '#000'; // Set light mode text color
    }
    }

    // toggleDarkMode(); // Initial setup based on current mode

    // Listen for changes in dark mode
    // if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
    // body.classList.add('dark-theme'); // Dark mode is enabled
    // } else {
    // body.classList.remove('dark-theme'); // Dark mode is disabled
    // }

    // // Listen for changes in mode preference
    // window.matchMedia('(prefers-color-scheme: dark)').addListener(function(e) {
    // if (e.matches) {
    //     body.classList.add('dark-theme'); // Dark mode is enabled
    // } else {
    //     body.classList.remove('dark-theme'); // Dark mode is disabled
    // }
    // toggleDarkMode(); // Update drop-down menu colors
    // });
});