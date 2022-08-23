import 'package:flutter_challenge/src/core/di/di_handler.dart';
import 'package:flutter_challenge/src/core/firebase/firebase_handler.dart';
import 'package:flutter_challenge/src/core/firebase/firebase_handler_imp.dart';
import 'package:get_it/get_it.dart';
/// classe para lidar com a injecao de dependecias
/// gerenciar como criamos/instanciamos uma classe

class DIHandlerImp implements IDIHandler {

  final _getIt = GetIt.I;

  @override
  init() {
    _getIt.registerFactory<IFirebaseHandler>(() => FirebaseHandlerImp());
  }

  @override
  T get<T extends Object>() {
    return _getIt.get<T>();
  }

}