class AppRegex {
  /// Voici une explication
  /// r'^
  ///  (?=.*[A-Z])       // devrait contenir au moins un majuscule
  ///  (?=.*[a-z])       // devrait contenir au moins une minuscule
  ///  (?=.*?[0-9])      // devrait contenir au moins un chiffre
  ///  (?=.*?[!@#\$&*~]) // devrait contenir au moins un personnage spécial
  ///  .{8,}             // doit contenir au moins 6 caractères
  /// $
  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Veuillez entrer votre nom & prénom';
    } else {
      if (value.length < 6) {
        return 'Saisir votre nom & prénom';
      } else {
        return null;
      }
    }
  }

  String? validateEmailAddress(String value) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regex.hasMatch(value)) {
      return 'email invalide';
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$');
    if (value.isEmpty) {
      return 'Veuillez entrer le mot de passe';
    } else {
      if (value.length < 6) {
        return 'Au moins 6 caractères';
      } else if (!regex.hasMatch(value)) {
        return 'Sasir majuscules, minuscules, chiffres';
      } else {
        return null;
      }
    }
  }

  String? validatePasswordConfirm(
      {required String password, required String passwordConfirm}) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$');
    if (password.isEmpty) {
      return 'Veuillez entrer le mot de passe';
    } else {
      if (password.length < 6) {
        return 'Au moins 6 caractères';
      } else if (!regex.hasMatch(password)) {
        return 'Sasir majuscules, minuscules, chiffres';
      } else if (password.toString() != passwordConfirm) {
        return 'Mots de passe ne correspondent pas';
      } else {
        return null;
      }
    }
  }

  String? validatePhone(
      {required String password, required String passwordConfirm}) {
    RegExp regex = RegExp(r'^(?=.*?[0-9]).{6,}$');
    if (password.isEmpty) {
      return 'Veuillez entrer le mot de passe';
    } else {
      if (password.length < 6) {
        return 'Au moins 6 caractères';
      } else if (!regex.hasMatch(password)) {
        return 'Sasir majuscules, minuscules, chiffres';
      } else if (password.toString() != passwordConfirm) {
        return 'Mots de passe ne correspondent pas';
      } else {
        return null;
      }
    }
  }

  // ignore: non_constant_identifier_names
  String? DefaultPassword(String value) {
    if (value.isEmpty) {
      return 'Veuillez entrer le mot de passe';
    } else {
      if (value != '00000') {
        return 'Entrer le mot de passe par défaut';
      } else {
        return null;
      }
    }
  }

  String? validateMatricule(String value) {
    if (value.isEmpty) {
      return 'Veuillez saisir  votre matricule';
    } else {
      if (value.length < 6) {
        return 'Au moins 6 caractères';
      } else {
        return null;
      }
    }
  }

  String? validateAssoCode(String value) {
    if (value.isEmpty) {
      return 'Veuillez saisir le code de votre association';
    } else {
      if (value.length < 6) {
        return 'Au moins 6 caractères';
      } else {
        return null;
      }
    }
  }
}
