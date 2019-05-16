import 'package:angular/angular.dart';
import 'package:angular_app/src/okr.dart';
import 'package:angular_router/angular_router.dart';

import '../okr_service.dart';
import '../route_paths.dart';

@Component(
  selector: 'tag',
  templateUrl: 'tag_component.html',
  styleUrls: ['tag_component.css'],
  directives: [coreDirectives, routerDirectives],
  providers: [OKRService],
)
class TagComponent implements OnInit {
  var instruction = 'How to use OKR Tags?';
  var details = '''
  For the tag "Project 1" you should write a go/Snippets in the format:
  ''';
  var details2 = '''
  -[Project 1] Had meeting with design and engineers to decide on the scope.
  ''';

  List<OKR> okrs;

  final OKRService _okrService;

  Future<void> _getOKRs() async {
    okrs = await _okrService.getAll();
  }

  @override
  void ngOnInit() => _getOKRs();

  TagComponent(this._okrService);

  String preiviewUrl() => RoutePaths.previewPage.toUrl();
}