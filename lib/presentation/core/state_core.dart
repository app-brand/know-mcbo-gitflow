import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:injectable/injectable.dart';
//import 'package:know_my_city/domain/axi/axi.dart';

@injectable
class StateCore extends ChangeNotifier {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firebaseFirestore;
  //Controles
  int _counter = 0;
  bool _isLoading = false;

  StateCore({
    required FirebaseAuth auth,
    required FirebaseFirestore firebaseFirestore,
  })  : _auth = auth,
        _firebaseFirestore = firebaseFirestore {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      checkUserState();
      // axiCollection();
    });
  }

  int get counter => _counter;
  // Page counter
  void incrementCounter() {
    _counter++;
    print('Contando los cambios de pagina ${counter}');
    notifyListeners();
  }

  // Getter y Setter para _isLoading
  bool get isLoading => _isLoading;
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // Verificar sesion!
  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;

  Future<void> checkUserState() async {
    _auth.userChanges().listen((user) {
      if (user != null) {
        print('sesion reconocida');
        _loggedIn = true;
        print(_loggedIn);
      } else {
        print('no hay session activa');
      }
      notifyListeners();
    });
  }

  /* // Verificar lectura de gastronomia
  StreamSubscription<QuerySnapshot>? _axiSubscription;
  List<Axi> _axiArray = [];
  List<Axi> get axiArray => _axiArray;
  Future<void> axiCollection() async {
    try {
      _axiSubscription = _firebaseFirestore
          .collection('gastronomia')
          .snapshots()
          .listen((documents) {
        for (final doc in documents.docs) {
          print('lectura de gastronomia - firestore');
          print(doc.data());
        }
      });
    } catch (e) {
      print('Error al conectarse a firestore ${e}');
    }
    notifyListeners();
  } */

  @override
  void dispose() {
    /* _axiSubscription?.cancel(); */
    super.dispose();
  }
}
