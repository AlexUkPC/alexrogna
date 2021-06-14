document.addEventListener("DOMContentLoaded", () => {
    document.addEventListener("click", (e) => {
        if (e.target) {
            const selTech = e.target.closest("[data-tech-class]")
            const techs = document.querySelectorAll(".techs");
            if (!selTech) { 
                techs.forEach(function(tech) {
                    tech.classList.remove('shadowed');  
                });
                return; }
            techs.forEach(function(tech) {
                if (tech.getAttribute("data-tech-class")!=selTech.getAttribute("data-tech-class")) {
                    tech.classList.add('shadowed');
                }
                else{
                    tech.classList.remove('shadowed');
                }
            });
            
        }
    })
})