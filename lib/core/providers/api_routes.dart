class ApiRoutes {
  static const String baseUrl = "http://127.0.0.1:8000/api/";
  // static const String baseUrl = "https://ekkou-api.anohou.dev/api/";

  /// AUTHENTIFICATION
  static const String getUserProfile = "member-bind-association";

  /// ASSOCIATIONS
  static const String association = "association/";

  /// FIL D'ACTUALITÉ
  static const String postNews = "member-get-news-feed";

  /// RECUPERATION DES INFORMATIONS
  static const String loadInformations = "load-informations";

  /// MESSAGES
  static const String message = "message/";
  static const String getComments = "get-comments/";
  static const String postComment = "post-comment/";

  /// MEETINGS
  static const String reunion = "reunion/";
  static const String getMeeting = "get-meeting/";
  static const String getMeetingList = "get-meeting-list/";

  /// CONTRIBUTIONS
  static const String getContributionList = "member-get-contribution-list";
  static const String postPaiement = "member-pay-contribution/";
}
