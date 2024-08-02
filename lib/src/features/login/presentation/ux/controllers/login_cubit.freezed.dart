// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLoading,
    required TResult Function(UserResponseModel user) requestSuccess,
    required TResult Function(ErrorResponseModel error) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLoading,
    TResult? Function(UserResponseModel user)? requestSuccess,
    TResult? Function(ErrorResponseModel error)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLoading,
    TResult Function(UserResponseModel user)? requestSuccess,
    TResult Function(ErrorResponseModel error)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLoading value) requestLoading,
    required TResult Function(_RequestSuccess value) requestSuccess,
    required TResult Function(_RequestError value) requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLoading value)? requestLoading,
    TResult? Function(_RequestSuccess value)? requestSuccess,
    TResult? Function(_RequestError value)? requestError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLoading value)? requestLoading,
    TResult Function(_RequestSuccess value)? requestSuccess,
    TResult Function(_RequestError value)? requestError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLoading,
    required TResult Function(UserResponseModel user) requestSuccess,
    required TResult Function(ErrorResponseModel error) requestError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLoading,
    TResult? Function(UserResponseModel user)? requestSuccess,
    TResult? Function(ErrorResponseModel error)? requestError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLoading,
    TResult Function(UserResponseModel user)? requestSuccess,
    TResult Function(ErrorResponseModel error)? requestError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLoading value) requestLoading,
    required TResult Function(_RequestSuccess value) requestSuccess,
    required TResult Function(_RequestError value) requestError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLoading value)? requestLoading,
    TResult? Function(_RequestSuccess value)? requestSuccess,
    TResult? Function(_RequestError value)? requestError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLoading value)? requestLoading,
    TResult Function(_RequestSuccess value)? requestSuccess,
    TResult Function(_RequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RequestLoadingImplCopyWith<$Res> {
  factory _$$RequestLoadingImplCopyWith(_$RequestLoadingImpl value,
          $Res Function(_$RequestLoadingImpl) then) =
      __$$RequestLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequestLoadingImpl>
    implements _$$RequestLoadingImplCopyWith<$Res> {
  __$$RequestLoadingImplCopyWithImpl(
      _$RequestLoadingImpl _value, $Res Function(_$RequestLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestLoadingImpl implements _RequestLoading {
  const _$RequestLoadingImpl();

  @override
  String toString() {
    return 'LoginState.requestLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLoading,
    required TResult Function(UserResponseModel user) requestSuccess,
    required TResult Function(ErrorResponseModel error) requestError,
  }) {
    return requestLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLoading,
    TResult? Function(UserResponseModel user)? requestSuccess,
    TResult? Function(ErrorResponseModel error)? requestError,
  }) {
    return requestLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLoading,
    TResult Function(UserResponseModel user)? requestSuccess,
    TResult Function(ErrorResponseModel error)? requestError,
    required TResult orElse(),
  }) {
    if (requestLoading != null) {
      return requestLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLoading value) requestLoading,
    required TResult Function(_RequestSuccess value) requestSuccess,
    required TResult Function(_RequestError value) requestError,
  }) {
    return requestLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLoading value)? requestLoading,
    TResult? Function(_RequestSuccess value)? requestSuccess,
    TResult? Function(_RequestError value)? requestError,
  }) {
    return requestLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLoading value)? requestLoading,
    TResult Function(_RequestSuccess value)? requestSuccess,
    TResult Function(_RequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestLoading != null) {
      return requestLoading(this);
    }
    return orElse();
  }
}

abstract class _RequestLoading implements LoginState {
  const factory _RequestLoading() = _$RequestLoadingImpl;
}

/// @nodoc
abstract class _$$RequestSuccessImplCopyWith<$Res> {
  factory _$$RequestSuccessImplCopyWith(_$RequestSuccessImpl value,
          $Res Function(_$RequestSuccessImpl) then) =
      __$$RequestSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserResponseModel user});
}

/// @nodoc
class __$$RequestSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequestSuccessImpl>
    implements _$$RequestSuccessImplCopyWith<$Res> {
  __$$RequestSuccessImplCopyWithImpl(
      _$RequestSuccessImpl _value, $Res Function(_$RequestSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RequestSuccessImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponseModel,
    ));
  }
}

