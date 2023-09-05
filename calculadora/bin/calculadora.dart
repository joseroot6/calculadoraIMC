import 'dart:io';
import 'package:calculadora/calculadora.dart';
void main() {
  try{
    stdout.write('Informe o seu nome');
    var nome = stdin.readLineSync()!;
    stdout.write('Informe o seu peso');
    var peso = double.parse(stdin.readLineSync()!);
    stdout.write('Informe a sua altura');
    var altura = double.parse(stdin.readLineSync()!);
    var pessoa = Pessoa(nome, peso, altura);
    var imc = pessoa.calcularIMC();
    print('O seu imc ${pessoa.nome} é $imc');
    interpretarIMC(imc);
  }catch (e) {
    print('Erro:$e');
  }
}
void interpretarIMC(double imc) {
  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc < 24.9) {
    print('Peso normal');
  } else if (imc >= 25 && imc < 29.9) {
    print('Sobrepeso');
  } else if (imc >= 30 && imc < 34.9) {
    print('Obesidade grau 1');
  } else if (imc >= 35 && imc < 39.9) {
    print('Obesidade grau 2');
  } else {
    print('Obesidade grau 3');
  }
}