//   _________________________
//  Import LIBRARIES
import 'package:dr_map/widgets/app_theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../providers/map_providers.dart';
import '../widgets/all_provinces_list.dart';
import '../widgets/app_lang_switch.dart';
import '../widgets/drmap.dart';
import '../widgets/map_assets_list.dart';
import '../widgets/map_regions_list.dart';
//  PARTS
//  PROVIDERS
//   _________________________

class DRMapApp extends StatelessWidget {
  const DRMapApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      // backgroundColor: Color(0xFFC6ECFF),
      backgroundColor: colorScheme.surfaceContainer,
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final fetchProvinces = ref.watch(fetchProvincesProvider);

            return fetchProvinces.when(
                data: (data) {
                  return Stack(
                    children: <Widget>[
                      Center(
                          child: InteractiveViewer(
                              clipBehavior: Clip.none, child: DRMap())),
                      Align(
                        alignment: Alignment.topLeft,
                        child: MapAssetsList(),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: AllProvincesList(),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: MapRegionsList(),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          spacing: 32,
                          children: <Widget>[
                            AppThemeSwitch(),
                            AppLangSwitch(),
                          ],
                        ),
                      )
                    ],
                  );
                },
                error: (e, s) => Column(
                      spacing: 8,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.warning),
                        Text(e.toString()),
                      ],
                    ),
                loading: () => CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
