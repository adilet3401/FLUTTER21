import 'package:flash_chat/theme/text_styles.dart';
import 'package:flash_chat/widgets/send_message.dart';
import 'package:flash_chat/widgets/user_message.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Snow',
              style: TextStyles.bodyMedium
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const Text('online', style: TextStyles.bodySmall),
          ],
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Align(
            alignment: Alignment.centerLeft,
            child: UserMessage(),
          );
        },
      ),
      bottomNavigationBar: const SendMessage(),
    );
  }
}
