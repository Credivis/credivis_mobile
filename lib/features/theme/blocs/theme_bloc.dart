import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(isDark: false)) {
    on<SetInitialTheme>(_onSetInitialTheme);
    on<ChangeLightTheme>(_onChangeLightTheme);
    on<ChangeDarkTheme>(_onChangeDarkTheme);
  }

  void _onSetInitialTheme(SetInitialTheme event, Emitter<ThemeState> emit) {
    emit(state);
  }

  void _onChangeLightTheme(ChangeLightTheme event, Emitter<ThemeState> emit) {
    emit(ThemeState(isDark: false));
  }

  void _onChangeDarkTheme(ChangeDarkTheme event, Emitter<ThemeState> emit) {
    emit(ThemeState(isDark: true));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return state.toJson();
  }
}
