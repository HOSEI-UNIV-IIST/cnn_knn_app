import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/blocs/home/home_bloc.dart';
import 'injection_container.dart' as inject_con;
import 'package:nested/nested.dart';

List<SingleChildWidget> get myProviders {
  return [
    BlocProvider(lazy: false, create: (context) => inject_con.sl<HomeBloc>())
  ];
}
