import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:openai_app/screens/bloc/message_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageBloc(),
      child: Builder(
        builder: (context) {
          final bloc = context.read<MessageBloc>();
          return Scaffold(
            body: SafeArea(
              child: Chat(
                chatController: bloc.chatController,
                currentUserId: 'user1',
                onMessageSend: (text) {
                  bloc.add(SendMessageEvent(text));
                },
                resolveUser: (UserID id) async {
                  return User(id: id, name: 'John Doe');
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
