import 'package:flutter/material.dart';
import 'package:sabak_12_countries_app_game/continents_page.dart';
import 'package:sabak_12_countries_app_game/features/model/countries_model.dart';
import 'package:sabak_12_countries_app_game/widgets/end_drawer.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({super.key});

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  int nextIndex = 0;
  int correctAnswer = 0;
  int incorrectAnswer = 0;
  int lives = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      endDrawer: const EndDrawerWidget(), //DRAWER
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            const AssetImage(
              image: 'assets/bulb.png',
              size: 38,
            ),
            Row(
              children: [
                Text(
                  correctAnswer.toString(),
                  style: TextStyle(
                    color: Colors.green[600],
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 80),
            Text(
              incorrectAnswer.toString(),
              style: TextStyle(
                color: Colors.red[600],
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            )
          ],
        ),
        actions: [
          Row(
            children: List.generate(
              lives,
              (index) => const AssetImage(
                image: 'assets/heart.png',
                size: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _globalKey.currentState!.openEndDrawer(); //УШУЛ ЖЕР
            },
            child: const Icon(
              Icons.settings_outlined,
              size: 35,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Text(
            tests[nextIndex].question,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          AssetImage(
            image: tests[nextIndex].capitalImage,
            size: 300,
          ),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
              crossAxisSpacing: 1.5,
              mainAxisSpacing: 1.5,
              crossAxisCount: 2,
              children: List.generate(
                4,
                (int san) {
                  return CardWidget(
                    onTap: () {
                      setState(() {
                        if (tests[nextIndex].answers[san].isTrue == true) {
                          correctAnswer++;
                        } else {
                          incorrectAnswer++;
                          if (lives > 0) {
                            lives--;
                          }
                        }
                      });

                      if (nextIndex + 1 == tests.length || lives == 0) {
                        _showMyDialog(correctAnswer, incorrectAnswer);
                        nextIndex = -1;
                        correctAnswer = 0;
                        incorrectAnswer = 0;
                        lives = 3;
                      }
                      setState(() {
                        nextIndex++;
                      });
                    },
                    tests[nextIndex].answers[san].answer,
                    buttonColor: Colors.grey,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _showMyDialog(int correctAnswer, int inCorrectAnwer) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Итоги',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      'Правильные ответы:   ' + correctAnswer.toString(),
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Неправильные ответы:   ' + inCorrectAnwer.toString(),
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Начать заново',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class AssetImage extends StatelessWidget {
  const AssetImage({
    super.key,
    required this.image,
    required this.size,
  });
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size,
    );
  }
}
