// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:dio/dio.dart' as _i361;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/facade/interface_user_facade.dart' as _i2;
import 'application/profile/profile_bloc.dart' as _i11;
import 'application/sign_in/sign_in_bloc.dart' as _i939;
import 'application/sign_up/sign_up_bloc.dart' as _i1011;
import 'infrastructure/core/core_module.dart' as _i189;
import 'infrastructure/firebase/interface_firebase_auth.dart' as _i172;
import 'legacy-code/presentation-legacy/core/state_core.dart' as _i998;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModule = _$CoreModule();
    gh.factory<_i998.StateCore>(() => _i998.StateCore());
    gh.lazySingleton<_i59.FirebaseAuth>(() => coreModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(() => coreModule.firestore);
    gh.lazySingleton<_i361.Dio>(() => coreModule.dio);
    gh.lazySingleton<_i2.InterfaceUserFacade>(
        () => _i172.FirebaseUserRepository(
              firebaseAuth: gh<_i59.FirebaseAuth>(),
              firebaseFirestore: gh<_i974.FirebaseFirestore>(),
            ));
    gh.singleton<_i1011.SignUpBloc>(
        () => _i1011.SignUpBloc(gh<_i2.InterfaceUserFacade>()));
    gh.singleton<_i939.SignInBloc>(
        () => _i939.SignInBloc(gh<_i2.InterfaceUserFacade>()));
    gh.singleton<_i11.ProfileBloc>(
        () => _i11.ProfileBloc(gh<_i2.InterfaceUserFacade>()));
    return this;
  }
}

class _$CoreModule extends _i189.CoreModule {}
