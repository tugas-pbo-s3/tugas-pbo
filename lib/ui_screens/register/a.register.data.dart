part of '_index.dart';

class RegisterData {
  final rxTitle = 'Register'.inj();

  final rxInt = 0.inj();

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    // submit: () async => await _ct.signIn(),
  );

  final rxIsObscuredPwd = true.inj();

  final rxEmail = RM.inject(
    () => RM.injectTextEditing(
      text: 'pegashoes@gmail.com',
      validators: [
        Validate.isNotEmpty,
        Validate.isEmail,
      ],
    ),
  );

  final rxPassword = RM.inject(
    () => RM.injectTextEditing(
      text: 'pegashoes123',
      validators: [
        Validate.isNotEmpty,
        Validate.alphaNumeric,
        Validate.spaceNotAllowed,
        Validate.minChars,
        // Validate.isPwdRegistered,
      ],
    ),
  );
  final rxRetypePassword = RM.inject(
    () => RM.injectTextEditing(
      // text: 'inipassword',
      validators: [
        Validate.isNotEmpty,
        Validate.alphaNumeric,
        Validate.spaceNotAllowed,
        Validate.minChars,
        Validate.pwdMatch
      ],
    ),
  );
}
