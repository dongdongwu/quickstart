import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_app/src/route_paths.dart';
import 'package:angular_router/angular_router.dart';

import 'hero.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  directives: [HeroService, coreDirectives, routerDirectives],
  providers: [ClassProvider(HeroService)],
  styleUrls: ['dashboard_component.css'],
)
class DashboardComponent implements OnInit{
  final HeroService _heroService;
  List<Hero> heroes;

  DashboardComponent(this._heroService);

  @override
  void ngOnInit() async {
    heroes = (await _heroService.getAll()).skip(1).take(4).toList();
  }

  String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});
}