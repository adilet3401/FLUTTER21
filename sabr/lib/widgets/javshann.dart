import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/widgets/app_drawer.dart';

class JavshannPage extends StatefulWidget {
  final TextStyle? textStyle;

  const JavshannPage({super.key, this.textStyle});

  @override
  _JavshannPageState createState() => _JavshannPageState();
}

class _JavshannPageState extends State<JavshannPage> {
  int _pageNumber = 1;
  String _appBarTitle = '1 - баб';
  String _text = '''
Аллахумма иннии ас'алука би асмааика

1. Йаа Аллах
2. Йаа Рахмаан
3. Йаа Рахиим
4. Йаа ЪАлиим
5. Йаа Халиим
6. Йаа ЪАзиим
7. Йаа Хакиим
8. Йаа Кодиим 
9. Йаа Мукиим
10. Йаа Кариим

Субхаанака йаа лаа илааһа иллаа антал амаанал
амаана холлиснаа минан-наар
''';

  final List<String> _texts = [
    '''
Аллахумма иннии ас'алука би асмааика
1. Йаа Аллах
2. Йаа Рахмаан
3. Йаа Рахиим
4. Йаа ЪАлиим
5. Йаа Халиим
6. Йаа ЪАзиим
7. Йаа Хакиим
8. Йаа Кодиим 
9. Йаа Мукиим
10. Йаа Кариим

Субхаанака йаа лаа илааһа иллаа антал амаанал
амаана холлиснаа минан-наар
''',
    '''1. Йаа Саййидас-саадаат
2. Йаа Мужиибад-даъаваат
3. Йаа Валиййал-хасанаат
4. Йаа Рафиъад-даражаат
5. Йаа ЪАзиимал-баракаат
6. Йаа Гоофирал-хатииаат
7. Йаа Даафиъал-балиййаат
8. Йаа Саамиъал-асваат
9. Йаа Муътыйал-масуулаат
10. Йаа ЪАалимас-сирри вал-хофиййаат
 
 
 Субхаанака йаа лаа илааһа иллаа антал амаанал
амаана холлиснаа минан-наар
 ''',
    '''1. Йаа Хойрол Гоофириин
2. Йаа Хойрон-Наасыриин
3. Йаа Хойрол Хаакимиин
4. Йаа Хойрол Фаатихиин
5. Йаа Хойроз-Заакириин
6. Йаа Хойрол Ваарисиин
7. Йаа Хойрол Хаамидиин
8. Йаа Хойрор-Роозикиин
9. Йаа Хойрол Фаасылиин
10. Йаа Хойрол Мухсиниин

Субхаанака йаа лаа илааһа иллаа антал амаанал амаана холлиснаа минан-наар''',
    '''1. Йаа Ман лахул-ъиззу вал-жамаал
2. Йаа Ман лахул-мулку вал-жалаал
3. Йаа Ман лахул-кудрату вал-камаал
4. Йаа Ман хувал-кабиирул-мутаъаал
5. Йаа Ман хува шадиидул-михаал
6. Йаа Ман хува шадиидул-ъикооб
7. Йаа Ман хува сарииъул-хисааб
8. Йаа Ман хува ъиндаху хуснус-савааб
9. Йаа Ман хува ъиндаху уммул-китааб
10. Йаа Ман хува йуншиус-сахаабас-сикаал

Субхаанака йаа лаа илааһа иллаа антал амаанал амаана холлиснаа минан-наар''',
    '''Ва ас'алука би асмааика
1. Йаа Ханнаан
2. Йаа Маннаан
3. Йаа Даййаан
4. Йаа Гуфроон
5. Йаа Бурхаан
6. Йаа Султоон
7. Йаа Субхаан
8. Йаа Мустаъаан
9. Йаа Зал-Манни вал байаан
10. Йаа Зал-амаан

Субхаанака йаа лаа илааһа иллаа антал амаанал амаана холлиснаа минан-наар''',

    '''
1. Йаа Ман таваадоъа куллу шайин лиъазаматиһ
2. Йаа Манистаслама куллу шайин ликудратиһ
3. Йаа Ман залла куллу шайин лиъиззатиһ
4. Йаа Ман ходоъа куллу шайин лихайбатиһ
5. Йаа Манинкоода куллу шайин лимулкатиһ
6. Йаа Ман даана куллу шайин мин махоофатиһ
7. Йаа Маниншаккатил-жибаалу мин хошйатиһ
8. Йаа Ман кооматис-самааваату би амриһ
9. Йаа Манистакорротил-арду би изниһ
10. Йаа Ман лаа йаътадии ъалаа ахли мамлакатиһ

Субхаанака йаа лаа илааһа иллаа антал амаанал амаана холлиснаа минан-наар

''',

    '''
1. Йаа Гоофирал хотоойа
2. Йаа Каашифал балаайа
3. Йаа Мунтахар-рожаайа
4. Йаа Мужзилал ъатоойа
5. Йаа Ваасиъал хадаайа
6. Йаа Роозикол бараайа
7. Йаа Коодийал манаайа
8. Йаа Саамиъаш-шакаайа
9. Йаа Бааъисас-сароойа
10. Йаа Мутликол усааро

Субхаанака йаа лаа илааһа иллаа антал амаанал амаана холлиснаа минан-наар

''',
    '''
1. Йаа Зал-хамди вас-санаа
2. Йаа Зал-мажди вас-санаа
3. Йаа Зал-фахри вал-бахаа
4. Йаа Зал-ъахди вал-вафаа
5. Йаа Зал-ъафви вар-ридоо
6. Йаа Зал-мании вал-тъатоо
7. Йаа Зал-фасли вал-кадоо
8. Йаа Зал-ъиззати вал-бакоо
9. Йаа Зал-жууди ван-нахмаа
10. Йаа Зал-фадли вал-аалаа

Субхаанака йаа лаа илааха иллаа анталь амаанал амаана холлиснаа минан-наар''',
    '''Ва ас'алука би асмааика

1. Йаа Мааниъ
2. Йаа Даафиъ
3. Йаа Наафиъ
4. Йаа Саамиъ
5. Йаа Роофиъ
6. Йаа Соониъ
7. Йаа Шаафиъ
8. Йаа Жаамиъ
9. Йаа Ваасиъ
10. Йаа Муусиъ

Субхаанака йаа лаа илааһа иллаа антал амаанал
амаана холлиснаа минан-наар
''',
    '''
1. Йаа Соониъа кулли маснууъ
2. Йаа Хоолико кулли махлуук
3. Йаа Роозико кулли марзуук
4. Йаа Маалика кулли мамлуук
5. Йаа Каашифа кулли макрууб
6. Йаа Фаарижа кулли магмуум
7. Йаа Раахима кулли мархуум
8. Йаа Наасыро кулли махзуул
9. Йаа Саатиро кулли маъйууб
10. Йаа Малжа - а кулли мазлуум

Субхаанака йаа лаа илааһа иллаа антал амаанал
амаана холлиснаа минан-наар''',
  ];

