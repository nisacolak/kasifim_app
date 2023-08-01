// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetUserDatasCollection on Isar {
  IsarCollection<UserDatas> get userDatas => this.collection();
}

const UserDatasSchema = CollectionSchema(
  name: r'UserDatas',
  id: -1377237591268421336,
  properties: {
    r'blocked': PropertySchema(
      id: 0,
      name: r'blocked',
      type: IsarType.bool,
    ),
    r'comments': PropertySchema(
      id: 1,
      name: r'comments',
      type: IsarType.stringList,
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'favorites': PropertySchema(
      id: 3,
      name: r'favorites',
      type: IsarType.stringList,
    ),
    r'followers': PropertySchema(
      id: 4,
      name: r'followers',
      type: IsarType.stringList,
    ),
    r'following': PropertySchema(
      id: 5,
      name: r'following',
      type: IsarType.stringList,
    ),
    r'iV': PropertySchema(
      id: 6,
      name: r'iV',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'profileImage': PropertySchema(
      id: 8,
      name: r'profileImage',
      type: IsarType.string,
    ),
    r'role': PropertySchema(
      id: 9,
      name: r'role',
      type: IsarType.string,
    ),
    r'sId': PropertySchema(
      id: 10,
      name: r'sId',
      type: IsarType.string,
    )
  },
  estimateSize: _userDatasEstimateSize,
  serialize: _userDatasSerialize,
  deserialize: _userDatasDeserialize,
  deserializeProp: _userDatasDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userDatasGetId,
  getLinks: _userDatasGetLinks,
  attach: _userDatasAttach,
  version: '3.0.5',
);

int _userDatasEstimateSize(
  UserDatas object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.comments;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.favorites;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.followers;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.following;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.profileImage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.role;
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
  return bytesCount;
}

void _userDatasSerialize(
  UserDatas object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.blocked);
  writer.writeStringList(offsets[1], object.comments);
  writer.writeString(offsets[2], object.email);
  writer.writeStringList(offsets[3], object.favorites);
  writer.writeStringList(offsets[4], object.followers);
  writer.writeStringList(offsets[5], object.following);
  writer.writeLong(offsets[6], object.iV);
  writer.writeString(offsets[7], object.name);
  writer.writeString(offsets[8], object.profileImage);
  writer.writeString(offsets[9], object.role);
  writer.writeString(offsets[10], object.sId);
}

UserDatas _userDatasDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserDatas();
  object.blocked = reader.readBoolOrNull(offsets[0]);
  object.comments = reader.readStringList(offsets[1]);
  object.email = reader.readStringOrNull(offsets[2]);
  object.favorites = reader.readStringList(offsets[3]);
  object.followers = reader.readStringList(offsets[4]);
  object.following = reader.readStringList(offsets[5]);
  object.iV = reader.readLongOrNull(offsets[6]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[7]);
  object.profileImage = reader.readStringOrNull(offsets[8]);
  object.role = reader.readStringOrNull(offsets[9]);
  object.sId = reader.readStringOrNull(offsets[10]);
  return object;
}

