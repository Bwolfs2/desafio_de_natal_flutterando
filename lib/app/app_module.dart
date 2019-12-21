import 'package:desafio_de_natal_flutterando/app/app_bloc.dart';
import 'package:desafio_de_natal_flutterando/app/modules/gift_list/gift_list_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:desafio_de_natal_flutterando/app/app_widget.dart';
import 'package:desafio_de_natal_flutterando/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router(
          '/gifts',
          module: GiftListModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
