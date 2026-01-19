/*=============== SHOW MENU ===============*/
const navMenu = document.getElementById('nav-menu');
const navToggle = document.getElementById('nav-toggle');
const navClose = document.getElementById('nav-close');

/* Show menu */
if (navToggle) {
  navToggle.addEventListener('click', () => {
    navMenu.classList.add('show-menu');
  });
}

/* Hide menu */
if (navClose) {
  navClose.addEventListener('click', () => {
    navMenu.classList.remove('show-menu');
  });
}

/*=============== REMOVE MENU MOBILE ===============*/
const navLinks = document.querySelectorAll('.nav__link');

const linkAction = () => {
  navMenu.classList.remove('show-menu');
};

navLinks.forEach(link => link.addEventListener('click', linkAction));

/*=============== ADD BLUR HEADER ===============*/
const blurHeader = () => {
  const header = document.getElementById('header');

  if (window.scrollY >= 50) {
    header.classList.add('blur-header');
  } else {
    header.classList.remove('blur-header');
  }
};

window.addEventListener('scroll', blurHeader);

/*=============== SHOW SCROLL UP ===============*/
/* Add when scroll-up button exists */

/*=============== SCROLL SECTIONS ACTIVE LINK ===============*/
/* Can be added later */

/*=============== SCROLL REVEAL ANIMATION ===============*/
/* Add ScrollReveal library if needed */
