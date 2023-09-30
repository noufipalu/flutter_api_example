class ValidationHelpers {
  //Null/Empty check
  static String? checkIsNullOrEmpty(String? inputText) {
    if (inputText == null || inputText.trim().isEmpty) {
      return 'Please enter a value';
    }
    return null;
  }

  //Email Validation
  static String? validateEmail(String? inputText) {
    String? nullableEmail = checkIsNullOrEmpty(inputText);
    if (nullableEmail != null) {
      return nullableEmail;
    }

    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(inputText!);

    if (!emailValid) {
      return 'Invalid Email';
    }
    return null;
  }

  //Password Validation
  static bool isPasswordValid(String password) {
    RegExp regExp =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    return regExp.hasMatch(password);
  }

  static String? validatePassword(String? password) {
    bool isValidPassword = isPasswordValid(password!);
    String? nullablePassword = checkIsNullOrEmpty(password);
    if (nullablePassword != null) {
      return nullablePassword;
    } else if (!isValidPassword) {
      return 'Enter a valid password';
    }
    return null;
  }

  //Confirm Password validation
  static String? validateConfirmPassword(
      String? password, String? confirmPassword) {
    bool isvalidConfirmPassword = isPasswordValid(confirmPassword ?? "");
    String? nullableConfirmPassword = checkIsNullOrEmpty(confirmPassword);
    if (nullableConfirmPassword != null) {
      return nullableConfirmPassword;
    } else if (!isvalidConfirmPassword) {
      return 'Enter a valid password';
    } else if (confirmPassword != password) {
      return 'Password does not match. Check your password';
    }
    return null;
  }

  //Phone number Validation
  static bool isPhonevalid(String phoneNumber) {
    final RegExp regex = RegExp(r'^\d{10}$');
    return (regex.hasMatch(phoneNumber));
  }

  static String? validatePhone(String? phoneNumber) {
    bool isValidPhone = isPhonevalid(phoneNumber!);
    String? nullablePhone = checkIsNullOrEmpty(phoneNumber);
    if (nullablePhone != null) {
      return nullablePhone;
    } else if (!isValidPhone) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  //Name validation
  static String? validateName(String? name) {
    String? nullableName = checkIsNullOrEmpty(name);
    if (nullableName != null) {
      return nullableName;
    }
    if (name!.length < 3) {
      return 'Name must contain at least 3 characters.';
    }
    return null;
  }
}