P _userDatasDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readStringList(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userDatasGetId(UserDatas object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userDatasGetLinks(UserDatas object) {
  return [];
}

void _userDatasAttach(IsarCollection<dynamic> col, Id id, UserDatas object) {
  object.id = id;
}

extension UserDatasQueryWhereSort
    on QueryBuilder<UserDatas, UserDatas, QWhere> {
  QueryBuilder<UserDatas, UserDatas, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserDatasQueryWhere
    on QueryBuilder<UserDatas, UserDatas, QWhereClause> {
  QueryBuilder<UserDatas, UserDatas, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<UserDatas, UserDatas, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterWhereClause> idBetween(
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

extension UserDatasQueryFilter
    on QueryBuilder<UserDatas, UserDatas, QFilterCondition> {
  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> blockedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'blocked',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> blockedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'blocked',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> blockedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'blocked',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> commentsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comments',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comments',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comments',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comments',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comments',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comments',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comments',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'comments',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> commentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'comments',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'comments',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'comments',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'comments',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      commentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'comments',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> favoritesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'favorites',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'favorites',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favorites',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'favorites',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'favorites',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'favorites',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'favorites',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'favorites',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'favorites',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'favorites',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'favorites',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'favorites',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'favorites',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> favoritesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'favorites',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'favorites',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'favorites',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'favorites',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      favoritesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'favorites',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> followersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'followers',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'followers',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'followers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'followers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'followers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'followers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'followers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'followers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'followers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'followers',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'followers',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'followers',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'followers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> followersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'followers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'followers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'followers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'followers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'followers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> followingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'following',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'following',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'following',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'following',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'following',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'following',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'following',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'following',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'following',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'following',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'following',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'following',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'following',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> followingIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'following',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'following',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'following',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'following',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      followingLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'following',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> iVIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iV',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> iVIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iV',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> iVEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iV',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> iVGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iV',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> iVLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iV',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> iVBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iV',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'profileImage',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'profileImage',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> profileImageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profileImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profileImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> profileImageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profileImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profileImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profileImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profileImage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> profileImageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profileImage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileImage',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition>
      profileImageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profileImage',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'role',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sId',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sId',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdEqualTo(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdGreaterThan(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdLessThan(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdBetween(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdStartsWith(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdEndsWith(
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

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sId',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterFilterCondition> sIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sId',
        value: '',
      ));
    });
  }
}

extension UserDatasQueryObject
    on QueryBuilder<UserDatas, UserDatas, QFilterCondition> {}

extension UserDatasQueryLinks
    on QueryBuilder<UserDatas, UserDatas, QFilterCondition> {}

extension UserDatasQuerySortBy on QueryBuilder<UserDatas, UserDatas, QSortBy> {
  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByIV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iV', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByIVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iV', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByProfileImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImage', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByProfileImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImage', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortBySId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> sortBySIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.desc);
    });
  }
}

extension UserDatasQuerySortThenBy
    on QueryBuilder<UserDatas, UserDatas, QSortThenBy> {
  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByBlockedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'blocked', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByIV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iV', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByIVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iV', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByProfileImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImage', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByProfileImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileImage', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenBySId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.asc);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QAfterSortBy> thenBySIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sId', Sort.desc);
    });
  }
}

extension UserDatasQueryWhereDistinct
    on QueryBuilder<UserDatas, UserDatas, QDistinct> {
  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByBlocked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'blocked');
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByComments() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comments');
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByFavorites() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'favorites');
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByFollowers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'followers');
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByFollowing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'following');
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByIV() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iV');
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByProfileImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profileImage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctByRole(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'role', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDatas, UserDatas, QDistinct> distinctBySId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sId', caseSensitive: caseSensitive);
    });
  }
}

extension UserDatasQueryProperty
    on QueryBuilder<UserDatas, UserDatas, QQueryProperty> {
  QueryBuilder<UserDatas, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserDatas, bool?, QQueryOperations> blockedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'blocked');
    });
  }

  QueryBuilder<UserDatas, List<String>?, QQueryOperations> commentsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comments');
    });
  }

  QueryBuilder<UserDatas, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<UserDatas, List<String>?, QQueryOperations> favoritesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'favorites');
    });
  }

  QueryBuilder<UserDatas, List<String>?, QQueryOperations> followersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'followers');
    });
  }

  QueryBuilder<UserDatas, List<String>?, QQueryOperations> followingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'following');
    });
  }

  QueryBuilder<UserDatas, int?, QQueryOperations> iVProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iV');
    });
  }

  QueryBuilder<UserDatas, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<UserDatas, String?, QQueryOperations> profileImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profileImage');
    });
  }

  QueryBuilder<UserDatas, String?, QQueryOperations> roleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'role');
    });
  }

  QueryBuilder<UserDatas, String?, QQueryOperations> sIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sId');
    });
  }
}
