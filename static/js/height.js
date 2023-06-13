//Resize for the web
window.addEventListener('DOMContentLoaded', function() {
    var priceCards = document.querySelectorAll('.price-card');
  
    priceCards.forEach(function(card) {
      var heightValue = card.getAttribute('data-height');
      card.style.height = heightValue + 'px';
    });
  });

//   Working on the mobile view

// More Dyanmic Layout for the mobile views
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
  



// thired 

// function setPriceCardHeights() {
//     const priceCards = document.getElementsByClassName('price-card');
//     const cardHeight = priceCards[0].dataset.height || '400px';
  
//     for (let i = 0; i < priceCards.length; i++) {
//       const priceCard = priceCards[i];
//       priceCard.style.height = cardHeight;
//     }
//   }
  
//   function loadPriceCardScript() {
//     const screenWidth = window.innerWidth;
  
//     if (screenWidth <= 480 || (screenWidth > 768 && screenWidth <= 1200)) {
//       setPriceCardHeights();
//     }
//   }
  
//   document.addEventListener('DOMContentLoaded', loadPriceCardScript);
//   window.addEventListener('resize', loadPriceCardScript);
  











// Second V


// function setPriceCardHeights() {
//     const priceCards = document.getElementsByClassName('price-card');
//     const screenWidth = window.innerWidth;
  
//     // Set height for the first price card explicitly
//     const firstPriceCard = priceCards[0];
//     const firstCardHeight = firstPriceCard.dataset.height  ;
//     firstPriceCard.style.height = firstCardHeight;
  
//     // Set height for the remaining price cards
//     for (let i = 1; i < priceCards.length; i++) {
//       const priceCard = priceCards[i];
//       const cardHeight = priceCard.dataset.height ;
//       priceCard.style.height = cardHeight;
//     }
//   }
  
//   function loadPriceCardScript() {
//     const screenWidth = window.innerWidth;
  
//     if (screenWidth <= 480 || screenWidth > 768) {
//       setPriceCardHeights();
//     }
//   }
  
//   document.addEventListener('DOMContentLoaded', loadPriceCardScript);
//   window.addEventListener('resize', loadPriceCardScript);
  









// function setPriceCardHeights() {
//     const priceCards = document.getElementsByClassName('price-card');
//     const screenWidth = window.innerWidth;
  
//     for (let i = 0; i < priceCards.length; i++) {
//       const priceCard = priceCards[i];
//       const cardHeight = priceCard.dataset.height ;
  
//       priceCard.style.height = cardHeight;
//     }
//   }
  
//   function loadPriceCardScript() {
//     const screenWidth = window.innerWidth;
  
//     if (screenWidth <= 480 || screenWidth > 768 || screenWidth < 1200) {
//       setPriceCardHeights();
//     }
//   }
  
//   document.addEventListener('DOMContentLoaded', loadPriceCardScript);
//   window.addEventListener('resize', loadPriceCardScript);
  