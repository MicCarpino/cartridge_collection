// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_database/firebase_database.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i7;
import 'data/repositories/cartridge_repository.dart' as _i5;
import 'domain/repositories/i_cartridge_repository.dart' as _i4;
import 'presentation/bloc/cartidge_watcher/cartridge_watcher_bloc.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseDatabase>(
      () => firebaseInjectableModule.firebaseDatabase);
  gh.lazySingleton<_i4.ICartridgeRepository>(
      () => _i5.CartridgeRepository(get<_i3.FirebaseDatabase>()));
  gh.factory<_i6.CartridgeWatcherBloc>(
      () => _i6.CartridgeWatcherBloc(get<_i4.ICartridgeRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i7.FirebaseInjectableModule {}
