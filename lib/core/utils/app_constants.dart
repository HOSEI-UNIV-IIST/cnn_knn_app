// ignore_for_file: constant_identifier_names

class AppConstants {
  static const String networkError =
      "Impossible de se connecter au serveur. Veuillez vérifier votre connexion Internet.";
  static const connectionTimeout = 15000;
  static const notificationTimeout = 10000;
static const throttleDuration = Duration(milliseconds: 100);

/// The line `static const miniPageIndex = 0;` is declaring a constant variable named `miniPageIndex`
/// with a value of 0. This variable is marked as `static`, which means it belongs to the class itself
/// rather than an instance of the class. It can be accessed using the class name, like
/// `AppConstants.miniPageIndex`.
static const miniPageIndex = 0;

  /// Cache keys
  static const String appLocalDb = "app_local_db";
  static const String authKey = "auth";
  static const String profileKey = "profile";
  static const String associationsKey = "associations";
  static const String messagesKey = "messages";
  static const String reunionsKey = "reunions";
  static const String cotisationsKey = "cotisations";
  static const String thememodeKey = "thememode";
  static const String meetingsKey = "meetings";
  static const String newsKey = "news";
  static const String contributionsKey = "contributions";
  static const String associationsInCacheKey = "associationsInCache";
}
