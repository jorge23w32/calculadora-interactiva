package calculadora.interactiva

import grails.transaction.Transactional


@Transactional
class CalculadoraService {

    def suma(double num1, double num2){
        return num1 + num2
    }

    def resta(double num1, double num2){
        return num1 - num2
    }

    def multiplicacion( double num1, double num2){
        return num1 * num2
    }

    def division(double num1, double num2){
        if(!num2){
            throw new ArithmeticException("No se puede dividir entre 0.")
        }
        return num1 / num2
    }
}
