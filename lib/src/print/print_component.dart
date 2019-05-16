import 'package:angular/angular.dart';
import 'package:angular_app/src/okr_service.dart';

import '../okr.dart';

@Component(
  selector: 'gti-print',
  templateUrl: 'print_component.html',
  directives: [coreDirectives],
  providers: [OKRService]
)
class PrintComponent implements OnInit{

  var commentary = 'The Snippets tool is useful for recording your work each week, either for your own benefit or for providing visibility to your manager. Snippets data is also a helpful source when writing your own performance evaluation.';
  var numbers = [1,2,3];
  final OKRService _okrService;

  List<OKR> okrs;

  PrintComponent(this._okrService);

  @override
  void ngOnInit() async {
    okrs = await this._okrService.getAll();
  }
}