import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:desafio_de_natal_flutterando/app/app_module.dart';
import 'package:desafio_de_natal_flutterando/app/modules/gift_list/widgets/card/card_bloc.dart';
import 'package:desafio_de_natal_flutterando/app/modules/gift_list/gift_list_module.dart';

void main() {
  Modular.init(AppModule());
  Modular.bindModule(GiftListModule());
  CardBloc bloc;

  setUp(() {
    bloc = GiftListModule.to.get<CardBloc>();
  });

  group('CardBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<CardBloc>());
    });
  });
}
