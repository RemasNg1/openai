part of 'message_bloc.dart';

@immutable
sealed class MessageEvent {}

class SendMessageEvent extends MessageEvent {
  final String text;

  SendMessageEvent(this.text);
}
