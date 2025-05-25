part of 'message_bloc.dart';

@immutable
abstract class MessageState {}

class MessageInitial extends MessageState {}

class MessageLoaded extends MessageState {
  final List<TextMessage> messages;

  MessageLoaded(this.messages);
}
