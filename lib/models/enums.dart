enum MapAssets {
  seas,
  coastalLine,
  rivers,
  lakes,
  borders,
  names,
}

enum MapRegions {
  none([]),
  north(['01', '02', '03', '04']),
  southEast(['05', '06', '07']),
  southWest(['08', '09', '10']);

  final List<String> provinces;
  const MapRegions(this.provinces);
} 