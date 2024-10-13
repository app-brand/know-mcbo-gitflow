import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:know_my_city/domain/core/value_failure.dart';
import 'package:know_my_city/domain/core/value_object.dart';
import 'package:know_my_city/domain/core/value_validator.dart';

@immutable
class PhoneNumber extends ValueObject<String> {
  // Return
  final Either<ValueFailure<String>, String> value;
  // Constructor
  factory PhoneNumber(String input) {
    //assert(input != null);
    return PhoneNumber._(
      validatePhoneNumber(input),
    );
  }
  // Uso de either
  const PhoneNumber._(this.value);
  // toString, equals, hashCode...
}
