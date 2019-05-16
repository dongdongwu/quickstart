import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'tag/tag_component.template.dart' as tag_template;
import 'preview/preview_component.template.dart' as preview_template;
import 'print/print_component.template.dart' as print_template;

export 'route_paths.dart';

class Routes {
  static final tagPage = RouteDefinition(
    routePath: RoutePaths.tagPage,
    component: tag_template.TagComponentNgFactory,
  );

  static final previewPage = RouteDefinition(
    routePath: RoutePaths.previewPage,
    component: preview_template.PreviewComponentNgFactory,
  );

  static final printPage = RouteDefinition(
    routePath: RoutePaths.printPage,
    component: print_template.PrintComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    tagPage,
    previewPage,
    printPage,
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.tagPage.toUrl(),
    ),
  ];
}