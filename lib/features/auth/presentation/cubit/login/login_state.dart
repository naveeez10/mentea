part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String mobileNumber,
    required bool isSubmittingMobile,
    required bool showResendButton,
    required String otp,
    required bool isSubmittingOtp,
    required Option<String> otpError,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        mobileNumber: '',
        isSubmittingMobile: false,
        showResendButton: true,
        otp: '',
        isSubmittingOtp: false,
        otpError: none(),
      );
}
