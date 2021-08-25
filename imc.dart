import 'dart:io'; /* indicando a biblioteca do dart */

main() {
  calculoImc(); /*chama a própria função*/
}

// Programa que calcula o IMC
calculoImc() {
  print("=== Digite seu peso ===");
  String? textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso!);

  print("=== Digite sua altura ===");
  String? textAltura = stdin
      .readLineSync(); //esse código: "stdin.readLineSync()"" lê a variável inserida que é textAltura
  double altura = double.parse(
      textAltura!); /*esse código: "double.parse(textAltura!)" converte para inteiro a variável de cima, senão não consegue ler a info que é por padrão uma String -- (doble porque é numero decimal)*/
  double imc =
      calcImcExpress(peso, altura); /*a maneira real que se calcula o imc*/
  imprimirResultado(imc);
}

//Função que recebe o peso e a altura, retornando o IMC
double calcImcExpress(int peso, double altura) {
  /* Aqui é uma função de retorno. O que eu quero como retorno coloco no inicio que é double*/
  return peso / (altura * altura);
}

// Imprimi o resultado baseado no imc passado por parâmetros
imprimirResultado(double imc) {
  print("==== Resultado ====");

  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso Normal");
  } else if (imc > 25.9 && imc < 29.9) {
    print("Sobrepeso");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade grau 1");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
