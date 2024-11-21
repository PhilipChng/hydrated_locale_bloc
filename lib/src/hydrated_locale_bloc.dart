// Flutter imports:
import 'package:flutter/material.dart' show Locale;

// Package imports:
import 'package:hydrated_bloc/hydrated_bloc.dart';

/// {@template hydrated_locale_bloc}
/// A hydrated bloc for Locale
/// {@endtemplate}
class HydratedLocaleBloc extends HydratedCubit<Locale> {
  /// {@macro hydrated_locale_bloc}
  HydratedLocaleBloc() : super(const Locale('en'));

  /// Changes the current locale.
  void change(Locale? value) => emit(value ?? state);

  @override
  Locale? fromJson(Map<String, dynamic> json) {
    final language = json['locale'] as String?;
    return language == null ? null : Locale(language);
  }

  @override
  Map<String, dynamic>? toJson(Locale state) {
    return <String, String>{'locale': state.languageCode};
  }
}
