function toggleDarkMode() {
    const body = document.body;
    const container = document.querySelector('.container');
    const circle = document.querySelector('.circle');
    body.classList.toggle('dark-mode');
    container.classList.toggle('dark-mode');
    circle.classList.toggle('dark-mode');
}
const prefersDarkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;
if (prefersDarkMode) {
    toggleDarkMode();
}