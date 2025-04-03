// Función para enviar y luego limpiar el formulario
function enviarYLimpiarFormulario(event) {
    event.preventDefault(); // Evitar el comportamiento predeterminado del formulario

    const form = document.getElementById("cotizacionForm");

    // Enviar el formulario manualmente
    fetch(form.action, {
        method: form.method,
        body: new FormData(form),
    })
        .then(response => {
            if (response.ok) {
                // Limpiar los campos del formulario después de enviarlo
                form.reset();

                // Mostrar un mensaje de confirmación
                alert("¡Gracias por tu solicitud! Los campos han sido limpiados.");
            } else {
                alert("Hubo un problema al enviar el formulario. Inténtalo nuevamente.");
            }
        })
        .catch(error => {
            console.error("Error al enviar el formulario:", error);
            alert("Hubo un error al enviar el formulario. Inténtalo más tarde.");
        });
}
//Calificacion Nueva
function inicializarEstrellas() {
    $(document).ready(function () {
        const stars = $('.star');
        const ratingValue = $('#rating-value');
        const selectedRatingInput = $('#selected-rating');

        // Manejar el clic en las estrellas
        stars.on('click', function () {
            const value = parseInt($(this).data('value'));
            selectedRatingInput.val(value); // Actualiza el valor del campo oculto

            // Pinta las estrellas hasta la seleccionada
            stars.each(function (index) {
                if (index < value) {
                    $(this).removeClass('fa-regular').addClass('fa-solid').css('color', 'gold');
                } else {
                    $(this).removeClass('fa-solid').addClass('fa-regular').css('color', 'gray');
                }
            });

            ratingValue.text('Has calificado con ' + value + ' estrella(s)');
        });

        // Resalta las estrellas al pasar el ratón (opcional)
        stars.on('mouseover', function () {
            const value = parseInt($(this).data('value'));
            stars.each(function (index) {
                if (index < value) {
                    $(this).removeClass('fa-regular').addClass('fa-solid').css('color', 'lightgray');
                } else {
                    $(this).removeClass('fa-solid').addClass('fa-regular').css('color', 'gray');
                }
            });
        }).on('mouseout', function () {
            // Al quitar el ratón, vuelve a pintar según la selección (si hay alguna)
            const selectedValue = parseInt(selectedRatingInput.val());
            if (selectedValue > 0) {
                stars.each(function (index) {
                    if (index < selectedValue) {
                        $(this).removeClass('fa-regular').addClass('fa-solid').css('color', 'gold');
                    } else {
                        $(this).removeClass('fa-solid').addClass('fa-regular').css('color', 'gray');
                    }
                });
            } else {
                // Si no se ha seleccionado nada, todas vuelven a gris
                stars.removeClass('fa-solid').addClass('fa-regular').css('color', 'gray');
            }
        });
    });
}


document.addEventListener("DOMContentLoaded", function () {
    inicializarEstrellas(); // Inicializa la funcionalidad de las estrellas
    console.log("Inicializando estrellas...");
    console.log("Estrellas encontradas:", $('.star').length);
});
