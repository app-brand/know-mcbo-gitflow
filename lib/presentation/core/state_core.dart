import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/axi/axi.dart';

@injectable
class StateCore extends ChangeNotifier {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firebaseFirestore;
  StreamSubscription<User?>? _authSubscription;
  // Suscripciones de ejes - por coleccion
  StreamSubscription<QuerySnapshot>? _axiSubscription;
  List<Axi> _axiList = [];
  List<Axi> get axiList => _axiList;
  // Controles
  int _counter = 0;
  bool _isLoading = false;
  bool _loggedIn = false;

  StateCore({
    required FirebaseAuth auth,
    required FirebaseFirestore firebaseFirestore,
  })  : _auth = auth,
        _firebaseFirestore = firebaseFirestore {
    // Ejecuta la verificación del estado del usuario después del primer build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkUserState();
    });
  }

  int get counter => _counter;

  // Método para incrementar el contador y notificar a los listeners
  void incrementCounter() {
    _counter++;
    print('Contando los cambios de página: $counter');
    notifyListeners();
  }

  // Getter y setter para _isLoading
  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  // Getter para _loggedIn
  bool get loggedIn => _loggedIn;

  // Verificar el estado del usuario
  Future<void> checkUserState() async {
    _authSubscription = _auth.userChanges().listen((user) {
      final wasLoggedIn = _loggedIn;
      _loggedIn = user != null;
      // Solo notifica a los listeners si hay un cambio en el estado de login
      if (wasLoggedIn != _loggedIn) {
        print(_loggedIn ? 'Sesión reconocida' : 'No hay sesión activa');
        notifyListeners();
      }
    });
  }

  Future<void> checkAxiIdeosincracia() async {
    print('Ejecutando comando a firestore');
    try {
      _axiSubscription = _firebaseFirestore
          .collection('ideosincracia')
          .snapshots()
          .listen((snapshot) {
        print('Estoy en un snapshot');
        _axiList = [];
        for (var document in snapshot.docs) {
          print(document.data());
        }
        notifyListeners();
      });
    } on Exception catch (e) {
      print('Error al acceder a Firestore: $e');
    }
  }

  @override
  void dispose() {
    _authSubscription?.cancel();
    _axiSubscription?.cancel();
    super.dispose();
  }
}
