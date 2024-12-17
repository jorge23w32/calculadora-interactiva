let inputActual ='';
let operadores = '';
let primerOperador = '';

function agregarNumero(numero){
    inputActual += numero;
    actualizarPantalla();
}
function agregarOperador(operadorI){
    if(inputActual !== ''){
        primerOperador = inputActual;
        operadores = operadorI;
        inputActual = '';
        actualizarPantalla();
    }
}
function limpiarPantalla(){
    inputActual = '';
    operadores = '';
    primerOperador = '';
    actualizarPantalla();
}

function actualizarPantalla(){
    document.getElementById('pantalla').value = inputActual || primerOperador || '0';
}

function calcularResultado() {
    if (primerOperador !== '' && inputActual !== '' && operadores !== '') {
        const formData = new URLSearchParams();
        formData.append('num1', primerOperador);
        formData.append('num2', inputActual);
        formData.append('operador', operadores);

        fetch(calcularURL, {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: formData.toString()
        })
            .then(response => response.json())
            .then(data => {
                if (data.error) {
                    alert('Error: ' + data.error);
                } else {
                    inputActual = data.result;
                    operadores = '';
                    primerOperador = '';
                    actualizarPantalla();
                }
            })
            .catch(error => {
                alert('Error: ' + error.message);
            });
    }
}
//Reproducir un sonido al hacer clic al boton
// let boton = document.querySelector(".column")
//
// boton.addEventListener("click", () =>{
//         let audio = document.createElement("audio");
//         audio.setAttribute("src", "./tecla-pulsacion.mp3")
//         audio.play()
//     }
// )