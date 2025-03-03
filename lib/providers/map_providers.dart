//  ________________________
//  Import LIBRARIES
import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
import '../models/enums.dart';
import '../models/province.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations_es.dart';
//  PARTS
part 'map_providers.g.dart';
//  PROVIDERS

//   selectedMapAssetsProvider
@riverpod
class SelectedMapAssets extends _$SelectedMapAssets {
  @override
  List<MapAssets> build() {
    return [
      MapAssets.seas,
      MapAssets.coastalLine,
      MapAssets.rivers,
      MapAssets.lakes,
      MapAssets.borders,
      MapAssets.names,
    ];
  }

  void update(List<MapAssets> selectedMapAssets) {
    state = [...selectedMapAssets];
  }
}

@riverpod
class SelectedProvinces extends _$SelectedProvinces {
  @override
  List<Province> build() {
    return [];
  }

  void update(List<Province> selectedProvinces) {
    state = [...selectedProvinces];
  }
}

// //   fetchProvincesProvider
// @riverpod
// Future<bool> fetchProvinces(Ref ref) async {
//   try {
//     String allProvinces = '';
//     final allProvincesResponse = await http
//         .get(Uri.parse('https://api.digital.gob.do/v1/territories/provinces'));
//     if (allProvincesResponse.statusCode == 200) {
//       allProvinces = allProvincesResponse.body;
//     }

//     final mappedData = ((json.decode(allProvinces)
//             as Map<String, dynamic>)['data'] as List<dynamic>)
//         .map((e) => Province.fromJson(e))
//         .toList();

//     ref.read(provincesListProvider.notifier).updateProvinces(mappedData);
//     return true;
//   } catch (e) {
//     return Future.error('issue with the data');
//   }
// }

@riverpod
List<Province> mockedProvinces(Ref ref) {
// Future<bool> mockedProvinces(Ref ref) async {
  final allProvincesAsString = '''
  [
    {
      "name": "Distrito Nacional",
      "code": "01",
      "identifier": "1001",
      "regionCode": "10"
    },
    {
      "name": "Azua",
      "code": "02",
      "identifier": "0502",
      "regionCode": "05"
    },
    {
      "name": "Baoruco",
      "code": "03",
      "identifier": "0603",
      "regionCode": "06"
    },
    {
      "name": "Barahona",
      "code": "04",
      "identifier": "0604",
      "regionCode": "06"
    },
    {
      "name": "Dajabón",
      "code": "05",
      "identifier": "0405",
      "regionCode": "04"
    },
    {
      "name": "Duarte",
      "code": "06",
      "identifier": "0306",
      "regionCode": "03"
    },
    {
      "name": "Elías Piña",
      "code": "07",
      "identifier": "0707",
      "regionCode": "07"
    },
    {
      "name": "El Seibo",
      "code": "08",
      "identifier": "0808",
      "regionCode": "08"
    },
    {
      "name": "Espaillat",
      "code": "09",
      "identifier": "0109",
      "regionCode": "01"
    },
    {
      "name": "Independencia",
      "code": "10",
      "identifier": "0610",
      "regionCode": "06"
    },
    {
      "name": "La Altagracia",
      "code": "11",
      "identifier": "0811",
      "regionCode": "08"
    },
    {
      "name": "La Romana",
      "code": "12",
      "identifier": "0812",
      "regionCode": "08"
    },
    {
      "name": "La Vega",
      "code": "13",
      "identifier": "0213",
      "regionCode": "02"
    },
    {
      "name": "María Trinidad Sánchez",
      "code": "14",
      "identifier": "0314",
      "regionCode": "03"
    },
    {
      "name": "Monte Cristi",
      "code": "15",
      "identifier": "0415",
      "regionCode": "04"
    },
    {
      "name": "Pedernales",
      "code": "16",
      "identifier": "0616",
      "regionCode": "06"
    },
    {
      "name": "Peravia",
      "code": "17",
      "identifier": "0517",
      "regionCode": "05"
    },
    {
      "name": "Puerto Plata",
      "code": "18",
      "identifier": "0118",
      "regionCode": "01"
    },
    {
      "name": "Hermanas Mirabal",
      "code": "19",
      "identifier": "0319",
      "regionCode": "03"
    },
    {
      "name": "Samaná",
      "code": "20",
      "identifier": "0320",
      "regionCode": "03"
    },
    {
      "name": "San Cristóbal",
      "code": "21",
      "identifier": "0521",
      "regionCode": "05"
    },
    {
      "name": "San Juan",
      "code": "22",
      "identifier": "0722",
      "regionCode": "07"
    },
    {
      "name": "San Pedro de Macorís",
      "code": "23",
      "identifier": "0923",
      "regionCode": "09"
    },
    {
      "name": "Sanchez Ramírez",
      "code": "24",
      "identifier": "0224",
      "regionCode": "02"
    },
    {
      "name": "Santiago",
      "code": "25",
      "identifier": "0125",
      "regionCode": "01"
    },
    {
      "name": "Santiago Rodríguez",
      "code": "26",
      "identifier": "0426",
      "regionCode": "04"
    },
    {
      "name": "Valverde",
      "code": "27",
      "identifier": "0427",
      "regionCode": "04"
    },
    {
      "name": "Monseñor Nouel",
      "code": "28",
      "identifier": "0228",
      "regionCode": "02"
    },
    {
      "name": "Monte Plata",
      "code": "29",
      "identifier": "0929",
      "regionCode": "09"
    },
    {
      "name": "Hato Mayor",
      "code": "30",
      "identifier": "0930",
      "regionCode": "09"
    },
    {
      "name": "San José de Ocoa",
      "code": "31",
      "identifier": "0531",
      "regionCode": "05"
    },
    {
      "name": "Santo Domingo",
      "code": "32",
      "identifier": "1032",
      "regionCode": "10"
    }
  ]''';

  // final mappedData = (json.decode(allProvincesAsString) as List<dynamic>)
  //     .map((e) => Province.fromJson(e))
  //     .toList();

  // await Future.delayed(const Duration(seconds: 3));

  // ref.read(provincesListProvider.notifier).updateProvinces(mappedData);

  // return Future.value(true);

  return (json.decode(allProvincesAsString) as List<dynamic>)
      .map(
        (e) => Province.fromJson(e),
      )
      .toList();
}

