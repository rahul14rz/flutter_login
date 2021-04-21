class RegexControl {
  static String mailControl(String email) {
    String regex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(regex);
    if (email.length == 0) {
      return "Enter Email address";
    } else if (!regExp.hasMatch(email)) {
      return "Invalid Email address";
    } else {
      return null;
    }
  }

  static String passwordControl(String value) {
    if (value.isEmpty) {
      return "Please Enter the password";
    }
    return null;
  }
}
