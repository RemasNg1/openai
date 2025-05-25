// // import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

// import 'package:bloc/bloc.dart';
// import 'package:flutter_chat_core/flutter_chat_core.dart';
// import 'package:meta/meta.dart';

// part 'message_event.dart';
// part 'message_state.dart';

// class MessageBloc extends Bloc<MessageEvent, MessageState> {
//       final chatController = InMemoryChatController();

//       List<TextMessage> message =[];

//   MessageBloc() : super(MessageInitial()) {

//     on<MessageEvent>((event, emit) {
//     });
//   }
// }\

import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:openai_app/repository/api_open_ai.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final chatController = InMemoryChatController();
  final _api = ApiOpenAi();

  MessageBloc() : super(MessageInitial()) {
    on<SendMessageEvent>((event, emit) async {
      final userMessage = TextMessage(
        id: '${Random().nextInt(10000)}',
        authorId: 'user1',
        createdAt: DateTime.now().toUtc(),
        text: event.text,
      );
      chatController.insertMessage(userMessage);

      final response = await _api.sendChatOpenAi(message: event.text);

      if (response != null) {
        final botMessage = TextMessage(
          id: '${Random().nextInt(10000)}',
          authorId: 'bot',
          createdAt: DateTime.now().toUtc(),
          text: response,
        );
        chatController.insertMessage(botMessage);
      }
    });
  }
}
