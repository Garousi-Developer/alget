// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return CategoryResponse(
    entity: json['entity'] == null
        ? null
        : Entity.fromJson(json['entity'] as Map<String, dynamic>),
  );
}

Entity _$EntityFromJson(Map<String, dynamic> json) {
  return Entity(
    categories: (json['categories'] as List)
        ?.map((e) =>
            e == null ? null : Category.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}
