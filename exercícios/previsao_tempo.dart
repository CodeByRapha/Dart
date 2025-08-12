import 'dart:io';

// funcao para converter celsius para fahrenheit
double celsiusParaFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}

void main() {
  //  temperatura em celsius
  stdout.write("Digite a temperatura em Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);

  // conversão usando a função
  double fahrenheit = celsiusParaFahrenheit(celsius);

  // resultado
  print("A temperatura em Fahrenheit é: ${fahrenheit.toStringAsFixed(2)}°F");
}
