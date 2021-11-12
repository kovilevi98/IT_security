//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_direction.g.dart';

class OrderDirection extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 0)
  static const OrderDirection number0 = _$number0;
  @BuiltValueEnumConst(wireNumber: 1)
  static const OrderDirection number1 = _$number1;

  static Serializer<OrderDirection> get serializer => _$orderDirectionSerializer;

  const OrderDirection._(String name): super(name);

  static BuiltSet<OrderDirection> get values => _$values;
  static OrderDirection valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OrderDirectionMixin = Object with _$OrderDirectionMixin;

