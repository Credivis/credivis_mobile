part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class SetInitialTheme extends ThemeEvent {}

class ChangeDarkTheme extends ThemeEvent {}

class ChangeLightTheme extends ThemeEvent {}
