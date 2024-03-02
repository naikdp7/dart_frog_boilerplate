// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : StringFilter.fromJson(json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFilter.fromJson(json['lastName'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('firstName', instance.firstName?.toJson());
  writeNotNull('lastName', instance.lastName?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['firstName']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
    UserOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('firstName', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('lastName', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      email: json['email'] as String?,
      userId: json['userId'] as String?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      firstName: json['firstName'] == null
          ? null
          : StringFilter.fromJson(json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFilter.fromJson(json['lastName'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
    UserWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('userId', instance.userId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('firstName', instance.firstName?.toJson());
  writeNotNull('lastName', instance.lastName?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['firstName']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
    UserOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('firstName', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('lastName', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      email: json['email'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['lastName'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['userId'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
    UserScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('firstName', instance.firstName?.toJson());
  writeNotNull('lastName', instance.lastName?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userId: json['userId'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userId': instance.userId,
      'password': instance.password,
    };

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userId: json['userId'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
        UserUncheckedCreateInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userId': instance.userId,
      'password': instance.password,
    };

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['userId'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('firstName', instance.firstName?.toJson());
  writeNotNull('lastName', instance.lastName?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['userId'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
    UserUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('firstName', instance.firstName?.toJson());
  writeNotNull('lastName', instance.lastName?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userId: json['userId'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateManyInputToJson(
        UserCreateManyInput instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userId': instance.userId,
      'password': instance.password,
    };

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['userId'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
    UserUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('firstName', instance.firstName?.toJson());
  writeNotNull('lastName', instance.lastName?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      firstName: json['firstName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['firstName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['lastName'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['userId'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
    UserUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email?.toJson());
  writeNotNull('firstName', instance.firstName?.toJson());
  writeNotNull('lastName', instance.lastName?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['firstName']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
    UserCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('firstName', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('lastName', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['firstName']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
    UserMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('firstName', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('lastName', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      firstName: $enumDecodeNullable(_$SortOrderEnumMap, json['firstName']),
      lastName: $enumDecodeNullable(_$SortOrderEnumMap, json['lastName']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
    UserMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('firstName', _$SortOrderEnumMap[instance.firstName]);
  writeNotNull('lastName', _$SortOrderEnumMap[instance.lastName]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      userId: json['userId'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userId': instance.userId,
      'password': instance.password,
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userId: json['userId'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
    UserGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('userId', instance.userId);
  writeNotNull('password', instance.password);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
