import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/domain/axi/axi.dart';
import 'package:know_my_city/domain/marker/custom_marker.dart';

@injectable
class StateCore extends ChangeNotifier {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firebaseFirestore;
  StreamSubscription<User?>? _authSubscription;
  // Suscripciones de ejes - por coleccion
  StreamSubscription<QuerySnapshot>? _axiSubscriptionIdeosincracia;
  List<Axi> _axiIdeosincrasiaList = [];
  List<Axi> get axiIdeosincrasiaList => _axiIdeosincrasiaList;
  Set<Marker> _markerList = {};
  Set<Marker> get markerList => _markerList;
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

  Axi findAxiByTitle(int title_id) {
    try {
      return _axiIdeosincrasiaList.firstWhere(
        (axi) => axi.title_id == title_id,
        orElse: () => Axi.defaultInstance(),
      );
    } catch (e) {
      print('Error al buscar Axi por título: $e');
      return Axi.defaultInstance();
    }
  }

  Future<void> checkAxiIdeosincracia() async {
    print('Ideosincrasia - Firestore');
    try {
      _axiSubscriptionIdeosincracia = _firebaseFirestore
          .collection('ideosincracia')
          .snapshots()
          .listen((snapshot) {
        _axiIdeosincrasiaList = [];
        for (var document in snapshot.docs) {
          Axi axi = Axi.fromFirestore(document.data());
          //print(axi.toJson());
          _axiIdeosincrasiaList.add(axi);
        }
        notifyListeners();
      });
    } on Exception catch (e) {
      print('Error al acceder a Firestore: $e');
    }
  }

  Future<void> checkMarker() async {
  try {
    _axiSubscriptionIdeosincracia = _firebaseFirestore
        .collection('markers')
        .snapshots()
        .listen((snapshot) {
      _markerList = <Marker>{};  // Asegúrate de que _markerList es un Set<Marker> de google_maps_flutter
      for (var document in snapshot.docs) {
        CustomMarker customMarker = CustomMarker.fromFirestore(document.data());
        Marker googleMapMarker = customMarker.toGoogleMapMarker();
        _markerList.add(googleMapMarker);
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
    _axiSubscriptionIdeosincracia?.cancel();
    super.dispose();
  }
}
