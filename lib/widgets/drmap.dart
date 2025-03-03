//   _________________________
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'package:dr_map/models/enums.dart';
import 'package:dr_map/providers/map_providers.dart';
//  PARTS
//  PROVIDERS
//   _________________________

class DRMap extends ConsumerWidget {
  const DRMap({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMapAssets = ref.watch(selectedMapAssetsProvider);
    final allProvinces = ref.watch(provincesListProvider);
    // final selectedProvinces = ref.watch(selectedProvincesProvider);
    // final selectedRegion = ref.watch(selectedRegionProvider);
    // final colorScheme = Theme.of(context).colorScheme;
    // final locProvider = ref.watch(appLocalizationsProvider);
    // final locale = ref.watch(appLocaleProvider);

    return Stack(
      children: [
        SvgPicture.asset('./assets/svgs/map_assets/baserd.svg'),
        SvgPicture.asset(
          './assets/svgs/provinces/islabeata.svg',
          // colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),
        SvgPicture.asset(
          './assets/svgs/provinces/islacatalina.svg',
          // colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),
        SvgPicture.asset(
          './assets/svgs/provinces/islasaona.svg',
          // colorFilter: ColorFilter.mode(colorScheme.onSurface, BlendMode.srcIn),
        ),

        // generate the list of provinces
        ...List.generate(allProvinces.length, (index) {
          final province = allProvinces[index];
          // var provinceColor = colorScheme.onSurface;

          // if (selectedProvinces.contains(province)) {provinceColor = Theme.of(context).brightness == Brightness.light ? Color.fromARGB(200, (index + 1) * 20, (index + 2) * 30, (index + 3) * 40): colorScheme.tertiaryContainer;}else if (selectedRegion.provinces.contains(province.regionCode)) {provinceColor = Colors.green;}

          return SvgPicture.asset(
            './assets/svgs/provinces/${province.code}.svg',
            colorFilter: ColorFilter.mode(
                index == 0 ? Colors.red : Colors.white, BlendMode.srcIn),
            // provinceColor, BlendMode.srcIn),
          );
        }),

        ...List.generate(selectedMapAssets.length, (index) {
          final asset = selectedMapAssets[index];
          final assetName = asset == MapAssets.seas || asset == MapAssets.names
              ? '${asset.name}_en'
              : asset.name;
          // final seaOrNames = asset == MapAssets.seas || asset == MapAssets.names;
          // final assetName = seaOrNames ? '${asset.name}_${locale.languageCode}' : asset.name;
          // final assetColor = seaOrNames ? ColorFilter.mode(colorScheme.surfaceTint, BlendMode.srcIn) : null;

          return SvgPicture.asset(
            './assets/svgs/map_assets/${assetName}.svg',
            // colorFilter: assetColor,
          );
        })
      ],
    );
  }
}
