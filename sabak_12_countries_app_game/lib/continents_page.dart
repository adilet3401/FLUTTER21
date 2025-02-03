import 'package:flutter/material.dart';
import 'package:sabak_12_countries_app_game/countries_page.dart';
import 'package:sabak_12_countries_app_game/features/app_text.dart';
import 'package:sabak_12_countries_app_game/features/model/continent_model.dart';
import 'package:sabak_12_countries_app_game/theme/app_bgc.dart';
import 'package:sabak_12_countries_app_game/widgets/appbar_line.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
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
              children: List.generate(
                6,
                (index) {
                  final continent = continentList[index];
                  return CardWidget(
                    continent.text,
                    // Colors.white,
                    image: continent.image,
                    onTap: () {
                      if (continent.text == "Asia") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const CountriesPage();
                            },
                          ),
                        );
                      } else {
                        null;
                      }
                    },
                    // continent.text,
                    // image: continent.image,
                    // const Color(0xfff6f6f6),
                    buttonColor: Colors.white, //цвет фона континентов
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

//kjhjlkjhghjkjhgfdfghjkkjhgfdsasdfghjklkjhgfdsasdfghjkllkjhgfdsasdfghjkl;[';/.,['/;]]

class CardWidget extends StatefulWidget {
  const CardWidget(
    this.text, {
    this.image,
    super.key,
    this.onTap,
    this.onTapDown,
    this.onTapCancel,
    required this.buttonColor,
  });

  final String? text;
  final String? image;
  final VoidCallback? onTap;
  final Function(TapDownDetails)? onTapDown;
  final VoidCallback? onTapCancel;
  final Color buttonColor;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onTapDown: widget.onTapDown,
      onTapCancel: widget.onTapCancel,
      child: Container(
        padding: const EdgeInsets.all(8),
        color: widget.buttonColor,
        child: Center(
          child: Column(
            children: [
              appText.title(widget.text ?? ""),
              if (widget.image != null) Image.asset(widget.image!),
            ],
          ),
        ),
      ),
    );
  }
}
