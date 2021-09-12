window.onscroll = function () {
    let navbar = document.getElementById("navbar");
    if (window.scrollY > 30)
        navbar.classList.add("navbar-holder-dark");
    else
        navbar.classList.remove("navbar-holder-dark");
};