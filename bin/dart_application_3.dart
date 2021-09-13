import 'dart:io';

void main(List<String> arguments) {
  var array = [];
  while (true) {
    print('Введите значение: ');
    var value = stdin.readLineSync()!;
    if (value == 'exit') {
      exit(0);
    } else {
      if (RegExp(r'^[0-9]+$').hasMatch(value)) {
        array.add(value);
        print('Длина массива: ${array.length}');
      } else {
        print(' Это не число \n Длина массива: ${array.length}');
      }
    }
  }
}
