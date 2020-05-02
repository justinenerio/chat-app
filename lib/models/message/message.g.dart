// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$_$_MessageFromJson(Map<String, dynamic> json) {
  return _$_Message(
    id: json['id'] as String,
    from: json['from'] as String,
    fromId: json['fromId'] as String,
    message: json['message'] as String,
    timestamp: const ServerTimestampConverter().fromJson(json['timestamp']),
  );
}

Map<String, dynamic> _$_$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'fromId': instance.fromId,
      'message': instance.message,
      'timestamp': const ServerTimestampConverter().toJson(instance.timestamp),
    };
