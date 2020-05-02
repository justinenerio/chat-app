// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Error error() {
    return const _Error();
  }

  _Data call(List<Message> messages) {
    return _Data(
      messages,
    );
  }
}

// ignore: unused_element
const $ChatState = _$ChatStateTearOff();

mixin _$ChatState {
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Message> messages), {
    @required Result loading(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Message> messages), {
    Result loading(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Data value), {
    @required Result loading(_Loading value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Data value), {
    Result loading(_Loading value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Message> messages), {
    @required Result loading(),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(error != null);
    assert($default != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Message> messages), {
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Data value), {
    @required Result loading(_Loading value),
    @required Result error(_Error value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert($default != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Data value), {
    Result loading(_Loading value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$_Loading;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

class __$ErrorCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'ChatState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Message> messages), {
    @required Result loading(),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(error != null);
    assert($default != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Message> messages), {
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Data value), {
    @required Result loading(_Loading value),
    @required Result error(_Error value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert($default != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Data value), {
    Result loading(_Loading value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error() = _$_Error;
}

abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call({List<Message> messages});
}

class __$DataCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object messages = freezed,
  }) {
    return _then(_Data(
      messages == freezed ? _value.messages : messages as List<Message>,
    ));
  }
}

class _$_Data implements _Data {
  const _$_Data(this.messages) : assert(messages != null);

  @override
  final List<Message> messages;

  @override
  String toString() {
    return 'ChatState(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messages);

  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(List<Message> messages), {
    @required Result loading(),
    @required Result error(),
  }) {
    assert(loading != null);
    assert(error != null);
    assert($default != null);
    return $default(messages);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(List<Message> messages), {
    Result loading(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_Data value), {
    @required Result loading(_Loading value),
    @required Result error(_Error value),
  }) {
    assert(loading != null);
    assert(error != null);
    assert($default != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_Data value), {
    Result loading(_Loading value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Data implements ChatState {
  const factory _Data(List<Message> messages) = _$_Data;

  List<Message> get messages;
  _$DataCopyWith<_Data> get copyWith;
}
