import 'package:flutter/foundation.dart';

import '../utils/app_enums.dart' show HomePageStatus;

extension HomePageStatusExtensionTitle on HomePageStatus {
  static const titles = {
    HomePageStatus.home: "Fil d'actualité",
    HomePageStatus.message: 'Messages',
    HomePageStatus.meeting: 'Réunions',
    HomePageStatus.information: 'Information',
    HomePageStatus.cotisation: 'Cotisations',
    HomePageStatus.profile: 'Profile',
    HomePageStatus.help: 'Aides',
    HomePageStatus.memberAssociation: 'Mes Associations',
    HomePageStatus.respoAssociation: 'Responsable Association',
  };
  String get title => titles[this] ?? '';
}

class EnumsExtension {
  static String formatHomePageStatusTitle(HomePageStatus status) {
    String title = '';
    switch (status) {
      case HomePageStatus.home:
        if (kDebugMode) {
          print(HomePageStatus.home.title);
        }
        title = HomePageStatus.home.title;
        break;
      case HomePageStatus.message:
        if (kDebugMode) {
          print(HomePageStatus.message.title);
        }
        title = HomePageStatus.message.title;
        break;
      case HomePageStatus.information:
        if (kDebugMode) {
          print(HomePageStatus.information.title);
        }
        title = HomePageStatus.information.title;
        break;
      case HomePageStatus.meeting:
        if (kDebugMode) {
          print(HomePageStatus.meeting.title);
        }
        title = HomePageStatus.meeting.title;
        break;
      case HomePageStatus.cotisation:
        if (kDebugMode) {
          print(HomePageStatus.cotisation.title);
        }
        title = HomePageStatus.cotisation.title;
        break;
      case HomePageStatus.profile:
        if (kDebugMode) {
          print(HomePageStatus.profile.title);
        }
        title = HomePageStatus.profile.title;
        break;
      case HomePageStatus.help:
        if (kDebugMode) {
          print(HomePageStatus.help.title);
        }
        title = HomePageStatus.help.title;
        break;
      case HomePageStatus.memberAssociation:
        if (kDebugMode) {
          print(HomePageStatus.memberAssociation.title);
        }
        title = HomePageStatus.memberAssociation.title;
        break;
      case HomePageStatus.respoAssociation:
        if (kDebugMode) {
          print(HomePageStatus.respoAssociation.title);
        }
        title = HomePageStatus.respoAssociation.title;
        break;
      default:
    }
    return title;
  }
}
