// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetRestaurantDatasCollection on Isar {
  IsarCollection<RestaurantDatas> get restaurantDatas => this.collection();
}

const RestaurantDatasSchema = CollectionSchema(
  name: r'RestaurantDatas',
  id: -4256365969344083101,
  properties: {
    r'cuisine': PropertySchema(
      id: 0,
      name: r'cuisine',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'likeCount': PropertySchema(
      id: 2,
      name: r'likeCount',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'phone': PropertySchema(
      id: 4,
      name: r'phone',
      type: IsarType.string,
    ),
    r'priceRange': PropertySchema(
      id: 5,
      name: r'priceRange',
      type: IsarType.string,
    ),
    r'rate': PropertySchema(
      id: 6,
      name: r'rate',
      type: IsarType.long,
    ),
    r'restaurantImage': PropertySchema(
      id: 7,
      name: r'restaurantImage',
      type: IsarType.string,
    ),
    r'sId': PropertySchema(
      id: 8,
      name: r'sId',
      type: IsarType.string,
    ),
    r'website': PropertySchema(
      id: 9,
      name: r'website',
      type: IsarType.string,
    )
  },
  estimateSize: _restaurantDatasEstimateSize,
  serialize: _restaurantDatasSerialize,
  deserialize: _restaurantDatasDeserialize,
  deserializeProp: _restaurantDatasDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _restaurantDatasGetId,
  getLinks: _restaurantDatasGetLinks,
  attach: _restaurantDatasAttach,
  version: '3.0.5',
);

int _restaurantDatasEstimateSize(
  RestaurantDatas object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cuisine;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.priceRange;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.restaurantImage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.sId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.website;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _restaurantDatasSerialize(
  RestaurantDatas object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cuisine);
  writer.writeString(offsets[1], object.description);
  writer.writeLong(offsets[2], object.likeCount);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.phone);
  writer.writeString(offsets[5], object.priceRange);
  writer.writeLong(offsets[6], object.rate);
  writer.writeString(offsets[7], object.restaurantImage);
  writer.writeString(offsets[8], object.sId);
  writer.writeString(offsets[9], object.website);
}

RestaurantDatas _restaurantDatasDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = RestaurantDatas();
  object.cuisine = reader.readStringOrNull(offsets[0]);
  object.description = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.likeCount = reader.readLongOrNull(offsets[2]);
  object.name = reader.readStringOrNull(offsets[3]);
  object.phone = reader.readStringOrNull(offsets[4]);
  object.priceRange = reader.readStringOrNull(offsets[5]);
  object.rate = reader.readLongOrNull(offsets[6]);
  object.restaurantImage = reader.readStringOrNull(offsets[7]);
  object.sId = reader.readStringOrNull(offsets[8]);
  object.website = reader.readStringOrNull(offsets[9]);
  return object;
}

P _restaurantDatasDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _restaurantDatasGetId(RestaurantDatas object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _restaurantDatasGetLinks(RestaurantDatas object) {
  return [];
}

void _restaurantDatasAttach(
    IsarCollection<dynamic> col, Id id, RestaurantDatas object) {
  object.id = id;
}

extension RestaurantDatasQueryWhereSort
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QWhere> {
  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RestaurantDatasQueryWhere
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QWhereClause> {
  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RestaurantDatasQueryFilter
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QFilterCondition> {
  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cuisine',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cuisine',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cuisine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cuisine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cuisine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cuisine',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cuisine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cuisine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cuisine',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cuisine',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cuisine',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      cuisineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cuisine',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      likeCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'likeCount',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      likeCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'likeCount',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      likeCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'likeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      likeCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'likeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      likeCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'likeCount',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      likeCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'likeCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'priceRange',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'priceRange',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceRange',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'priceRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'priceRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'priceRange',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'priceRange',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceRange',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      priceRangeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'priceRange',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      rateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rate',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      rateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rate',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      rateEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rate',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      rateGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rate',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      rateLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rate',
        value: value,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      rateBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'restaurantImage',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'restaurantImage',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restaurantImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'restaurantImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'restaurantImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'restaurantImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'restaurantImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'restaurantImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'restaurantImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'restaurantImage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restaurantImage',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      restaurantImageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'restaurantImage',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sId',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sId',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sId',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      sIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sId',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'website',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'website',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'website',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'website',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'website',
        value: '',
      ));
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterFilterCondition>
      websiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'website',
        value: '',
      ));
    });
  }
}

extension RestaurantDatasQueryObject
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QFilterCondition> {}

extension RestaurantDatasQueryLinks
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QFilterCondition> {}

extension RestaurantDatasQuerySortBy
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QSortBy> {
  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> sortByCuisine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cuisine', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByCuisineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cuisine', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByLikeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likeCount', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByLikeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likeCount', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByPriceRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceRange', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByPriceRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceRange', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> sortByRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByRestaurantImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restaurantImage', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByRestaurantImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restaurantImage', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> sortBySId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> sortBySIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> sortByWebsite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      sortByWebsiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.desc);
    });
  }
}

extension RestaurantDatasQuerySortThenBy
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QSortThenBy> {
  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenByCuisine() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cuisine', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByCuisineDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cuisine', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByLikeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likeCount', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByLikeCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likeCount', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByPriceRange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceRange', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByPriceRangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceRange', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenByRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rate', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByRestaurantImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restaurantImage', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByRestaurantImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'restaurantImage', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenBySId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenBySIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.desc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy> thenByWebsite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.asc);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QAfterSortBy>
      thenByWebsiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'website', Sort.desc);
    });
  }
}

extension RestaurantDatasQueryWhereDistinct
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct> {
  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct> distinctByCuisine(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cuisine', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct>
      distinctByLikeCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'likeCount');
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct>
      distinctByPriceRange({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceRange', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct> distinctByRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rate');
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct>
      distinctByRestaurantImage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'restaurantImage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct> distinctBySId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<RestaurantDatas, RestaurantDatas, QDistinct> distinctByWebsite(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'website', caseSensitive: caseSensitive);
    });
  }
}

extension RestaurantDatasQueryProperty
    on QueryBuilder<RestaurantDatas, RestaurantDatas, QQueryProperty> {
  QueryBuilder<RestaurantDatas, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations> cuisineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cuisine');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<RestaurantDatas, int?, QQueryOperations> likeCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'likeCount');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations>
      priceRangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceRange');
    });
  }

  QueryBuilder<RestaurantDatas, int?, QQueryOperations> rateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rate');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations>
      restaurantImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'restaurantImage');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations> sIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sId');
    });
  }

  QueryBuilder<RestaurantDatas, String?, QQueryOperations> websiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'website');
    });
  }
}
