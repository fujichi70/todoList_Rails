"use strict";

{
    window.addEventListener("DOMContentLoaded", () => {
        if (document.getElementById("dateTime") !== null) {
            function setFigure(num) {
                let ret;
                if (num < 10) {
                    return (ret = `0${num}`);
                } else {
                    return (ret = num);
                }
            }

            let clock = function () {
                let nowTime = new Date();
                let nowHour = setFigure(nowTime.getHours());
                let nowMin = setFigure(nowTime.getMinutes());
                let nowSec = setFigure(nowTime.getSeconds());
                let msg = `${nowHour}:${nowMin}:${nowSec}`;
                document.getElementById("dateTime").innerHTML = msg;
            };

            setInterval(clock, 1000);
        }
    });
}
