(function() {

  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: 'bar',
    data: {
      labels: ['SQL', 'Laravel', 'NodeJS', 'PHP', 'Javascript', 'Python'],
      datasets: [{
        label: 'No. Usuarios Inscritos',
        data: [8, 17, 12, 5, 20, 10],
        backgroundColor: [
          '#ea580c',
          '#84cc16',
          '#22d3ee',
          '#a855f7',
          '#F6C601',
          '#14b8a6'
        ]
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });

})();