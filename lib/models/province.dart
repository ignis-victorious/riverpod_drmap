
import 'package:freezed_annotation/freezed_annotation.dart';
part 'province.freezed.dart';
part 'province.g.dart';

@freezed
class Province with _$Province {
  const factory Province({
    required String name,
    required String code,
    required String identifier,
    required String regionCode,
  }) = _Province;

  factory Province.fromJson(Map<String, dynamic> json) => _$ProvinceFromJson(json);
}