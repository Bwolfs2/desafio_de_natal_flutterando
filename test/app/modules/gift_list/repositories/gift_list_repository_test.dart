import 'package:desafio_de_natal_flutterando/app/modules/gift_list/repositories/gift_list_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';


class MockClient extends Mock implements Dio {}

void main() {
  GiftListRepository repository;
  MockClient client;

  setUp(() {
    repository = GiftListRepository();
    client = MockClient();
  });

  group('GiftListRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<GiftListRepository>());
    });

    test('returns a Post if the http call completes successfully', () async {
      when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
          .thenAnswer(
              (_) async => Response(data: {'title': 'Test'}, statusCode: 200));
      Map<String, dynamic> data = await repository.fetchPost(client);
      expect(data['title'], 'Test');
    });
  });
}
