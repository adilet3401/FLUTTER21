import 'package:flutter/material.dart';
import 'package:sabr_2/widgets/app_drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';

class TasbihScreen extends StatefulWidget {
  const TasbihScreen({super.key});

  @override
  _TasbihScreenState createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  Future<void> _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = prefs.getInt('counter') ?? 0;
    });
  }

  Future<void> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', _counter);
  }

  Future<void> _resetCounter() async {
    bool? confirmReset = await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Сбросить счетчик?'),
        content: const Text('Вы уверены, что хотите сбросить счетчик?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Сбросить'),
          ),
        ],
      ),
    );

    if (confirmReset == true) {
      setState(() {
        _counter = 0;
      });
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt('counter', _counter);

      // Проверяем поддержку вибрации и вызываем ее
      if (await Vibration.hasVibrator() ?? false) {
        Vibration.vibrate(duration: 500);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: const Color(0xff16423C),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Тасбих',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: const Size(350, 450),
              painter: TasbihPainter(),
            ),
            Positioned(
              top: 70,
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    _counter.toString().padLeft(3, '0'),
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Digital',
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              child: GestureDetector(
                onTap: _incrementCounter,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 190,
              right: 50,
              child: GestureDetector(
                onTap: _resetCounter,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TasbihPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Градиентная заливка
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xff313131), Colors.black],
    );

    Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.fill;

    // Форма тасбиха
    Path path = Path()
      ..moveTo(size.width * 0.2, 0)
      ..quadraticBezierTo(size.width * 0.5, -50, size.width * 0.8, 0)
      ..lineTo(size.width, size.height * 0.6)
      ..quadraticBezierTo(
          size.width * 0.5, size.height + 40, 0, size.height * 0.6)
      ..close();

    canvas.drawPath(path, paint);

    // Граница (белая обводка)
    Paint borderPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 7
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
