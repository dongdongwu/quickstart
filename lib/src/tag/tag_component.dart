import 'package:angular/angular.dart';

@Component(
  selector: 'tag',
  templateUrl: 'tag_component.html',
  styleUrls: ['tag_component.css'],
)
class TagComponent {
  var instruction = 'How to use OKR Tags?';
  var details = '''
  For the tag "Project 1" you should write a go/Snippets in the format:
  ''';
  var details2 = '''
  -[Project 1] Had meeting with design and engineers to decide on the scope.
  ''';
}