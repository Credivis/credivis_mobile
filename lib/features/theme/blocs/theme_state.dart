part of 'theme_bloc.dart';

class ThemeState {
  ThemeState({required this.isDark});

  factory ThemeState.fromJson(Map<String, dynamic> json) {
    return ThemeState(isDark: json['isDark'] as bool);
  }
  final bool isDark;

  Map<String, dynamic> toJson() => {'isDark': isDark};
}
