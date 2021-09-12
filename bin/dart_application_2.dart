import 'dart:io';

void main(List<String> arguments) {
  print('Введите число: ');
  var value = stdin.readLineSync()!;
  // Регулярное выражение для проверки
  RegExp(r'^[0-9]+$').hasMatch(value) ? print(value) : print('Это не число');
}
