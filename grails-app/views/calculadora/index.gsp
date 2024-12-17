<%--
  Created by IntelliJ IDEA.
  User: jvalenciah
  Date: 17/12/24
  Time: 09:51
--%>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="${resource(dir: 'assets/stylesheets', file: 'indexCalculadora.css')}">
    <title>Calculadora</title>
</head>

<body>
    <h1 class="title">Calculadora</h1>
    <div class="content-calc">
        <input type="text" id="pantalla" class="display" disabled>
        <div class="buttons">
            <div class="row">
                <button class="column" onclick="agregarNumero(7)">7</button>
                <button class="column" onclick="agregarNumero(8)">8</button>
                <button class="column" onclick="agregarNumero(9)">9</button>
                <button class="column operador" onclick="agregarOperador('/')">/</button>
            </div>
            <div class="row">
                <button class="column" onclick="agregarNumero(4)">4</button>
                <button class="column" onclick="agregarNumero(5)">5</button>
                <button class="column" onclick="agregarNumero(6)">6</button>
                <button class="column operador" onclick="agregarOperador('*')">*</button>
            </div>
            <div class="row">
                <button class="column" onclick="agregarNumero(1)">1</button>
                <button class="column" onclick="agregarNumero(2)">2</button>
                <button class="column" onclick="agregarNumero(3)">3</button>
                <button class="column operador" onclick="agregarOperador('-')">-</button>
            </div>
            <div class="row">
                <button class="column" onclick="agregarNumero(0)">0</button>
                <button class="column limpiar" onclick="limpiarPantalla()">CE</button>
                <button class="column igual" onclick="calcularResultado()">=</button>
                <button class="column operador" onclick="agregarOperador('+')">+</button>
            </div>
        </div>
    </div>

</body>
<script>
    const calcularURL = "${createLink(controller: 'calculadora', action: 'calcular')}";
</script>
<script src="${resource(dir: 'assets/javascripts', file: 'indexCalculadora.js')}"></script>
</html>
