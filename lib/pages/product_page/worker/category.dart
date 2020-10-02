import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category.g.dart';

@JsonSerializable(createToJson: false)
class CategoryResponse {
    CategoryResponse({
        @required this.entity,
    });

    final Entity entity;

    factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);
}

@JsonSerializable(createToJson: false)
class Entity {
    Entity({
        @required this.categories,
    });

    final List<Category> categories;

    factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);
}

@JsonSerializable(createToJson: false)
class Category {
    Category({
        @required this.id,
        @required this.name,
    });

    final int id;
    final String name;

    factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}