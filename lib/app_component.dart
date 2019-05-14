import 'package:angular/angular.dart';
import 'package:angular_app/src/hero_service.dart';
import 'package:angular_app/src/routes.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, routerDirectives],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes],
  styleUrls: ['app_component.css'],
)
class AppComponent{
  final String title = "Testing Page";
}