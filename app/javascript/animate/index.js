const AUTOCLOSE_TIMING = 5000;

const closeAlert = () => {
  var alertNode = document.querySelector(".alert");
  if (alertNode) {
    alertNode.classList.add("animate__bounceOutRight");
  }
};

document.addEventListener("close.bs.alert", (event) => {
  event.preventDefault();
  closeAlert();
});

document.addEventListener("animationend", () => {
  setTimeout(function () {
    closeAlert();
  }, AUTOCLOSE_TIMING);
});
