import 'package:flutter/material.dart';

class GlaPage extends StatefulWidget {
  const GlaPage({super.key});

  @override
  State<GlaPage> createState() => _GlaPageState();
}

class _GlaPageState extends State<GlaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffA6CDC6),
      appBar: AppBar(
        backgroundColor: const Color(0xff16404D),
      ),
      body: Center(
        child: Text('Alhamdulillah'),
      ),
    );
  }
}
