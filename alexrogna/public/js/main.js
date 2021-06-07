/* Main JS */

(function(html) {

    "use strict";
    
    html.className = html.className.replace(/\bno-js\b/g, '') + ' js ';

   /* Parallax */
    const ssParallax = function() { 

        const rellax = new Rellax('.rellax');

    }; // end ssParallax


   /* Move header menu */
    const ssMoveHeader = function () {

        const hdr = document.querySelector('.s-header');
        const hero = document.querySelector('#hero');
        let triggerHeight;

        if (!(hdr && hero)) return;

        setTimeout(function(){
            triggerHeight = hero.offsetHeight - 170;
        }, 300);

        window.addEventListener('scroll', function () {

            let loc = window.scrollY;
        

            if (loc > triggerHeight) {
                hdr.classList.add('sticky');
            } else {
                hdr.classList.remove('sticky');
            }

            if (loc > triggerHeight + 20) {
                hdr.classList.add('offset');
            } else {
                hdr.classList.remove('offset');
            }

            if (loc > triggerHeight + 150) {
                hdr.classList.add('scrolling');
            } else {
                hdr.classList.remove('scrolling');
            }

        });

    }; // end ssMoveHeader  

   /* initialize */
    (function ssInit() {

        ssParallax();
        ssMoveHeader();

    })();

})(document.documentElement);