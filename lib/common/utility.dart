const String pattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

class Utility {
  static bool isEmailValid(String value) {
    if (value.isEmpty) {
      return true;
    }
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool checkPasswordValidation(String value) {
    bool isValid = false;
    bool hasUppercase = false;
    bool minLength = false;
    bool hasDigits = false;
    bool hasSpecialCharacters = false;
    var character = '';
    var i = 0;
    RegExp regExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    if (value.isNotEmpty) {
      minLength = value.length >= 8;

      // Check if valid special characters are present
      hasSpecialCharacters = value.contains(regExp);
      while (i < value.length) {
        character = value.substring(i, i + 1);
        //print(character);

        if (isDigit(character, 0)) {
          hasDigits = true;
        } else {
          if (!character.contains(regExp) &&
              character == character.toUpperCase()) {
            hasUppercase = true;
          }
        }
        i++;
      }
    }
    isValid = hasDigits & hasUppercase & minLength & hasSpecialCharacters;
    return isValid;
  }

  static bool isDigit(String s, int idx) =>
      "0".compareTo(s[idx]) <= 0 && "9".compareTo(s[idx]) >= 0;
}
