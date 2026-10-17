function responder(boton) {
    var botones = document.getElementsByClassName('opcion');
    var mensaje = document.getElementById('mensaje');
    var i;

    for (i = 0; i < botones.length; i++) {
        botones[i].disabled = true;
        if (botones[i].getAttribute('data-correcta') == '1') {
            botones[i].classList.add('correcta');
        }
    }

    if (boton.getAttribute('data-correcta') == '1') {
        mensaje.textContent = '¡Correcto!';
    } else {
        boton.classList.add('incorrecta');
        mensaje.textContent = 'Incorrecto, la correcta es la verde';
    }
}
