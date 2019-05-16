import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:ng_bootstrap/ng_bootstrap.dart';

import '../okr.dart';
import '../okr_service.dart';
import '../route_paths.dart';

@Component(
  selector: 'gti-preview',
  templateUrl: 'preview_component.html',
  directives: [coreDirectives, routerDirectives, BsDatePickerPopupComponent, formDirectives],
  providers: [OKRService],
)
class PreviewComponent {
  var description = '''
  PerfGenerator, a tool to simplify and automate the process of creating performance evaluation reports by summarizing the snippets created during the year. By enabling Googlers to author comprehensive performance reports, PerfGenerator will provide productivity improvements for all Googlers.
      ''';

  var generated = false;

  List<String> sources = ['go/Snippets','Calender','Gmail','Change List','go/gThanks'];
  List<int> numbers = [1,2,3];

  void markGenerate() async {
    generated = true;
    if (okrs == null) {
      okrs = await this._okrService.getAll();
    }
  }

  final OKRService _okrService;

  List<OKR> okrs;

  PreviewComponent(this._okrService);

  String printUrl() => RoutePaths.printPage.toUrl();

  DateTime dt2 = DateTime.now();
  DateTime dt1 = DateTime.now();
  String format = "MM-dd-yyyy";
}