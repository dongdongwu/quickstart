import 'package:angular/angular.dart';
import 'package:angular/core.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/route_paths.dart';

import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'hero_list_component.html',
  styleUrls: ['hero_list_component.css'],
  directives: [coreDirectives],
  providers: [ClassProvider(HeroService)],
  pipes: [commonPipes],
)
class HeroListComponent implements OnInit{
  final String name = "dongdong";
  final HeroService _heroService;
  final Router _router;

  List<Hero> heroes;
  Hero selected;

  void select(Hero hero) {
    this.selected = hero;
  }

  Future _getHeroes() async {
    heroes = await _heroService.getAll();
  }

  HeroListComponent(this._heroService, this._router);

  @override
  void ngOnInit() {
    this._getHeroes();
  }

  String _heroUrl(int id) =>
      RoutePaths.hero.toUrl(parameters: {idParam: '$id'});

  Future<NavigationResult> gotoDetail() =>
      _router.navigate(_heroUrl(selected.id));
}
