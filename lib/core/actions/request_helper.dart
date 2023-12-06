import '../utils/app_resquests.dart';

class RequestHelper {
  static String getResult({required int statusCode}) {
    String answer = AppRequestsMessage.NOT_FOUND;
    switch (statusCode) {
      case AppRequestsStatus.OK:
        answer = AppRequestsMessage.OK;
        break;
      case AppRequestsStatus.CREATED:
        answer = AppRequestsMessage.CREATED;
        break;
      case AppRequestsStatus.ACCEPTED:
        answer = AppRequestsMessage.ACCEPTED;
        break;
      case AppRequestsStatus.NOT_AUTHORIZED:
        answer = AppRequestsMessage.NOT_AUTHORIZED;
        break;
      case AppRequestsStatus.BAD_REQUEST:
        answer = AppRequestsMessage.BAD_REQUEST;
        break;
      case AppRequestsStatus.UNAUTHORIZED:
        answer = AppRequestsMessage.UNAUTHORIZED;
        break;
      case AppRequestsStatus.NOT_FOUND:
        answer = AppRequestsMessage.NOT_FOUND;
        break;
      case AppRequestsStatus.NOT_CONTENT:
        answer = AppRequestsMessage.NOT_CONTENT;
        break;
      case AppRequestsStatus.INTERNAL_SERVER_ERROR:
        answer = AppRequestsMessage.INTERNAL_SERVER_ERROR;
        break;
      default:
        answer = AppRequestsMessage.NOT_FOUND;
    }
    return answer;
  }
}
