//  ________________________
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/enums.dart';
import '../providers/map_providers.dart';
//  Import FILES
//  PARTS
//  PROVIDERS
//  ________________________

class MapAssetsList extends ConsumerWidget {
  const MapAssetsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    // final colorScheme = Theme.of(context).colorScheme;
    // final loc = ref.watch(appLocalizationsProvider);

    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      width: 300,
      height: 420,
      decoration: BoxDecoration(
        color: Colors.white, // colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text('show',
              style: textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              )),
          // Text(loc.showLabel,style: textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold,)),
          Expanded(
            child: Consumer(builder: (context, ref, child) {
              final selectedMapAssets = ref.watch(selectedMapAssetsProvider);

              return ListView.builder(
                itemCount: MapAssets.values.length,
                itemBuilder: (context, index) {
                  final mapAsset = MapAssets.values[index];
                  final assetValue = selectedMapAssets.contains(mapAsset);

                  return CheckboxListTile(
                      value: assetValue,
                      title: Text(mapAsset.name),
                      // title:Text(ref.watch(localizedMapAssetsProvider(mapAsset))),
                      onChanged: (value) {
                        if (value!) {
                          selectedMapAssets.add(mapAsset);
                        } else {
                          selectedMapAssets.remove(mapAsset);
                        }

                        ref
                            .read(selectedMapAssetsProvider.notifier)
                            .update(selectedMapAssets);
                      });
                },
              );
            }),
          )
        ],
      ),
    );
  }
}
