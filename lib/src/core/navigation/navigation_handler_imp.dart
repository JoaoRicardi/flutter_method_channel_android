import 'package:flutter/material.dart';
import 'package:flutter_challenge/src/core/navigation/navigation_handler.dart';

class NavigationHandlerImp implements INavigationHandler{

  @override
  GlobalKey<NavigatorState> appGlobalKey = GlobalKey();

  @override
  Route appRoutes(RouteSettings settings) {
    switch(settings.name){


      default:
        //em caso de rota desconhecida
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return Container();
          },
        );
    }
  }

  @override
  pop<T extends Object?>([T? result]) async {
    return appGlobalKey.currentState?.pop(T);
  }

  @override
  Future<T?> push<T extends Object?>(String route, {Object? arguments}) async {
    return appGlobalKey.currentState?.pushNamed(route,arguments: arguments);
  }

}