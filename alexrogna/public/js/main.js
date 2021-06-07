/* Main JS */

(function(html) {

    "use strict";
    
    html.className = html.className.replace(/\bno-js\b/g, '') + ' js ';

   /* Parallax */
    const ssParallax = function() { 

        const rellax = new Rellax('.rellax');

    }; // end ssParallax


   
   /* initialize */
    (function ssInit() {

        ssParallax();

    })();

})(document.documentElement);