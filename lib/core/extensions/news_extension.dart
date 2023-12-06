// ignore_for_file: constant_identifier_names

import 'package:cnn_knn_app/core/widgets/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_enums.dart';

extension NewsExtensionTitle on NewsStatus {
  static const titles = {
    NewsStatus.information: "Information",
    NewsStatus.message: 'Message',
    NewsStatus.meeting: 'Réunion',
    NewsStatus.payment: 'Cotisation',
    NewsStatus.flashnews: 'Communiqué',
    NewsStatus.other: 'Autre',
  };
  String get title => titles[this] ?? '';
}

extension NewsExtensionColor on NewsStatus {
  static const colors = {
    NewsStatus.information: AppColor.kSecondaryColor,
    NewsStatus.message: AppColor.kPurple,
    NewsStatus.meeting: AppColor.kBlue,
    NewsStatus.payment: AppColor.kRed,
    NewsStatus.flashnews: AppColor.kOrange,
    NewsStatus.other: AppColor.kPrimaryColor,
  };
  Color get color => colors[this] ?? Colors.grey;
}

class NewsEnumsExtension {
  static String formatNewsStatusTitle(String status) {
    String title = '';
    switch (status) {
      case InfoStatus.INFORMATION:
        title = NewsStatus.information.title;
        break;
      case InfoStatus.MESSAGE:
        title = NewsStatus.message.title;
        break;
      case InfoStatus.MEETING:
        title = NewsStatus.meeting.title;
        break;
      case InfoStatus.PAYMENT:
        title = NewsStatus.payment.title;
        break;
      case InfoStatus.FLASHNEWS:
        title = NewsStatus.flashnews.title;
        break;
      case InfoStatus.OTHER:
        title = NewsStatus.other.title;
        break;
      default:
    }
    return title;
  }

  static Color formatNewsStatusColor(String status) {
    Color color = Colors.green;
    switch (status.toUpperCase()) {
      case InfoStatus.INFORMATION:
        color = NewsStatus.information.color;
        break;
      case InfoStatus.MESSAGE:
        color = NewsStatus.message.color;
        break;
      case InfoStatus.MEETING:
        color = NewsStatus.meeting.color;
        break;
      case InfoStatus.PAYMENT:
        color = NewsStatus.payment.color;
        break;
      case InfoStatus.FLASHNEWS:
        color = NewsStatus.flashnews.color;
        break;
      case InfoStatus.OTHER:
        color = NewsStatus.other.color;
        break;
      default:
    }
    return color;
  }
}

class InfoStatus {
  static const String INFORMATION = 'INFORMATION';
  static const String MESSAGE = 'MESSAGE';
  static const String MEETING = 'MEETING';
  static const String PAYMENT = 'PAYMENT';
  static const String FLASHNEWS = 'FLASHNEWS';
  static const String OTHER = 'OTHER';
}
