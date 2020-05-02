import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
abstract class Message with _$Message {
  @JsonSerializable(explicitToJson: true)
  const factory Message({
    String id,
    String from,
    String fromId,
    String message,
    @ServerTimestampConverter() Timestamp timestamp,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  factory Message.fromFirestore(DocumentSnapshot doc) =>
      Message.fromJson(doc.data).copyWith(id: doc.documentID);
}

class ServerTimestampConverter implements JsonConverter<Timestamp, Object> {
  const ServerTimestampConverter();

  @override
  Timestamp fromJson(Object json) {
    return Timestamp.now();
  }

  @override
  Object toJson(Timestamp fieldValue) => fieldValue;
}
