import 'package:flutter/material.dart';
import 'package:sabak_13_block/model.dart';
import 'package:sabak_13_block/service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    ServiceData().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<News?>(
        future: ServiceData().fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('download...');
          } else if (snapshot.connectionState == ConnectionState.none) {
            return const Center(child: Text('ERROR'));
          } else if (snapshot.connectionState == ConnectionState.done) {
            //listview
            return ListView.builder(
              itemCount: snapshot.data?.articles?.length,
              itemBuilder: (context, index) {
                final news = snapshot.data?.articles?[index];
                return Card(
                  child: Column(
                    children: [
                      Text(
                        news?.author ?? "",
                        style: const TextStyle(fontSize: 7),
                      ),
                      Text(
                        news?.title ?? "",
                        style: const TextStyle(fontSize: 10),
                      ),
                      Text(
                        news?.description ?? "",
                        style: const TextStyle(fontSize: 15),
                      ),
                      Text(
                        news?.publishedAt ?? "",
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            return const Text('NULL');
          }
        },
      ),
    );
  }
}
