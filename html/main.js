// API aanroepen
fetch('http://localhost:3000/api/messages')
  .then(response => response.json())
  .then(data => {
    const scheduleContainer = document.getElementById('schedule');
    const descriptionDiv = document.getElementById('description');
    let currentIndex = 0;

    scheduleContainer.innerHTML = '';

    // dynamische items in de sidebar
    data.forEach((msg, index) => {
      const item = document.createElement('div');
      item.className = 'schedule-item';
      item.dataset.index = index;
    
      // datum formatteren
      const formattedDate = formatDate(msg.date);
    
      item.innerHTML = `
        <div class="timeline-circle"></div>
        <span>${msg.title}</span>
        <li>${formattedDate}</li>
      `;
      scheduleContainer.appendChild(item);
    });

    // highlight eerste bericht
    highlightMessage(data, currentIndex);

    // datum formatteren
    function formatDate(dateString) {
      const date = new Date(dateString);
      const options = { month: 'long', day: 'numeric' };
      return date.toLocaleDateString('nl-NL', options);
    }
    
    function highlightMessage(messages, index) {
      const scheduleItems = document.querySelectorAll('.schedule-item');
      const circles = document.querySelectorAll('.timeline-circle');
    
      // inactieve items
      scheduleItems.forEach(item => item.classList.remove('active'));
      circles.forEach(circle => circle.classList.remove('active-circle'));
    
      // highlight huidige bericht in sidebar
      scheduleItems[index].classList.add('active');
      circles[index].classList.add('active-circle');
    
      // update beschrijving dynamisch
      const message = messages[index];
    
      // detail error
      const formattedDate = message.date ? formatDate(message.date) : "N/A";
      const location = message.location || "N/A";
      const event = message.event || "N/A";
    
      descriptionDiv.innerHTML = `
        <div class="detail-container">
        <img src="${message.imageUrl}" alt="${message.imageAlt}" class="main-image">
        <div class="info-overlay">
          <p class="date"><img src="icons/date.png" alt="Date Icon">${formattedDate}</p>
          <p class="location"><img src="icons/location.png" alt="Location Icon">${location}</p>
          <p class="event"><img src="icons/event.png" alt="Event Icon">${event}</p>
        </div>
        </div>
        <div class="info-section">
          <h1>${message.title}</h1>
          <p class="description">${message.description}</p>
        </div>
      `;
    }

    // 30000 is 30 seconden interval tussen berichten - 2000 testwaarde
    setInterval(() => {
      currentIndex = (currentIndex + 1) % data.length;
      highlightMessage(data, currentIndex);
    }, 2000);
  })
  .catch(error => {
    console.error('Error fetching data:', error);
  });
