        function move() {
          var elem = document.getElementById("balk");
          var totalDuration = 20; //  totale duur in seconden
          var intervalTime = 5; //interval tijd in milliseconden
          var totalSteps = (totalDuration * 1000) / intervalTime;
          var width = 100; 
          var decrement = 100 / totalSteps; // width totale afname
          var timeRemaining = totalDuration; // resterende tijd
          var id = setInterval(frame, intervalTime);
          function frame() {
            if (width <= 0) {
              clearInterval(id);
              elem.style.width = "0%";
              elem.innerHTML = "";
            } else {
              width -= decrement;
              timeRemaining -= intervalTime / 1000;
              elem.style.width = width + "%";
              elem.innerHTML = Math.ceil(timeRemaining) + " sec";
            }
          }
        }