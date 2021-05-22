document.addEventListener("turbolinks:load", function() {
    var lmodal = document.getElementById("linkedinModal");

    // Get the button that opens the modal
    var lbtn = document.getElementById("linkedinBtn");

    // Get the <span> element that closes the modal
    var lspan = document.getElementsByClassName("close")[1];

    // When the user clicks the button, open the modal 
    lbtn.onclick = function() {
        lmodal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    lspan.onclick = function() {
        lmodal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == lmodal) {
        lmodal.style.display = "none";
        }
    }
})