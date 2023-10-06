// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInUiState {
  UiAction? get uiAction => throw _privateConstructorUsedError;
  set uiAction(UiAction? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInUiStateCopyWith<SignInUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInUiStateCopyWith<$Res> {
  factory $SignInUiStateCopyWith(
          SignInUiState value, $Res Function(SignInUiState) then) =
      _$SignInUiStateCopyWithImpl<$Res, SignInUiState>;
  @useResult
  $Res call({UiAction? uiAction});
}

/// @nodoc
class _$SignInUiStateCopyWithImpl<$Res, $Val extends SignInUiState>
    implements $SignInUiStateCopyWith<$Res> {
  _$SignInUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiAction = freezed,
  }) {
    return _then(_value.copyWith(
      uiAction: freezed == uiAction
          ? _value.uiAction
          : uiAction // ignore: cast_nullable_to_non_nullable
              as UiAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInUiStateImplCopyWith<$Res>
    implements $SignInUiStateCopyWith<$Res> {
  factory _$$SignInUiStateImplCopyWith(
          _$SignInUiStateImpl value, $Res Function(_$SignInUiStateImpl) then) =
      __$$SignInUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UiAction? uiAction});
}

/// @nodoc
class __$$SignInUiStateImplCopyWithImpl<$Res>
    extends _$SignInUiStateCopyWithImpl<$Res, _$SignInUiStateImpl>
    implements _$$SignInUiStateImplCopyWith<$Res> {
  __$$SignInUiStateImplCopyWithImpl(
      _$SignInUiStateImpl _value, $Res Function(_$SignInUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uiAction = freezed,
  }) {
    return _then(_$SignInUiStateImpl(
      uiAction: freezed == uiAction
          ? _value.uiAction
          : uiAction // ignore: cast_nullable_to_non_nullable
              as UiAction?,
    ));
  }
}

/// @nodoc

class _$SignInUiStateImpl implements _SignInUiState {
  _$SignInUiStateImpl({this.uiAction = null});

  @override
  @JsonKey()
  UiAction? uiAction;

  @override
  String toString() {
    return 'SignInUiState(uiAction: $uiAction)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInUiStateImplCopyWith<_$SignInUiStateImpl> get copyWith =>
      __$$SignInUiStateImplCopyWithImpl<_$SignInUiStateImpl>(this, _$identity);
}

abstract class _SignInUiState implements SignInUiState {
  factory _SignInUiState({UiAction? uiAction}) = _$SignInUiStateImpl;

  @override
  UiAction? get uiAction;
  set uiAction(UiAction? value);
  @override
  @JsonKey(ignore: true)
  _$$SignInUiStateImplCopyWith<_$SignInUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
