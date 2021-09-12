import 'dart:math';

void main(List<String> arguments) {
  var random = Random();
  var array = List.generate(10, (_) => random.nextInt(1000));
  print('Заполненный массив: $array \nВывод: ');
  for (var i = 0; i < 10; i++) {
    array[i] % 2 == 0 ? print('${array[i]}') : null;
  }
  array.clear();
}
