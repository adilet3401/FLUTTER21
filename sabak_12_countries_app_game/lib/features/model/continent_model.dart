abstract class Model {
  final String text;
  final String image;

  Model({required this.text, required this.image});
}

class ContinentModel extends Model {
  ContinentModel({required super.text, required super.image});
}

ContinentModel object1 =
    ContinentModel(text: 'Europe', image: 'assets/europe.png');
ContinentModel object2 = ContinentModel(text: 'Asia', image: 'assets/asia.png');
ContinentModel object3 =
    ContinentModel(text: 'North America', image: 'assets/north_america.png');
ContinentModel object4 =
    ContinentModel(text: 'South America', image: 'assets/south_america.png');
ContinentModel object5 =
    ContinentModel(text: 'Africa', image: 'assets/africa.png');
ContinentModel object6 =
    ContinentModel(text: "Australia", image: 'assets/australia.png');

List<ContinentModel> continentList = [
  object1,
  object2,
  object3,
  object4,
  object5,
  object6,
];
