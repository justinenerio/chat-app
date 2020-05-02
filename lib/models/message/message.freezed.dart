// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {String id,
      String from,
      String fromId,
      String message,
      @ServerTimestampConverter() Timestamp timestamp}) {
    return _Message(
      id: id,
      from: from,
      fromId: fromId,
      message: message,
      timestamp: timestamp,
    );
  }
}

// ignore: unused_element
const $Message = _$MessageTearOff();

mixin _$Message {
  String get id;
  String get from;
  String get fromId;
  String get message;
  @ServerTimestampConverter()
  Timestamp get timestamp;

  Map<String, dynamic> toJson();
  $MessageCopyWith<Message> get copyWith;
}

abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String from,
      String fromId,
      String message,
      @ServerTimestampConverter() Timestamp timestamp});
}

class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object id = freezed,
    Object from = freezed,
    Object fromId = freezed,
    Object message = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      from: from == freezed ? _value.from : from as String,
      fromId: fromId == freezed ? _value.fromId : fromId as String,
      message: message == freezed ? _value.message : message as String,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as Timestamp,
    ));
  }
}

abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String from,
      String fromId,
      String message,
      @ServerTimestampConverter() Timestamp timestamp});
}

class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object id = freezed,
    Object from = freezed,
    Object fromId = freezed,
    Object message = freezed,
    Object timestamp = freezed,
  }) {
    return _then(_Message(
      id: id == freezed ? _value.id : id as String,
      from: from == freezed ? _value.from : from as String,
      fromId: fromId == freezed ? _value.fromId : fromId as String,
      message: message == freezed ? _value.message : message as String,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as Timestamp,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_Message implements _Message {
  const _$_Message(
      {this.id,
      this.from,
      this.fromId,
      this.message,
      @ServerTimestampConverter() this.timestamp});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageFromJson(json);

  @override
  final String id;
  @override
  final String from;
  @override
  final String fromId;
  @override
  final String message;
  @override
  @ServerTimestampConverter()
  final Timestamp timestamp;

  @override
  String toString() {
    return 'Message(id: $id, from: $from, fromId: $fromId, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.fromId, fromId) ||
                const DeepCollectionEquality().equals(other.fromId, fromId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(fromId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(timestamp);

  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {String id,
      String from,
      String fromId,
      String message,
      @ServerTimestampConverter() Timestamp timestamp}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get id;
  @override
  String get from;
  @override
  String get fromId;
  @override
  String get message;
  @override
  @ServerTimestampConverter()
  Timestamp get timestamp;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}