//  ProvincesListProvider
// @Riverpod(keepAlive: true)
@riverpod
class ProvincesList extends _$ProvincesList {
  @override
  List<Province> build() {
    return [];
  }

  void updateProvinces(List<Province> provinces) {
    state = [...provinces];
  }
}

@riverpod
class SelectedRegion extends _$SelectedRegion {
  @override
  MapRegions build() => MapRegions.none;

  void update(MapRegions selectedRegion) {
    state = selectedRegion;
  }
}

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeMode build() => ThemeMode.system;

  void update(ThemeMode themeMode) {
    state = themeMode;
  }
}

class SupportLocales {
  static const en = Locale('en', 'en_US');
  static const es = Locale('es', 'ES');
}

@riverpod
class AppLocale extends _$AppLocale {
  @override
  Locale build() => SupportLocales.es;

  void update(Locale locale) {
    state = locale;
  }
}

// //  appLocalizationsProvider
// @riverpod
// AppLocalizations appLocalizations(Ref ref) {
//   AppLocalizations appLocalizations;

//   try {
//     appLocalizations = lookupAppLocalizations(ref.watch(appLocaleProvider));
//   } on FlutterError {
//     appLocalizations = AppLocalizationsEs();
//   }

//   return appLocalizations;
// }

// @riverpod
// String localizedMapAssets(Ref ref, MapAssets asset) {
//   final loc = ref.watch(appLocalizationsProvider);

//   return switch (asset) {
//     MapAssets.seas => loc.seasLabel,
//     MapAssets.coastalLine => loc.coastalLineLabel,
//     MapAssets.rivers => loc.riversLabel,
//     MapAssets.lakes => loc.lakesLabel,
//     MapAssets.borders => loc.bordersLabel,
//     MapAssets.names => loc.namesLabel,
//   };
// }

// @riverpod
// String localizedMapRegions(Ref ref, MapRegions region) {
//   final loc = ref.watch(appLocalizationsProvider);

//   return switch (region) {
//     MapRegions.none => loc.noneLabel,
//     MapRegions.north => loc.northLabel,
//     MapRegions.southEast => loc.southEastLabel,
//     MapRegions.southWest => loc.southWestLabel,
//   };
// }