/// @nodoc

class _$RequestSuccessImpl implements _RequestSuccess {
  const _$RequestSuccessImpl(this.user);

  @override
  final UserResponseModel user;

  @override
  String toString() {
    return 'LoginState.requestSuccess(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestSuccessImplCopyWith<_$RequestSuccessImpl> get copyWith =>
      __$$RequestSuccessImplCopyWithImpl<_$RequestSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLoading,
    required TResult Function(UserResponseModel user) requestSuccess,
    required TResult Function(ErrorResponseModel error) requestError,
  }) {
    return requestSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLoading,
    TResult? Function(UserResponseModel user)? requestSuccess,
    TResult? Function(ErrorResponseModel error)? requestError,
  }) {
    return requestSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLoading,
    TResult Function(UserResponseModel user)? requestSuccess,
    TResult Function(ErrorResponseModel error)? requestError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLoading value) requestLoading,
    required TResult Function(_RequestSuccess value) requestSuccess,
    required TResult Function(_RequestError value) requestError,
  }) {
    return requestSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLoading value)? requestLoading,
    TResult? Function(_RequestSuccess value)? requestSuccess,
    TResult? Function(_RequestError value)? requestError,
  }) {
    return requestSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLoading value)? requestLoading,
    TResult Function(_RequestSuccess value)? requestSuccess,
    TResult Function(_RequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestSuccess != null) {
      return requestSuccess(this);
    }
    return orElse();
  }
}

abstract class _RequestSuccess implements LoginState {
  const factory _RequestSuccess(final UserResponseModel user) =
      _$RequestSuccessImpl;

  UserResponseModel get user;
  @JsonKey(ignore: true)
  _$$RequestSuccessImplCopyWith<_$RequestSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestErrorImplCopyWith<$Res> {
  factory _$$RequestErrorImplCopyWith(
          _$RequestErrorImpl value, $Res Function(_$RequestErrorImpl) then) =
      __$$RequestErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorResponseModel error});
}

/// @nodoc
class __$$RequestErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RequestErrorImpl>
    implements _$$RequestErrorImplCopyWith<$Res> {
  __$$RequestErrorImplCopyWithImpl(
      _$RequestErrorImpl _value, $Res Function(_$RequestErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RequestErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorResponseModel,
    ));
  }
}

/// @nodoc

class _$RequestErrorImpl implements _RequestError {
  const _$RequestErrorImpl(this.error);

  @override
  final ErrorResponseModel error;

  @override
  String toString() {
    return 'LoginState.requestError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestErrorImplCopyWith<_$RequestErrorImpl> get copyWith =>
      __$$RequestErrorImplCopyWithImpl<_$RequestErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requestLoading,
    required TResult Function(UserResponseModel user) requestSuccess,
    required TResult Function(ErrorResponseModel error) requestError,
  }) {
    return requestError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? requestLoading,
    TResult? Function(UserResponseModel user)? requestSuccess,
    TResult? Function(ErrorResponseModel error)? requestError,
  }) {
    return requestError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requestLoading,
    TResult Function(UserResponseModel user)? requestSuccess,
    TResult Function(ErrorResponseModel error)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_RequestLoading value) requestLoading,
    required TResult Function(_RequestSuccess value) requestSuccess,
    required TResult Function(_RequestError value) requestError,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_RequestLoading value)? requestLoading,
    TResult? Function(_RequestSuccess value)? requestSuccess,
    TResult? Function(_RequestError value)? requestError,
  }) {
    return requestError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_RequestLoading value)? requestLoading,
    TResult Function(_RequestSuccess value)? requestSuccess,
    TResult Function(_RequestError value)? requestError,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class _RequestError implements LoginState {
  const factory _RequestError(final ErrorResponseModel error) =
      _$RequestErrorImpl;

  ErrorResponseModel get error;
  @JsonKey(ignore: true)
  _$$RequestErrorImplCopyWith<_$RequestErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
