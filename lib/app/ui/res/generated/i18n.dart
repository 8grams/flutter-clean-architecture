// DO NOT EDIT. This is code generated via package:gen_lang/generate.dart

import 'dart:async';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'messages_all.dart';

class S {
 
  static const GeneratedLocalizationsDelegate delegate = GeneratedLocalizationsDelegate();

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }
  
  static Future<S> load(Locale locale) {
    final String name = locale.countryCode == null ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new S();
    });
  }
  
  String get app_name {
    return Intl.message("Refactory Flutter Test", name: 'app_name');
  }

  String get label_btn_to_users {
    return Intl.message("Go to users", name: 'label_btn_to_users');
  }


}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<S> {
  const GeneratedLocalizationsDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
			Locale("en", ""),

    ];
  }

  LocaleListResolutionCallback listResolution({Locale fallback}) {
    return (List<Locale> locales, Iterable<Locale> supported) {
      if (locales == null || locales.isEmpty) {
        return fallback ?? supported.first;
      } else {
        return _resolve(locales.first, fallback, supported);
      }
    };
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      return _resolve(locale, fallback, supported);
    };
  }

  Locale _resolve(Locale locale, Locale fallback, Iterable<Locale> supported) {
    if (locale == null || !isSupported(locale)) {
      return fallback ?? supported.first;
    }

    final Locale languageLocale = Locale(locale.languageCode, "");
    if (supported.contains(locale)) {
      return locale;
    } else if (supported.contains(languageLocale)) {
      return languageLocale;
    } else {
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    }
  }

  @override
  Future<S> load(Locale locale) {
    return S.load(locale);
  }

  @override
  bool isSupported(Locale locale) =>
    locale != null && supportedLocales.contains(locale);

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => false;
}

// ignore_for_file: unnecessary_brace_in_string_interps
