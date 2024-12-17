package calculadora.interactiva
import groovy.json.JsonOutput

class CalculadoraController {
    def calculadoraService
    def index() {
        render(view: "index")
    }

    def calcular() {
        try {
            def num1 = params.num1?.toDouble()
            def num2 = params.num2?.toDouble()
            def operador = params.operador?.trim()  // Eliminar espacios en blanco
            if (!num1 || !num2 || !operador) {
                throw new Exception("Faltan parámetros: num1=${params.num1}, num2=${params.num2}, operador=${params.operador}")
            }
            def resultado
            switch (operador) {
                case "+":
                    resultado = calculadoraService.suma(num1, num2)
                    break
                case "-":
                    resultado = calculadoraService.resta(num1, num2)
                    break
                case "*":
                    resultado = calculadoraService.multiplicacion(num1, num2)
                    break
                case "/":
                    resultado = calculadoraService.division(num1, num2)
                    break
                default:
                    throw new Exception("Operador no valido" + operador)
            }

            render(contentType: "application/json", text: JsonOutput.toJson([result: resultado]))
        } catch (Exception e) {
            render(status: 400, contentType: "application/json", text: JsonOutput.toJson([error: e.message]))
        }
    }

}
