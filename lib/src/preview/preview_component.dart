import 'package:angular/angular.dart';

@Component(
  selector: 'gti-preview',
  templateUrl: 'preview_component.html',
  directives: [coreDirectives],
)
class PreviewComponent {
  var description = '''
  PerfGenerator, a tool to simplify and automate the process of creating performance evaluation reports by summarizing the snippets created during the year. By enabling Googlers to author comprehensive performance reports, PerfGenerator will provide productivity improvements for all Googlers.
      ''';

  List<String> sources = ['go/Snippets','Calender','Gmail','Change List','go/gThanks'];
}