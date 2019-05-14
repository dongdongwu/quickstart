import 'dart:async';
import 'dart:convert';
//import 'dart:html';

import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/mock_heroes.dart';
//import 'package:http/http.dart';

class HeroService {

//  final Client _http;

  static const _heroesUrl = 'api/heroes';

  Future<List<Hero>> getAllSlowly() {
    return Future.delayed(Duration(seconds: 2), getAll);
  }

  Future<Hero> get(int i) async => (await getAll()).firstWhere((hero) => hero.id == i);

//  HeroService(this._http);

//  Future<List<Hero>> getAll() async {
//    try {
//      final response = await _http.get(_heroesUrl);
//      final heroes = (_extractData(response) as List)
//          .map((json) => Hero.fromJson(json))
//          .toList();
//      return heroes;
//    } catch (e) {
//      throw _handleError(e);
//    }
//  }
  Future<List<Hero>> getAll() async => mockHeroes;
//
//  dynamic _extractData(Response resp) => json.decode(resp.body)['data'];
//
//  Exception _handleError(dynamic e) {
//    print(e); // for demo purposes only
//    return Exception('Server error; cause: $e');
//  }
}