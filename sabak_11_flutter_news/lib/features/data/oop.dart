class News {
  const News({required this.image, required this.date, required this.text});
  final String image;
  final String date;
  final String text;
}

News news1 = const News(
  image: "assets/Rectangle (5).png",
  date: '1 december, 2023',
  text:
      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.   \n 3 months ago",
);
News news2 = const News(
    image: "assets/Rectangle (1).png",
    date: '5/27/2015',
    text:
        "Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit  \n 9 months ago");
News news3 = const News(
    image: "assets/Rectangle (2).png",
    date: '17 october, 2020',
    text:
        "Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit  \n 1 months ago");
News news4 = const News(
    image: "assets/Rectangle (3).png",
    date: '21 Sep, 2019',
    text:
        "Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit  \n 8 months ago");
News news5 = const News(
    image: "assets/Rectangle (4).png",
    date: '8 Sep, 2019',
    text:
        "Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit  \n 4 months ago");

final List<News> newsList = [
  news1,
  news2,
  news3,
  news4,
  news5,
];
