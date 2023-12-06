import '../utils/app_enums.dart' show ThemeModeStatus;

extension HomePageStatusExtensionTitle on ThemeModeStatus {
  static const themes = {
    ThemeModeStatus.light: "Ligth",
    ThemeModeStatus.dark: 'Dark',
    ThemeModeStatus.system: 'System',
  };
  String get theme => themes[this] ?? '';
}

class EnumsExtension {
  static String formatThemeModeStatusTitle(ThemeModeStatus status) {
    String title = '';
    switch (status) {
      case ThemeModeStatus.system:
        title = ThemeModeStatus.system.theme;
        break;
      case ThemeModeStatus.light:
        title = ThemeModeStatus.light.theme;
        break;
      case ThemeModeStatus.dark:
        title = ThemeModeStatus.dark.theme;
        break;
      default:
        title = ThemeModeStatus.system.theme;
    }
    return title;
  }

  static ThemeModeStatus formatThemeModeFromString(String value) {
    ThemeModeStatus theme = ThemeModeStatus.system;
    switch (value) {
      case 'system':
        theme = ThemeModeStatus.system;
        break;
      case 'light':
        theme = ThemeModeStatus.light;
        break;
      case 'dark':
        theme = ThemeModeStatus.dark;
        break;
      default:
        theme = ThemeModeStatus.system;
    }
    return theme;
  }

  static String formatThemeModeToString(ThemeModeStatus value) {
    String theme = '';
    switch (value) {
      case ThemeModeStatus.system:
        theme = 'system';
        break;
      case ThemeModeStatus.light:
        theme = 'light';
        break;
      case ThemeModeStatus.dark:
        theme = 'dark';
        break;
      default:
        theme = 'system';
    }
    return theme;
  }
}
