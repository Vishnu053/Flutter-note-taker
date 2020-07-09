import 'package:common/editor.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'NoteEditor':
      return MaterialPageRoute(builder: (BuildContext context) => NoteEditor());
    // case ScheduleRoute:
    //   return MaterialPageRoute(builder: (BuildContext context) => Schedule());
    // case ScSelectedRoute:
    //   final ScSelected args = settings.arguments;
    //   return MaterialPageRoute(
    //       builder: (BuildContext context) =>
    //           ScSelected(args.title, args.subCategory,args.catId));
    default:
      break;
  }
}
