if(document.querySelector('#mapa')) {

    const lat = 10.06731
    const lng = -69.35005
    const zoom = 17

    const map = L.map('mapa').setView([lat, lng], zoom);

    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    L.marker([lat, lng]).addTo(map)
        .bindPopup(`
            <h2 class="mapa__heading">DevWebCamp</h2>
            <p class="mapa__texto">Instituto Universitario Jesús Obrero (IUJO)</p>
        `)
        .openPopup();
}