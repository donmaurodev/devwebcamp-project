(function() {

  const ctx = document.getElementById('myCateg');

  new Chart(ctx, {
    type: 'pie',
    data:{
    labels: [
      'Red-Workshop',
      'Blue-Conferencias'
    ],
    datasets: [{
      label: 'Categorias mas inscritas',
      data: [10, 20],
      backgroundColor: [
        'rgb(255, 99, 132)',
        'rgb(54, 162, 235)',
      ],
      hoverOffset: 4
    }]
  }
  });

})();