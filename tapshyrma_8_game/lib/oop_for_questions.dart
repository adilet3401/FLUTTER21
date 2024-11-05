class Quize {
  Quize({required this.question, required this.answer});
  final String question;
  final bool answer;
}

Quize quize1 = Quize(question: "Кыргызстанда 6 область бар", answer: false);
Quize quize2 = Quize(question: "США флагында 44 жылдыз бар", answer: true);
// Quize quize3 = Quize(question: "Кыргызстанда 6 область бар", answer: false);
// Quize quize4 = Quize(question: "Кыргызстанда 6 область бар", answer: false);

List<Quize> quizeList = [
  quize1,
  quize2,
];
