// https://codepen.io/RayPan/pen/wvovGmg
// https://webcaptioner.com/blog/2018/03/using-web-captioner-with-newtek-tricaster/
// https://ithelp.ithome.com.tw/articles/10268962
// https://codepen.io/rachel-liaw/pen/wvdbrKB?editors=1100
"use strict";
(function () {
    function getBillboardWidth() {
        return document.querySelector(".billboard h1").offsetWidth;
    }
    function getWindowWidth() {
        return window.innerWidth;
    }
    function setBillboardContent() {
        document.querySelector(".billboard h1").textContent = this.value;
    }
    function startBillboard() {
        let billboard = document.querySelector(".billboard h1");
        let initLeft = getWindowWidth();
        let timer = setInterval(() => {
            if (initLeft < getBillboardWidth() * -1) {
                initLeft = getWindowWidth();
            }
            initLeft -= 1;
            billboard.style.left = initLeft + "px";
        }, 10);
    }
    function setBillboardColor() {
        document.querySelector(".billboard h1").style.color = this.value;
    }

    document
        .getElementById("txt")
        .addEventListener("input", setBillboardContent);
    document
        .getElementById("color")
        .addEventListener("input", setBillboardColor);

    startBillboard();
})();
