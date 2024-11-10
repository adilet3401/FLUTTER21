class Quize {
  Quize({required this.question, required this.answer});
  final String question;
  final bool answer;
}

Quize quize1 = Quize(question: "Кыргызстанда 6 область бар", answer: false);
Quize quize2 = Quize(question: "США флагында 50 жылдыз бар", answer: true);
Quize quize3 = Quize(question: 'Куранда 114 сүрө бар', answer: true);
Quize quize4 =
    Quize(question: 'Кыргызстандын президенти С.Жапаров', answer: true);
Quize quize5 = Quize(question: 'Арабский алфавитте 28 тамга бар', answer: true);
// Quize quize6 = Quize(question: 'Арабский алфавитте 28 тамга бар', answer: true);

List<Quize> quizeList = [
  quize1,
  quize2,
  quize3,
  quize4,
  quize5,
  // quize6,
];
