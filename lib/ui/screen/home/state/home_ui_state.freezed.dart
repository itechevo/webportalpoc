// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeUiState {
  bool get isLoading => throw _privateConstructorUsedError;
  set isLoading(bool value) => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  set users(List<User> value) => throw _privateConstructorUsedError;
  UiAction? get uiAction => throw _privateConstructorUsedError;
  set uiAction(UiAction? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUiStateCopyWith<HomeUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiStateCopyWith<$Res> {
  factory $HomeUiStateCopyWith(
          HomeUiState value, $Res Function(HomeUiState) then) =
      _$HomeUiStateCopyWithImpl<$Res, HomeUiState>;
  @useResult
  $Res call({bool isLoading, List<User> users, UiAction? uiAction});
}

/// @nodoc
class _$HomeUiStateCopyWithImpl<$Res, $Val extends HomeUiState>
    implements $HomeUiStateCopyWith<$Res> {
  _$HomeUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? users = null,
    Object? uiAction = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      uiAction: freezed == uiAction
          ? _value.uiAction
          : uiAction // ignore: cast_nullable_to_non_nullable
              as UiAction?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeUiStateImplCopyWith<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  factory _$$HomeUiStateImplCopyWith(
          _$HomeUiStateImpl value, $Res Function(_$HomeUiStateImpl) then) =
      __$$HomeUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<User> users, UiAction? uiAction});
}

/// @nodoc
class __$$HomeUiStateImplCopyWithImpl<$Res>
    extends _$HomeUiStateCopyWithImpl<$Res, _$HomeUiStateImpl>
    implements _$$HomeUiStateImplCopyWith<$Res> {
  __$$HomeUiStateImplCopyWithImpl(
      _$HomeUiStateImpl _value, $Res Function(_$HomeUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? users = null,
    Object? uiAction = freezed,
  }) {
    return _then(_$HomeUiStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      uiAction: freezed == uiAction
          ? _value.uiAction
          : uiAction // ignore: cast_nullable_to_non_nullable
              as UiAction?,
    ));
  }
}

/// @nodoc

class _$HomeUiStateImpl implements _HomeUiState {
  _$HomeUiStateImpl(
      {this.isLoading = true, this.users = const [], this.uiAction = null});

  @override
  @JsonKey()
  bool isLoading;
  @override
  @JsonKey()
  List<User> users;
  @override
  @JsonKey()
  UiAction? uiAction;

  @override
  String toString() {
    return 'HomeUiState(isLoading: $isLoading, users: $users, uiAction: $uiAction)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUiStateImplCopyWith<_$HomeUiStateImpl> get copyWith =>
      __$$HomeUiStateImplCopyWithImpl<_$HomeUiStateImpl>(this, _$identity);
}

abstract class _HomeUiState implements HomeUiState {
  factory _HomeUiState({bool isLoading, List<User> users, UiAction? uiAction}) =
      _$HomeUiStateImpl;

  @override
  bool get isLoading;
  set isLoading(bool value);
  @override
  List<User> get users;
  set users(List<User> value);
  @override
  UiAction? get uiAction;
  set uiAction(UiAction? value);
  @override
  @JsonKey(ignore: true)
  _$$HomeUiStateImplCopyWith<_$HomeUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
