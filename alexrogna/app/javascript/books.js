document.addEventListener("turbolinks:load", function() {
    var bmodal = document.getElementById("booksModal");

    // Get the button that opens the modal
    var bbtn = document.getElementById("booksBtn");

    // Get the <span> element that closes the modal
    var bspan = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    bbtn.onclick = function() {
        bmodal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    bspan.onclick = function() {
        bmodal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == bmodal) {
        bmodal.style.display = "none";
        }
    }
})