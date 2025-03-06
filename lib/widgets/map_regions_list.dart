//   _________________________
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import 'package:dr_map/models/enums.dart';
import '../providers/map_providers.dart';
//  PARTS
//  PROVIDERS
//   _________________________

class MapRegionsList extends ConsumerWidget {
  const MapRegionsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final regions = MapRegions.values;
    final selectedRegion = ref.watch(selectedRegionProvider);
    final colorScheme = Theme.of(context).colorScheme;
    // final loc = ref.watch(appLocalizationsProvider);

    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.sizeOf(context).width / 2,
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        // color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        spacing: 16,
        children: [
          Text(
            'Regions: ',
            style:
                textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
//           Text(loc.regionsLabel, style: textTheme.headlineSmall!.copyWith(
//             fontWeight: FontWeight.bold,
//           )),

          ...List.generate(regions.length, (index) {
            final region = regions[index];

            return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 180),
              child: RadioListTile<MapRegions>(
                  value: region,
                  title: Text(region.name),
                  // title: Text(ref.watch(localizedMapRegionsProvider(region))),
                  groupValue: selectedRegion,
                  onChanged: (value) {
                    ref.read(selectedRegionProvider.notifier).update(value!);
                  }),
            );
          })
        ],
      ),
    );
  }
}
