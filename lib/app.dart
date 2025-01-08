import 'package:credivis_mobile/app_bloc_provider.dart';
import 'package:credivis_mobile/features/theme/blocs/theme_bloc.dart';
import 'package:flutter/material.dart'
    show
        BuildContext,
        MaterialApp,
        StatelessWidget,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, MultiBlocProvider;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: appBlocProvider,
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      );
}
