function mostrarFechaHora() {
  const ahora = new Date();
  const fecha = ahora.toLocaleDateString('es-ES', {
    weekday: 'long',
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  });

  const hora = ahora.toLocaleTimeString('es-ES', {
    hour: '2-digit',
    minute: '2-digit',
    second: '2-digit'
  });

  document.getElementById("fechaHora").textContent = `FECHA: ${fecha}   HORA: ${hora}`;
}

setInterval(mostrarFechaHora, 1000);
