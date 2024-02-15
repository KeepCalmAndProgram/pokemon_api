import 'package:dio/dio.dart';
import 'package:pokemon_api/repositories/models/pockemon_api.dart';

class PockemonApiRepository {
  Future<List<PockemonApi>> fetchPockemonList() async {
    final response = await Dio().get('https://pokeapi.co/api/v2/pokemon');

    final List<Future> futuresPockemon = [];

    final data = response.data as Map<String, dynamic>;

    final pockemonList = data['results']
        .map((e) => (e as Map<String, dynamic>)['name'] as String?)
        .toList();

    for (final pockemon in pockemonList) {
      if (pockemon == null) {
        continue;
      }
      futuresPockemon.add(Dio().get('https://pokeapi.co/api/v2/pokemon/$pockemon'));
    }

    final responses = await Future.wait(futuresPockemon);
    final result = responses.map((e) {
      final data = e.data as Map<String, dynamic>;
      return PockemonApi.fromJson(data);
    }).toList();


    return result;
  }
}
