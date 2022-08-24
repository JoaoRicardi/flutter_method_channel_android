import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/app.dart';
import 'package:flutter_challenge/src/core/di/di_handler.dart';
import 'package:flutter_challenge/src/core/di/di_handler_imp.dart';
import 'package:flutter_challenge/src/core/firebase/firebase_handler.dart';

 main() async {

  ///registrar classes na injecao de dependencia
  IDIHandler _injection = DIHandlerImp()
    ..init();

  await _injection.get<IFirebaseHandler>().initFirebase();

  runApp(MyApp());
}

