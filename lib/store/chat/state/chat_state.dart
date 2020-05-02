import 'package:chat_app/models/message/message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.freezed.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.loading() = _Loading;
  const factory ChatState.error() = _Error;
  const factory ChatState(List<Message> messages) = _Data;
}
