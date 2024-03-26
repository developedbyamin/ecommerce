
class EValidator{
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is required';
    }

    final emailRegExp = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required.';
    }
    if(value.length<6){
      return 'Password must be at least 6 character long.';
    }

    if(!value.contains(RegExp(r'[A-Z]'))){
      return 'Password must contain at least one uppercase character';
    }
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain at least one number.';
    }
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contain at least one special character.';
    }
    return null;
  }


  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone number is required';
    }

    final phoneRegExp = RegExp(r'^\d{9}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid phone number format (9 digit required)';
    }

    return null;
  }

}