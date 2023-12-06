// ignore_for_file: constant_identifier_names

class AppRequestsMessage {
  /// `200`
  static const String OK = "Requête effectuée avec succès";

  /// `201`
  static const String CREATED = "Enregistré avec succès";

  /// `202`
  static const String ACCEPTED = "Demande acceptée";

  /// `203`
  static const String NOT_AUTHORIZED =
      "Vous n'êtes pas autorisé à accéder à cette ressource";

  /// `400`
  static const String BAD_REQUEST =
      "Informations incorrectes. Veuillez vérifier les champs saisis";

  /// `401`
  static const String UNAUTHORIZED =
      "Votre session a expiré. Veuillez vous reconnecter.";

  /// `404`
  static const String NOT_FOUND =
      "Quelque chose s'est mal passé. Veuillez réessayer plus tard.";

  /// `498`
  static const String TOKEN_EXPIRED = "Token expiré ou invalide";

  /// `204`
  static const String NOT_CONTENT = "Au résultat associé à votre demande.";

  /// `5XX`
  static const String INTERNAL_SERVER_ERROR =
      "Erreur du serveur. Veuillez réessayer plus tard.";
}

class AppRequestsStatus {
  /// `200 --> Requête effectuée avec succès`
  static const int OK = 200;

  /// `201 --> Enregistré avec succès`
  static const int CREATED = 201;

  /// `202 --> Demande acceptée --> 202`
  static const int ACCEPTED = 202;

  /// `203 --> Vous n'êtes pas autorisé à accéder à cette ressource`
  static const int NOT_AUTHORIZED = 203;

  /// `400 --> Informations incorrectes. Veuillez vérifier les champs saisis`
  static const int BAD_REQUEST = 400;

  /// `401 --> Votre session a expiré. Veuillez vous reconnecter.`
  static const int UNAUTHORIZED = 401;

  /// `404 --> Quelque chose s'est mal passé. Veuillez réessayer plus tard.`
  static const int NOT_FOUND = 404;

  /// `498 --> Token expiré ou invalide.`
  static const int TOKEN_EXPIRED = 498;

  /// `204 --> Au résultat associé à votre demande.`
  static const int NOT_CONTENT = 204;

  /// `500 --> Erreur du serveur. Veuillez réessayer plus tard.`
  static const int INTERNAL_SERVER_ERROR = 500;
}
