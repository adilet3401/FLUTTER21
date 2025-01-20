import 'package:flutter/material.dart';
import 'package:sabak_12_countries_app_game/features/app_text.dart';
import 'package:sabak_12_countries_app_game/features/model.dart';
import 'package:sabak_12_countries_app_game/widgets/appbar_line.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myAppBar(),
      body: Column(
        children: [
          const Line(),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  final continent = continentList[index];
                  return CardWidget(continent.text);
                })),
          )
        ],
      ),
    );
  }
}

//kjhjlkjhghjkjhgfdfghjkkjhgfdsasdfghjklkjhgfdsasdfghjkllkjhgfdsasdfghjkl;[';/.,['/;]]

class CardWidget extends StatelessWidget {
  const CardWidget(
    this.text, {
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: appText.title(text),
    );
  }
}
