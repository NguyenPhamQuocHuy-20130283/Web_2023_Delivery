window.onscroll = function () {
  scrollFunction();
};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("back-to-top-button").style.display = "block";
  } else {
    document.getElementById("back-to-top-button").style.display = "none";
  }
}

document
  .getElementById("back-to-top-button")
  .addEventListener("click", function () {
    scrollToTop(200); // You can adjust the scroll duration (in milliseconds) here
  });

function scrollToTop(duration) {
  const start = window.scrollY;
  const startTime = performance.now();

  function scrollStep(timestamp) {
    const time = timestamp - startTime;
    const percent = Math.min(time / duration, 1);
    window.scrollTo(0, start - start * percent);

    if (time < duration) {
      requestAnimationFrame(scrollStep);
    }
  }

  requestAnimationFrame(scrollStep);
}
(() => {
  "use strict";

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll(".needs-validation");

  // Loop over them and prevent submission
  Array.from(forms).forEach((form) => {
    form.addEventListener(
      "submit",
      (event) => {
        if (!form.checkValidity()) {
          event.preventDefault();
          event.stopPropagation();
        }

        form.classList.add("was-validated");
      },
      false
    );
  });
})();
