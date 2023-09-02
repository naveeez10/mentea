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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  String get mobileNumber => throw _privateConstructorUsedError;
  bool get isSubmittingMobile => throw _privateConstructorUsedError;
  bool get showResendButton => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  bool get isSubmittingOtp => throw _privateConstructorUsedError;
  Option<String> get otpError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String mobileNumber,
      bool isSubmittingMobile,
      bool showResendButton,
      String otp,
      bool isSubmittingOtp,
      Option<String> otpError});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? isSubmittingMobile = null,
    Object? showResendButton = null,
    Object? otp = null,
    Object? isSubmittingOtp = null,
    Object? otpError = null,
  }) {
    return _then(_value.copyWith(
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmittingMobile: null == isSubmittingMobile
          ? _value.isSubmittingMobile
          : isSubmittingMobile // ignore: cast_nullable_to_non_nullable
              as bool,
      showResendButton: null == showResendButton
          ? _value.showResendButton
          : showResendButton // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmittingOtp: null == isSubmittingOtp
          ? _value.isSubmittingOtp
          : isSubmittingOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      otpError: null == otpError
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mobileNumber,
      bool isSubmittingMobile,
      bool showResendButton,
      String otp,
      bool isSubmittingOtp,
      Option<String> otpError});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = null,
    Object? isSubmittingMobile = null,
    Object? showResendButton = null,
    Object? otp = null,
    Object? isSubmittingOtp = null,
    Object? otpError = null,
  }) {
    return _then(_$_LoginState(
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmittingMobile: null == isSubmittingMobile
          ? _value.isSubmittingMobile
          : isSubmittingMobile // ignore: cast_nullable_to_non_nullable
              as bool,
      showResendButton: null == showResendButton
          ? _value.showResendButton
          : showResendButton // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmittingOtp: null == isSubmittingOtp
          ? _value.isSubmittingOtp
          : isSubmittingOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      otpError: null == otpError
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.mobileNumber,
      required this.isSubmittingMobile,
      required this.showResendButton,
      required this.otp,
      required this.isSubmittingOtp,
      required this.otpError});

  @override
  final String mobileNumber;
  @override
  final bool isSubmittingMobile;
  @override
  final bool showResendButton;
  @override
  final String otp;
  @override
  final bool isSubmittingOtp;
  @override
  final Option<String> otpError;

  @override
  String toString() {
    return 'LoginState(mobileNumber: $mobileNumber, isSubmittingMobile: $isSubmittingMobile, showResendButton: $showResendButton, otp: $otp, isSubmittingOtp: $isSubmittingOtp, otpError: $otpError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.isSubmittingMobile, isSubmittingMobile) ||
                other.isSubmittingMobile == isSubmittingMobile) &&
            (identical(other.showResendButton, showResendButton) ||
                other.showResendButton == showResendButton) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.isSubmittingOtp, isSubmittingOtp) ||
                other.isSubmittingOtp == isSubmittingOtp) &&
            (identical(other.otpError, otpError) ||
                other.otpError == otpError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, isSubmittingMobile,
      showResendButton, otp, isSubmittingOtp, otpError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final String mobileNumber,
      required final bool isSubmittingMobile,
      required final bool showResendButton,
      required final String otp,
      required final bool isSubmittingOtp,
      required final Option<String> otpError}) = _$_LoginState;

  @override
  String get mobileNumber;
  @override
  bool get isSubmittingMobile;
  @override
  bool get showResendButton;
  @override
  String get otp;
  @override
  bool get isSubmittingOtp;
  @override
  Option<String> get otpError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
