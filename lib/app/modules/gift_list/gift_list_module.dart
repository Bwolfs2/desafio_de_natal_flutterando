import 'package:desafio_de_natal_flutterando/app/modules/gift_list/widgets/card/card_bloc.dart';
import 'package:desafio_de_natal_flutterando/app/modules/gift_list/repositories/gift_list_repository.dart';
import 'package:desafio_de_natal_flutterando/app/modules/gift_list/gift_list_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio_de_natal_flutterando/app/modules/gift_list/gift_list_page.dart';

class GiftListModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardBloc()),
        Bind((i) => GiftListRepository()),
        Bind((i) => GiftListBloc()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => GiftListPage()),
      ];

  static Inject get to => Inject<GiftListModule>.of();
}
