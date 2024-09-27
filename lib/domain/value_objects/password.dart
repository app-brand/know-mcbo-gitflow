import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:know_my_city/domain/core/value_failure.dart';
import 'package:know_my_city/domain/core/value_object.dart';
import 'package:know_my_city/domain/core/value_validator.dart';

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    //assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }
  const Password._(this.value);
}
