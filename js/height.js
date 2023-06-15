// Author: Abdul Rafay 
// Script: This script will set different heights for the price cards based on the screen size & data-height attribute


// Set the height of the price cards in Web View
window.addEventListener('DOMContentLoaded', function() {
    var priceCards = document.querySelectorAll('.price-card');
  
    priceCards.forEach(function(card) {
      var heightValue = card.getAttribute('data-height');
      card.style.height = heightValue + 'px';
    });
  });




// height Set for Multiple Screen Sizes
function setPriceCardHeights() {
    const priceCards = document.getElementsByClassName('price-card');
  
    for (let i = 0; i < priceCards.length; i++) {
      const priceCard = priceCards[i];
      const screenWidth = window.innerWidth;
      const cardHeight = priceCard.dataset.height || '300px'; // Get the height value from the data-height attribute
  
      if (screenWidth <= 480) {
        priceCard.style.height = cardHeight;
      } else if (screenWidth <= 768) {
        priceCard.style.height = cardHeight;
      } else if (screenWidth <= 1200) {
        priceCard.style.height = cardHeight;
      } else {
        priceCard.style.height = cardHeight;
      }
    }
  }
  
  // Call the function initially and on window resize
setPriceCardHeights();
window.addEventListener('resize', setPriceCardHeights);
  
