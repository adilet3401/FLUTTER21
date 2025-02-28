import 'dart:math';

void main() {
  Set<int> uniqueNumbers = {};
  Random random = Random();

  while (uniqueNumbers.length < 500) {
    int firstTwoDigits = random.nextInt(80) + 10; // Генерируем от 10 до 89
    int lastThreeDigits = random.nextInt(1000); // Генерируем от 000 до 999
    int number = firstTwoDigits * 1000 + lastThreeDigits;

    // Если таких первых двух цифр ещё не было, добавляем
    uniqueNumbers.add(number);
  }

  // Выводим результат
  for (var num in uniqueNumbers) {
    print(num);
  }
}

























// import 'dart:math';

// void main() {
//   var random = Random();

//   int randomNumber = random.nextInt(2) + 1;
//   print('result: $randomNumber');

//   List<String> items = [
//     "adilet",
//     "muhamed",
//     "yntymak",
//   ];
//   String randomItem = items[random.nextInt(items.length)];
//   // print('result: $randomItem');

//   var nam = 10;
//   // print('$name');

//   bool tashmat = true;
//   // print('$tashmat');
// //-------------------------------------------------------------
//   int age = 30;
//   double temperature = 36.6;
//   bool isRaining = false;
//   var name = 'John';

//   // print('Имя: $name'); // Имя: John
//   // print('Возраст: $age лет'); // Возраст: 30 лет
//   // print('Температура тела: $temperature °C'); // Температура тела: 36.6 °C
//   // print('Дождь идет: $isRaining');

//   final currentTime = DateTime.now();
//   // print('$currentTime');
//   bool rain = false;

// //   if (rain) {
// //     // print("'i'll take in umbrella");
// //   } else
// //     // (print('i wont take an umbrella'));
// // }
// }
