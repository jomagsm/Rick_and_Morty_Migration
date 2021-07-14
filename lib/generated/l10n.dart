// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Найти локацию`
  String get appBarHintTextFindLocation {
    return Intl.message(
      'Найти локацию',
      name: 'appBarHintTextFindLocation',
      desc: '',
      args: [],
    );
  }

  /// `Найти персонажа`
  String get appBarHintText {
    return Intl.message(
      'Найти персонажа',
      name: 'appBarHintText',
      desc: '',
      args: [],
    );
  }

  /// `Найти эпизод`
  String get addBarHintTextFindEpisod {
    return Intl.message(
      'Найти эпизод',
      name: 'addBarHintTextFindEpisod',
      desc: '',
      args: [],
    );
  }

  /// `Сезон`
  String get season {
    return Intl.message(
      'Сезон',
      name: 'season',
      desc: '',
      args: [],
    );
  }

  /// `Всего персонажей:`
  String get totalCharacters {
    return Intl.message(
      'Всего персонажей:',
      name: 'totalCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Всего локаций:`
  String get totalLocations {
    return Intl.message(
      'Всего локаций:',
      name: 'totalLocations',
      desc: '',
      args: [],
    );
  }

  /// `Человек`
  String get human {
    return Intl.message(
      'Человек',
      name: 'human',
      desc: '',
      args: [],
    );
  }

  /// `Пол`
  String get gender {
    return Intl.message(
      'Пол',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Персонажи`
  String get textAppearanceCaptionCharacters {
    return Intl.message(
      'Персонажи',
      name: 'textAppearanceCaptionCharacters',
      desc: '',
      args: [],
    );
  }

  /// `Локации`
  String get textAppearanceCaptionLocation {
    return Intl.message(
      'Локации',
      name: 'textAppearanceCaptionLocation',
      desc: '',
      args: [],
    );
  }

  /// `Эпизоды`
  String get textAppearanceCaptionEpisode {
    return Intl.message(
      'Эпизоды',
      name: 'textAppearanceCaptionEpisode',
      desc: '',
      args: [],
    );
  }

  /// `Все эпизоды`
  String get textAppearanceCaptionEpisodeAll {
    return Intl.message(
      'Все эпизоды',
      name: 'textAppearanceCaptionEpisodeAll',
      desc: '',
      args: [],
    );
  }

  /// `Настройки`
  String get settings {
    return Intl.message(
      'Настройки',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Расса`
  String get race {
    return Intl.message(
      'Расса',
      name: 'race',
      desc: '',
      args: [],
    );
  }

  /// `Место рождения`
  String get place {
    return Intl.message(
      'Место рождения',
      name: 'place',
      desc: '',
      args: [],
    );
  }

  /// `Местоположение`
  String get location {
    return Intl.message(
      'Местоположение',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Серия`
  String get seria {
    return Intl.message(
      'Серия',
      name: 'seria',
      desc: '',
      args: [],
    );
  }

  /// `Внешний вид`
  String get apperance {
    return Intl.message(
      'Внешний вид',
      name: 'apperance',
      desc: '',
      args: [],
    );
  }

  /// `О приложении`
  String get aboutTheApp {
    return Intl.message(
      'О приложении',
      name: 'aboutTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Версия приложения`
  String get versionApp {
    return Intl.message(
      'Версия приложения',
      name: 'versionApp',
      desc: '',
      args: [],
    );
  }

  /// `Выключенна`
  String get off {
    return Intl.message(
      'Выключенна',
      name: 'off',
      desc: '',
      args: [],
    );
  }

  /// `Включенна`
  String get on {
    return Intl.message(
      'Включенна',
      name: 'on',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Следовать настройкам системы`
  String get settingsSystem {
    return Intl.message(
      'Следовать настройкам системы',
      name: 'settingsSystem',
      desc: '',
      args: [],
    );
  }

  /// `В режиме энергосбережения`
  String get powerSavingMode {
    return Intl.message(
      'В режиме энергосбережения',
      name: 'powerSavingMode',
      desc: '',
      args: [],
    );
  }

  /// `Премьера`
  String get premiere {
    return Intl.message(
      'Премьера',
      name: 'premiere',
      desc: '',
      args: [],
    );
  }

  /// `Живой`
  String get alive {
    return Intl.message(
      'Живой',
      name: 'alive',
      desc: '',
      args: [],
    );
  }

  /// `Мертвый`
  String get dead {
    return Intl.message(
      'Мертвый',
      name: 'dead',
      desc: '',
      args: [],
    );
  }

  /// `Повторить`
  String get repeat {
    return Intl.message(
      'Повторить',
      name: 'repeat',
      desc: '',
      args: [],
    );
  }

  /// `Неизвестно`
  String get unknow {
    return Intl.message(
      'Неизвестно',
      name: 'unknow',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
