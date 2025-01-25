import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:know_my_city/domain/core/value_failure.dart';
import 'package:know_my_city/domain/core/value_object.dart';
import 'package:know_my_city/domain/core/value_validator.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  // Return
  @override
  final Either<ValueFailure<String>, String> value;
  // Constructor
  factory EmailAddress(String input) {
    //assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
  // Uso de either
  const EmailAddress._(this.value);
  // toString, equals, hashCode...
}
