import 'package:angular/angular.dart';
import 'package:angular_app/src/header/header_component.dart';
import 'package:angular_app/src/preview/preview_component.dart';
import 'package:angular_app/src/tag/tag_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [HeaderComponent, TagComponent, PreviewComponent]
)
class AppComponent {
  var name = 'Angular';
}
