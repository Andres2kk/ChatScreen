import 'package:chat/presentation/widgets/chat/her_message.dart';
import 'package:chat/presentation/widgets/chat/my_message.dart';
import 'package:chat/presentation/widgets/compmsg/message_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://s.err.ee/photo/crop/2022/10/10/1643044h2ad2t4.jpg'),
          ),
        ),
        title: const Text('My Love 💔'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(
              child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return (index % 2 == 0) ? const HerMessage() : const MyMessage();
            },
          )),

          /// Caixa de textos de mesnagem
          const MessageField(),
        ]),
      ),
    );
  }
}
