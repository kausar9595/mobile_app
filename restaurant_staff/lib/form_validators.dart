import 'package:get/get.dart';

abstract class FormValidators {
  static String? validateEmptyField(String? value,
      {String fieldName = "This field"}) {
    if (value?.isEmpty ?? true) return "$fieldName is required!";
    return null;
  }

  static String? validateEmail(String? value) {
    if (value?.isEmpty ?? true) return "Email field cannot be empty";
    if (value!.isEmail == false) return "Enter a valid email";
    return null;
  }

  static String? validatePassword(String? value) {
    if (value?.isEmpty ?? true) {
      return "Password is Required!";
    }
    if (value!.length < 8) {
      return "Password Must be 8 characters or More!";
    }
    if (value.isAlphabetOnly || value.isNumericOnly) {
      return "Password Must Have Alphanumeric Value!";
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? password) {
    if (value?.isEmpty ?? true) {
      return "Confirm Password is Required!";
    }
    if (password != value) {
      return "Password Didn't Match!";
    }
    return null;
  }
}