  void _nextPage() {
    setState(() {
      if (_pageNumber < _texts.length) {
        _pageNumber++;
      } else {
        _pageNumber = 1;
      }
      _appBarTitle = '$_pageNumber - баб';
      _text = _texts[_pageNumber - 1];
    });
  }

  void _previousPage() {
    setState(() {
      if (_pageNumber > 1) {
        _pageNumber--;
      } else {
        _pageNumber = _texts.length;
      }
      _appBarTitle = '$_pageNumber - баб';
      _text = _texts[_pageNumber - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _appBarTitle,
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff16423C),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: Color(0xffF2EFE7),
      drawer: AppDrawer(),
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/books.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: RichText(
              // textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red, // Основной цвет текста
                  // fontFamily: 'Roboto',
                ),
                children: _buildTextSpans(_text),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff16423C),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 40),
              onPressed: _previousPage,
            ),
            Text(
              '$_pageNumber / ${_texts.length}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_forward, color: Colors.white, size: 40),
              onPressed: _nextPage,
            ),
          ],
        ),
      ),
    );
  }

  List<TextSpan> _buildTextSpans(String text) {
    List<TextSpan> spans = [];
    List<String> lines = text.split('\n');
    for (String line in lines) {
      if (line.startsWith(RegExp(r'\d+\.'))) {
        spans.add(
          TextSpan(
            text: '$line\n',
            style: TextStyle(
              color: Colors.black, // Цвет нумерованных строк
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      } else {
        spans.add(TextSpan(text: '$line\n'));
      }
    }
    return spans;
  }
}
