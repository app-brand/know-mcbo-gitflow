// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'application/sing_in/sign_in_bloc.dart' as _i146;
import 'application/sing_out/sing_out_bloc.dart' as _i71;
import 'application/sing_up/sing_up_bloc.dart' as _i980;
import 'domain/user/interface_user_facade.dart' as _i746;
import 'infrastructure/core/core_module.dart' as _i189;
import 'infrastructure/firebase/firebase_auth_repository.dart' as _i951;

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
    final firebaseCoreModule = _$FirebaseCoreModule();
    gh.factory<_i980.SingUpBloc>(() => _i980.SingUpBloc());
    gh.factory<_i71.SingOutBloc>(() => _i71.SingOutBloc());
    gh.lazySingleton<_i59.FirebaseAuth>(() => firebaseCoreModule.firebaseAuth);
    gh.lazySingleton<_i974.FirebaseFirestore>(
        () => firebaseCoreModule.firestore);
    gh.lazySingleton<_i746.InterfaceUserFacade>(
        () => _i951.FirebaseAuthRepository(gh<_i59.FirebaseAuth>()));
    gh.factory<_i146.SignInBloc>(
        () => _i146.SignInBloc(gh<_i746.InterfaceUserFacade>()));
    return this;
  }
}

class _$FirebaseCoreModule extends _i189.FirebaseCoreModule {}
