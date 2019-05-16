import 'package:angular/angular.dart';
import 'package:angular_app/src/header/header_component.dart';
import 'package:angular_app/src/okr_service.dart';
import 'package:angular_app/src/preview/preview_component.dart';
import 'package:angular_app/src/print/print_component.dart';
import 'package:angular_app/src/routes.dart';
import 'package:angular_app/src/tag/tag_component.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [HeaderComponent, TagComponent, PreviewComponent, PrintComponent, routerDirectives],
  providers: [ClassProvider(OKRService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  var name = 'Angular';
}
