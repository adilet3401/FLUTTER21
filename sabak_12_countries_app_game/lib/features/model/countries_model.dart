class CountriesModel {
  final String question;
  final String capitalImage;
  final List<Answer> answers;

  CountriesModel(
      {required this.question,
      required this.capitalImage,
      required this.answers});
}

class Answer {
  final String answer;
  final bool isTrue;

  Answer(this.answer, this.isTrue);
}

CountriesModel test1 = CountriesModel(
  question: 'Столица Южной Кореи',
  capitalImage: 'assets/seoul.png',
  answers: [
    Answer('Сеул', true),
    Answer('Пекин', false),
    Answer('Токио', false),
    Answer('Пхеньян', false),
  ],
);
CountriesModel test2 = CountriesModel(
  question: 'Столица Бангладеш',
  capitalImage: 'assets/d.png',
  answers: [
    Answer('Рангпур', false),
    Answer('Барисал', false),
    Answer('Читтагонг', false),
    Answer('Дакка', true),
  ],
);
CountriesModel test3 = CountriesModel(
  question: 'Столица Пакистана',
  capitalImage: 'assets/pakistan.jpg',
  answers: [
    Answer('Исламабад', true),
    Answer('Карачи', false),
    Answer('Лахор', false),
    Answer('Мултан', false),
  ],
);
CountriesModel test4 = CountriesModel(
  question: 'Столица Иордании',
  capitalImage: 'assets/iordania.jpeg',
  answers: [
    Answer('Мадаба', false),
    Answer('Амман', true),
    Answer('Керак', false),
    Answer('Ирбид', false),
  ],
);
CountriesModel test5 = CountriesModel(
  question: 'Столица Сирии',
  capitalImage: 'assets/siria.jpeg',
  answers: [
    Answer('Дамаск', true),
    Answer('Тартус', false),
    Answer('Латакия', false),
    Answer('Хомс', false),
  ],
);
CountriesModel test6 = CountriesModel(
  question: 'Столица Ирана',
  capitalImage: 'assets/iran.jpeg',
  answers: [
    Answer('Исфахан', false),
    Answer('Персеполь', false),
    Answer('Тегеран', true),
    Answer('Шираз', false),
  ],
);
CountriesModel test7 = CountriesModel(
  question: 'Столица Малайзии',
  capitalImage: 'assets/malasia.jpeg',
  answers: [
    Answer('Субанг-Джая', false),
    Answer('Шох-Алам', false),
    Answer('Куала-Лумпур', true),
    Answer('Себеранг-Пераи', false),
  ],
);
List<CountriesModel> tests = [
  test1,
  test2,
  test3,
  test4,
  test5,
  test6,
  test7,
];
