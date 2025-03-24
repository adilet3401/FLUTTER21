import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_colors.dart';
import 'package:sabr/widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2EFE7),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff16423C),
        title: Text(
          'Башкы бет',
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Ассалому алейкум!\nКуттуу ордоңузга кош келиңиз!\nБүгүн да жакшы күн болсун, ар бир мүнөтүңүз берекелүү өтсүн!',
          style: TextStyles.blackTitle,
          textAlign: TextAlign.center,
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
