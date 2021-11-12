// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'order_direction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderDirection _$number0 = const OrderDirection._('number0');
const OrderDirection _$number1 = const OrderDirection._('number1');

OrderDirection _$valueOf(String name) {
  switch (name) {
    case 'number0':
      return _$number0;
    case 'number1':
      return _$number1;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OrderDirection> _$values =
    new BuiltSet<OrderDirection>(const <OrderDirection>[
  _$number0,
  _$number1,
]);

class _$OrderDirectionMeta {
  const _$OrderDirectionMeta();
  OrderDirection get number0 => _$number0;
  OrderDirection get number1 => _$number1;
  OrderDirection valueOf(String name) => _$valueOf(name);
  BuiltSet<OrderDirection> get values => _$values;
}

abstract class _$OrderDirectionMixin {
  // ignore: non_constant_identifier_names
  _$OrderDirectionMeta get OrderDirection => const _$OrderDirectionMeta();
}

Serializer<OrderDirection> _$orderDirectionSerializer =
    new _$OrderDirectionSerializer();

class _$OrderDirectionSerializer
    implements PrimitiveSerializer<OrderDirection> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDirection];
  @override
  final String wireName = 'OrderDirection';

  @override
  Object serialize(Serializers serializers, OrderDirection object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderDirection deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderDirection.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
