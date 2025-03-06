// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchProvincesHash() => r'9703c9bf769a5f8d350e3fdaf668489778717839';

/// See also [fetchProvinces].
@ProviderFor(fetchProvinces)
final fetchProvincesProvider = AutoDisposeFutureProvider<bool>.internal(
  fetchProvinces,
  name: r'fetchProvincesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchProvincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FetchProvincesRef = AutoDisposeFutureProviderRef<bool>;
String _$mockedProvincesHash() => r'f724673fcfdeb2a3d46d96817bbb4b7a2b5ee5a2';

/// See also [mockedProvinces].
@ProviderFor(mockedProvinces)
final mockedProvincesProvider = AutoDisposeFutureProvider<bool>.internal(
  mockedProvinces,
  name: r'mockedProvincesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mockedProvincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MockedProvincesRef = AutoDisposeFutureProviderRef<bool>;
String _$selectedMapAssetsHash() => r'ec52bac6d8da7ffe14c2ffa0933f4e8ea2767ab5';

/// See also [SelectedMapAssets].
@ProviderFor(SelectedMapAssets)
final selectedMapAssetsProvider =
    AutoDisposeNotifierProvider<SelectedMapAssets, List<MapAssets>>.internal(
  SelectedMapAssets.new,
  name: r'selectedMapAssetsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedMapAssetsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedMapAssets = AutoDisposeNotifier<List<MapAssets>>;
String _$selectedProvincesHash() => r'fe8ab6b781a9ff832e4dba0684f33386eeb0cf70';

/// See also [SelectedProvinces].
@ProviderFor(SelectedProvinces)
final selectedProvincesProvider =
    AutoDisposeNotifierProvider<SelectedProvinces, List<Province>>.internal(
  SelectedProvinces.new,
  name: r'selectedProvincesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedProvincesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedProvinces = AutoDisposeNotifier<List<Province>>;
String _$provincesListHash() => r'8a4950341edb115790142dd9bca3206f168cb772';

/// See also [ProvincesList].
@ProviderFor(ProvincesList)
final provincesListProvider =
    NotifierProvider<ProvincesList, List<Province>>.internal(
  ProvincesList.new,
  name: r'provincesListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$provincesListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProvincesList = Notifier<List<Province>>;
String _$selectedRegionHash() => r'42f343ed5e070fa193cc1cc7acb7510e1d34c333';

/// See also [SelectedRegion].
@ProviderFor(SelectedRegion)
final selectedRegionProvider =
    AutoDisposeNotifierProvider<SelectedRegion, MapRegions>.internal(
  SelectedRegion.new,
  name: r'selectedRegionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedRegionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedRegion = AutoDisposeNotifier<MapRegions>;
String _$appThemeHash() => r'ca1585e3cbef5172d578e91a1f92ef39928899e6';

/// See also [AppTheme].
@ProviderFor(AppTheme)
final appThemeProvider =
    AutoDisposeNotifierProvider<AppTheme, ThemeMode>.internal(
  AppTheme.new,
  name: r'appThemeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appThemeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppTheme = AutoDisposeNotifier<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
