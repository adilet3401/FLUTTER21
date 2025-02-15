import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'I need to write my DB',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _db.collection("data").snapshots(), //data деген учун ондолду
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text('circular prodress '),
            );
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text('маалымат келген жок'));
          }
          final user = snapshot.data!.docs;
          return ListView.builder(
            itemCount: user.length,
            itemBuilder: (context, index) {
              var adam = user[index].data() as Map<String, dynamic>;
              return ListTile(
                leading: Text("${index + 1}"),
                title: Text(adam['name'] ?? 'No Name '),
                subtitle: Text(adam['email'] ?? 'No Email '),
              );
            },
          );
        },
      ),
    );
  }
}
