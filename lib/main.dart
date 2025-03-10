//   _________________________
//  Import LIBRARIES
import 'package:dr_map/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//  Import FILES
import 'package:dr_map/pages/dr_map.dart';
import 'package:intl/intl.dart';
import 'providers/map_providers.dart';
// import 'package:dr_map/styles/themes.dart';
//  PARTS
//  PROVIDERS
//   _________________________

//  Portal de la República Dominicana - API's
// https://developer.digital.gob.do/apis/34995f58-a45f-4b9e-995f-58a45f2b9e92
// https://api.digital.gob.do/v1/territories/regions
// https://api.digital.gob.do/v1/territories/provinces
// Docs: https://api.digital.gob.do/v1/territories/provinces

//  Multi-Language Localization in Flutter  --   https://medium.com/@maliaishu1794/multi-language-localization-in-flutter-fe3b46e9c0a9

void main() {
  runApp(ProviderScope(overrides: [
    fetchProvincesProvider.overrideWith((ref) => mockedProvinces(ref))
  ], child: DRMainApp()));
}

class DRMainApp extends ConsumerStatefulWidget {
  const DRMainApp({Key? key}) : super(key: key);

  @override
  _DRMainAppState createState() => _DRMainAppState();
}

class _DRMainAppState extends ConsumerState<DRMainApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      updateAppTheme();
    });
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp){ref.read(fetchProvincesProvider.notifier).fetchProvinces});
  }

  void updateAppTheme() {
    var brightness = View.of(context).platformDispatcher.platformBrightness;
    ref.read(appThemeProvider.notifier).update(
        brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  void didChangePlatformBrightness() {
    updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = ref.watch(appThemeProvider);
    final selectedLocale = ref.watch(appLocaleProvider);

    return MaterialApp(
      title: 'Dominic Republic Website - Map Application',
      debugShowCheckedModeBanner: false,
      locale: selectedLocale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        ...AppLocalizations.localizationsDelegates,
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        Intl.defaultLocale = selectedLocale.toLanguageTag();
        return selectedLocale;
      },
      supportedLocales: AppLocalizations.supportedLocales,

      themeMode: appTheme,
      // themeMode: ThemeMode.dark,
      theme: MapAppTheme.lightTheme,
      darkTheme: MapAppTheme.darkTheme,
      // theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),),
      home: const DRMapApp(),
    );
  }
}




//   _________________________
//  Import LIBRARIES 
//  Import FILES
//  PARTS
//  PROVIDERS    
//   _________________________




