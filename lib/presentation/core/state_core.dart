import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class StateCore extends ChangeNotifier {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firebaseFirestore;

  StateCore({
    required FirebaseAuth auth,
    required FirebaseFirestore firebaseFirestore,
  })  : _auth = auth,
        _firebaseFirestore = firebaseFirestore;
}
