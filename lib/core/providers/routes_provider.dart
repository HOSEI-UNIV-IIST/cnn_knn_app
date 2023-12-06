import 'package:get/get.dart';
import '../../features/home/presentation/pages/pages.dart';

class RoutesProvider {
  static const String start = '/';
  static const String homePage = '/home';

  static List<GetPage<dynamic>> routes = [
  
    GetPage(
      name: homePage,
      page: () => const HomePage(),
      transition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
