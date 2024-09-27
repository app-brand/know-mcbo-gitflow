import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:know_my_city/domain/core/value_errors.dart';
import 'package:know_my_city/domain/core/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold((l) => throw ValueErrors(l), id);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => '$value)';
}
