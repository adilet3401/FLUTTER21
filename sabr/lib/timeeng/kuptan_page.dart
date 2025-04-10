import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sabr/text_styles/title_colors.dart';
import 'package:sabr/widgets/app_drawer.dart';

class KuptanPage extends StatelessWidget {
  const KuptanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TextItem> texts = [
      TextItem(
        'Куптан намазынын парзы окулуп, салам берилгенден кийин:',
        TextStyles.largeTitle,
      ),
      TextItem(
        '«(Астагфируллах, 3 жолу) \n Аллохума антас-салааму ваминкас-салаам, табаарокта йаа зал-жалаали вал икром»',
        TextStyles.blackTitle,
        TextAlign.center,
      ),
      TextItem(
        'деп айтылат. Анан колдор көтөрүлүп, алакандар жайылып «Солаатан тунжина» дубасы окулат:',
        TextStyles.redTitle,
      ),
      TextItem(
        '«Аллоохумма солли ‘алаа саййидинаа Мухаммадин ва ‘алаа аали саййидинаа Мухаммад, солаатан тунжиина бихаа мин жамии’ил ахваали вал аафат. ("аафаат" деп айтып жатканда алакан төмөн, бүткөндө өйдө каратылат.) Ва тагдий ланаа бихаа жамии’ал хаажат, ва тутоххирунаа бихаа мин жамии’ис саййи’аат, ва тарфа’унаа бихаа ‘индака а’лад даражаат, ва тубаллиггунаа бихаа аксал гааяат, мин жамии’ил хайраати фил хаяати ва ба’дал мамаат, инахаллааху ‘алаа заалика, вал хамду лиллаахи Робб ‘ааламийн»',
        TextStyles.blackTitle,
      ),
      TextItem('деп колдор бетке сүрүлөт.', TextStyles.redTitle),
      TextItem(
        "Куптандын акыркы сүннөтү жана Витир важиб окулгандан кийин:",
        TextStyles.redTitle,
      ),
      TextItem(
        "«Субхааналлоохи вал хамду лиллаахи ва лаа илааха иллаллооху валлооху акбар, ва лаа хавла ва лаа куввата иллаа биллаахил 'алиййил 'азыйм ",
        TextStyles.blackTitle,
      ),
      TextItem('деп айтылат жана «Аятал Курси» окулат.', TextStyles.redTitle),
      TextItem('Бисмиллаахир Рахмаанир Рахиим.', TextStyles.largeTitle),
      TextItem(
        "«Аллооху лаа илааха иллаа хувал хаййул каййуум, лаа та-хузухуу синатун валаа наум, лаху маа фиссамааваати вамаа фил ард, ман заллазий йашфа'у 'индахуу иллаа би-изних, йа'ламу маа байна айдийхим вамаа холфахум валаа йухийтууна би шай-ин мин 'илмихии иллаа бимаа шаа-а, васи'а курсиййухус самааваати вал арди, валаа йа-уудухуу хифзухумаа ва хувал 'алиййул 'азыйм».'",
        TextStyles.blackTitle,
      ),
      TextItem(
        'Намаз тасбихтери айтылат:',
        TextStyles.redTitle,
        TextAlign.center,
      ),
      TextItem(
        'Субхааналлоох (33 жолу)\nАльхамду лиллах (33 жолу)\nАллооху акбар (33 жолу)',
        TextStyles.blackTitle,
        TextAlign.center,
      ),
      TextItem(
        '«Лаа илааха иллаллооху вахдахуу лаа шарийка лах, лахул мульку ва лахул хамду юхйий ва йумиит, ва хува хаййун лаа ямуут, биадийхил хайр, ва хува ‘алаа кулли шай-ин кодиир, ва илайхил масиир»',
        TextStyles.blackTitle,
      ),
      TextItem('(деп айтылып дуа кылынат)', TextStyles.redTitle),
      TextItem('Дубадан кийинки тасбихат улантылат:', TextStyles.redTitle),
      TextItem(
        'Фа’лам аннаху (1 жолу)',
        TextStyles.blackTitle,
        TextAlign.center,
      ),
      TextItem('Лаа илааха иллаллоох', TextStyles.blackTitle, TextAlign.center),
      TextItem('(33 жолу окулат)', TextStyles.redTitle, TextAlign.center),
      TextItem(
        '«Мухаммадун Расуулуллоохи соллаллооху та’аалаа ‘алайхи ва саллам»',
        TextStyles.blackTitle,
      ),
      TextItem('Бисмиллаахир Рохмаанир Рахиим.', TextStyles.largeTitle),
      TextItem(
        "~ Инналлооха ва малаа-икатаху йусоллууна 'алан набий, йаа айюхаллазийна аамануус соллу'алайхи васаллимуу таслиймаа, лаббайк!.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "~ Аллоохумма солли 'алаа саййидиина Мухаммадин ва 'алаа аали саййидиина Мухаммад, би 'адади кулли даа-ин ва даваа-ин ва баарик васаллим 'алайхи ва 'алайхим касиироо.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "~ Аллоохумма солли 'алаа саййидиина Мухаммадин ва 'алаа аали саййидиина Мухаммад, би ‘адади кулли даа-ин ва даваа-ин ва баарик васаллим 'алайхи ва алайхим касиироо.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "~ Аллоохумма солли 'алаа саййидиина Мухаммадин ва 'алаа аали саййидиина Мухаммад, би ‘адади кулли даа-ин ва даваа-ин ва баарик васаллим 'алайхи ва алайхим касийрон касийроо.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "~ Солли васаллим йаа Робби ‘алаа хабийбика Мухаммадин ва 'алаа жамии’ил анбийаа-и вал мурсалийн, ва 'алаа аали куллин ва сохби куллин ажма’иин. Аамиин, вал хамду лиллаахи Роббил 'ааламиин.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "~ Алфу алфи солаатин ва алфу алфи салаамин ‘алайка йаа расуулллоох.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "~ Алфу алфи солаатин ва алфу алфи салаамин ‘алайка йаа хабиибуллоох.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "~ Алфу алфи солаатин ва алфу алфи салаамин ‘алайка йаа амина вахийллаах.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "Аллоохумма соли васаллим ва баарик,‘алаа саййидинаа Мухаммадин ва ‘алаа аалихи ва асхаабих, би ‘адади авроокил ашжаари ва амваажил бихааари ва катороотил амтоор, вагфир ланаа вархамнаа валтуф бинаа (ва би устаазина ва ваалидийнаа ва битолаабати росаа-илин нурис-соодикиин), йаа илаахаанаа би кулли солаатин минхаа, ашхаду ан лаа илааха иллаллоох, ва ашхаду анна Мухаммадам Расуулуллоох соллаллооху та‘аала ‘алайхи ва саллам.",
        TextStyles.blackTitle,
      ),
      TextItem(
        "Бисмиллаахир Рахмаанир Рахиим.",
        TextStyles.largeTitle,
      ), //-------------------
      TextItem(
        "~ Йаа Жамиилу йаа Аллаах Йаа Кориибу йаа Аллаах \n~Йаа Мужиибу йаа Аллаах Йаа Хабиибу йаа Аллаах \n~Йаа Ро-ууфу йаа Аллаах Йаа 'Атууфу йаа Аллаах \n~Йаа Ма'рууфу йаа Аллаах Йаа Латыйфу йаа Аллаах \n~Йаа 'Азыйму йаа Аллаах Йаа Ханнаану йаа Аллаах \n~Йаа Маннаану йаа Аллаах Йаа Даййаану йаа Аллаах \n~Йаа Субхаану йаа Аллаах Йаа Амаану йаа Аллаах \n~Йаа Бурхаану йаа Аллаах Йаа Султоону йаа Аллаах \n~Йаа Муста'аану йаа Аллаах Йаа Мухсину йаа Аллаах \n~Йаа Мута'аалу йаа Аллаах Йаа Рохмаану йаа Аллаах \n~Йаа Рохийму йаа Аллаах Йаа Карийму йаа Аллаах \n~Йаа Мажииду йаа Аллаах Йаа Фарду йаа Аллаах \n~Йаа Витру йаа Аллаах Йаа Ахаду йаа Аллаах \n~Йаа Сомаду йаа Аллаах Йаа Махмууду йаа Аллаах \n~Йаа Соодикал Ва'ди йаа Аллаах Йаа 'Алиййу йаа Аллаах \n~Йаа Гониййу йаа Аллаах Йаа Шаафий йаа Аллаах\n~Йаа Каафий йаа Аллаах Йаа Му'аафий йаа Аллаах\n~Йаа Баакий йаа Аллаах Йаа Хаадий йаа Аллаах \n~Йаа Коодиру йаа Аллаах Йаа Саатиру йаа Аллаах \n~Йаа Коххаару йаа Аллаах Йаа Жаббаару йаа Аллаах \n~Йаа Гоффаару йаа Аллаах Йаа Фаттааху йаа Аллаах",
        TextStyles.blackTitle,
      ),
      TextItem(
        "Алакандар жогору каратылып, колдор көтөрүлөт:",
        TextStyles.redTitle,
      ),
      TextItem(
        "«Йаа Роббас самааваати вал арди, йаа зал жалаали вал икроом, (н)ас-алука би хакки хаазихил асмаа-и куллихаа ан тусоллийа 'алаа саййидинаа Мухаммадин ва 'алаа аали Мухаммад, вархам Мухаммадан камаа соллайта ва салламта ва баарокта ва рохимта ва тароххамта 'алаа Ибрахийма ва 'алаа аали Ибрахийма фил 'ааламиин, Роббанаа иннака Хамийдун Мажиид, би рохматика йаа архамар роохимиин, вал хамду лиллаахи Роббил 'ааламиин».",
        TextStyles.blackTitle,
      ),
      TextItem(
        "«Бакара» сүрөсүнүн акыркы 285-286-аяттары окулат.",
        TextStyles.redTitle,
      ),
      TextItem("Бисмиллаахир Рахмаанир Рахиим.", TextStyles.largeTitle),
      TextItem(
        "«Ааманар расуулу бимаа унзила илайхи мир Роббихии вал му-минуун, куллун аамана биллаахи ва малааикатихии ва кутубихии ва русулих, лаа нуфаррику байна ахадим мир-русулих, вакоолуу сами'наа ва ато'наа, гуфроонака Роббанаа ва иляйкал масыйр. Лаа йукаллифуллооху нафсан иллаа вус'ахаа, лахаа маа касабат ва 'алайхаа мактасабат, Роббанаа лаа ту-аахизнаа ин насийнаа ав ахто-наа, Роббанаа ва лаа тахмил 'алайнаа исрон камаа хамалтахуу 'алал лазийна мин каблинаа, Роббанаа ва лаа тухаммилнаа маа лаа тоокота ланаа бих, ва'фу 'аннаа вагфир ланаа вархамнаа, анта Мавлаанаа фансурнаа 'алал ковмил каафириин».",
        TextStyles.blackTitle,
      ),
      TextItem("СодакАллоохул 'Азыйм.", TextStyles.redTitle, TextAlign.center),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffF2EFE7),
      appBar: AppBar(
        backgroundColor: const Color(0xff16423C),
        title: Text(
          "Куптан",
          style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView.separated(
          itemCount: texts.length,
          separatorBuilder:
              (context, index) => const SizedBox(height: 15), // Авто-отступ
          itemBuilder:
              (context, index) => Text(
                texts[index].text,
                style: texts[index].style,
                textAlign:
                    texts[index].textAlign ??
                    TextAlign.start, // Добавлено textAlign
                softWrap: true,
              ),
        ),
      ),
    );
  }
}

// Модель для текстов
class TextItem {
  final String text;
  final TextStyle style;
  final TextAlign? textAlign;
  TextItem(this.text, this.style, [this.textAlign]);
}
