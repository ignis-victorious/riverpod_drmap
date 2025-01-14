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
String _$appLocalizationsHash() => r'65fa9cd8245df50acb187af05979e291b3321feb';

/// See also [appLocalizations].
@ProviderFor(appLocalizations)
final appLocalizationsProvider = AutoDisposeProvider<AppLocalizations>.internal(
  appLocalizations,
  name: r'appLocalizationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appLocalizationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AppLocalizationsRef = AutoDisposeProviderRef<AppLocalizations>;
String _$localizedMapAssetsHash() =>
    r'9a7596113661a0dbc1481ac235c2247c6fe4e0b6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [localizedMapAssets].
@ProviderFor(localizedMapAssets)
const localizedMapAssetsProvider = LocalizedMapAssetsFamily();

/// See also [localizedMapAssets].
class LocalizedMapAssetsFamily extends Family<String> {
  /// See also [localizedMapAssets].
  const LocalizedMapAssetsFamily();

  /// See also [localizedMapAssets].
  LocalizedMapAssetsProvider call(
    MapAssets asset,
  ) {
    return LocalizedMapAssetsProvider(
      asset,
    );
  }

  @override
  LocalizedMapAssetsProvider getProviderOverride(
    covariant LocalizedMapAssetsProvider provider,
  ) {
    return call(
      provider.asset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'localizedMapAssetsProvider';
}

/// See also [localizedMapAssets].
class LocalizedMapAssetsProvider extends AutoDisposeProvider<String> {
  /// See also [localizedMapAssets].
  LocalizedMapAssetsProvider(
    MapAssets asset,
  ) : this._internal(
          (ref) => localizedMapAssets(
            ref as LocalizedMapAssetsRef,
            asset,
          ),
          from: localizedMapAssetsProvider,
          name: r'localizedMapAssetsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localizedMapAssetsHash,
          dependencies: LocalizedMapAssetsFamily._dependencies,
          allTransitiveDependencies:
              LocalizedMapAssetsFamily._allTransitiveDependencies,
          asset: asset,
        );

  LocalizedMapAssetsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.asset,
  }) : super.internal();

  final MapAssets asset;

  @override
  Override overrideWith(
    String Function(LocalizedMapAssetsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocalizedMapAssetsProvider._internal(
        (ref) => create(ref as LocalizedMapAssetsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        asset: asset,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _LocalizedMapAssetsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalizedMapAssetsProvider && other.asset == asset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, asset.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LocalizedMapAssetsRef on AutoDisposeProviderRef<String> {
  /// The parameter `asset` of this provider.
  MapAssets get asset;
}

class _LocalizedMapAssetsProviderElement
    extends AutoDisposeProviderElement<String> with LocalizedMapAssetsRef {
  _LocalizedMapAssetsProviderElement(super.provider);

  @override
  MapAssets get asset => (origin as LocalizedMapAssetsProvider).asset;
}

String _$localizedMapRegionsHash() =>
    r'4bf3f7b7194fc23c7c1c61033b4716a5d94a4679';

/// See also [localizedMapRegions].
@ProviderFor(localizedMapRegions)
const localizedMapRegionsProvider = LocalizedMapRegionsFamily();

/// See also [localizedMapRegions].
class LocalizedMapRegionsFamily extends Family<String> {
  /// See also [localizedMapRegions].
  const LocalizedMapRegionsFamily();

  /// See also [localizedMapRegions].
  LocalizedMapRegionsProvider call(
    MapRegions region,
  ) {
    return LocalizedMapRegionsProvider(
      region,
    );
  }

  @override
  LocalizedMapRegionsProvider getProviderOverride(
    covariant LocalizedMapRegionsProvider provider,
  ) {
    return call(
      provider.region,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'localizedMapRegionsProvider';
}

/// See also [localizedMapRegions].
class LocalizedMapRegionsProvider extends AutoDisposeProvider<String> {
  /// See also [localizedMapRegions].
  LocalizedMapRegionsProvider(
    MapRegions region,
  ) : this._internal(
          (ref) => localizedMapRegions(
            ref as LocalizedMapRegionsRef,
            region,
          ),
          from: localizedMapRegionsProvider,
          name: r'localizedMapRegionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$localizedMapRegionsHash,
          dependencies: LocalizedMapRegionsFamily._dependencies,
          allTransitiveDependencies:
              LocalizedMapRegionsFamily._allTransitiveDependencies,
          region: region,
        );

  LocalizedMapRegionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.region,
  }) : super.internal();

  final MapRegions region;

  @override
  Override overrideWith(
    String Function(LocalizedMapRegionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LocalizedMapRegionsProvider._internal(
        (ref) => create(ref as LocalizedMapRegionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        region: region,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _LocalizedMapRegionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LocalizedMapRegionsProvider && other.region == region;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, region.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LocalizedMapRegionsRef on AutoDisposeProviderRef<String> {
  /// The parameter `region` of this provider.
  MapRegions get region;
}

class _LocalizedMapRegionsProviderElement
    extends AutoDisposeProviderElement<String> with LocalizedMapRegionsRef {
  _LocalizedMapRegionsProviderElement(super.provider);

  @override
  MapRegions get region => (origin as LocalizedMapRegionsProvider).region;
}

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
String _$appLocaleHash() => r'3783f3fbe6d633750b6f3608328df88c001b7bac';

/// See also [AppLocale].
@ProviderFor(AppLocale)
final appLocaleProvider =
    AutoDisposeNotifierProvider<AppLocale, Locale>.internal(
  AppLocale.new,
  name: r'appLocaleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appLocaleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppLocale = AutoDisposeNotifier<Locale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
