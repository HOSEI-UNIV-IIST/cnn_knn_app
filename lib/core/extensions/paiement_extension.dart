import 'package:flutter/material.dart';

import '../utils/app_enums.dart' show PaiementStatus;
import '../widgets/themes/app_colors.dart';

extension PaiementStatusExtensionTitle on PaiementStatus {
  static const paiements = {
    PaiementStatus.paid: "paid",
    PaiementStatus.unpaid: 'unpaid',
    PaiementStatus.halfpaid: 'halfpaid',
    PaiementStatus.inprogress: 'inprogress',
  };
  String get paiement => paiements[this] ?? '';
}

extension PaiementExtensionColor on PaiementStatus {
  static const colors = {
    PaiementStatus.paid: AppColor.kSecondaryColor,
    PaiementStatus.unpaid: AppColor.kDeepRed,
    PaiementStatus.halfpaid: AppColor.kOrange,
    PaiementStatus.inprogress: AppColor.kPurple,
  };
  Color get color => colors[this] ?? Colors.grey;
}

class EnumsExtension {
  static String formatPaiementStatusTitle(PaiementStatus status) {
    String title = '';
    switch (status) {
      case PaiementStatus.halfpaid:
        title = PaiementStatus.halfpaid.paiement;
        break;
      case PaiementStatus.paid:
        title = PaiementStatus.paid.paiement;
        break;
      case PaiementStatus.unpaid:
        title = PaiementStatus.unpaid.paiement;
        break;
      case PaiementStatus.inprogress:
        title = PaiementStatus.inprogress.paiement;
        break;
      default:
        title = PaiementStatus.halfpaid.paiement;
    }
    return title;
  }

  static PaiementStatus formatPaiementFromString(String value) {
    PaiementStatus theme = PaiementStatus.halfpaid;
    switch (value) {
      case 'halfpaid':
        theme = PaiementStatus.halfpaid;
        break;
      case 'paid':
        theme = PaiementStatus.paid;
        break;
      case 'unpaid':
        theme = PaiementStatus.unpaid;
        break;
      case 'inprogress':
        theme = PaiementStatus.inprogress;
        break;
      default:
        theme = PaiementStatus.halfpaid;
    }
    return theme;
  }

  static String formatPaiementToString(PaiementStatus value) {
    String theme = '';
    switch (value) {
      case PaiementStatus.halfpaid:
        theme = 'halfpaid';
        break;
      case PaiementStatus.paid:
        theme = 'paid';
        break;
      case PaiementStatus.unpaid:
        theme = 'unpaid';
        break;
      case PaiementStatus.inprogress:
        theme = 'inprogress';
        break;
      default:
        theme = 'halfpaid';
    }
    return theme;
  }

  static Color formatPaiementStatusColor(PaiementStatus status) {
    Color color = Colors.green;
    switch (status) {
      case PaiementStatus.halfpaid:
        color = PaiementStatus.halfpaid.color;
        break;
      case PaiementStatus.paid:
        color = PaiementStatus.paid.color;
        break;
      case PaiementStatus.unpaid:
        color = PaiementStatus.unpaid.color;
        break;
      case PaiementStatus.inprogress:
        color = PaiementStatus.inprogress.color;
        break;
      default:
    }
    return color;
  }
}
