import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:egrams_flutter/app/infrastructures/app_component.dart';
import 'package:egrams_flutter/app/infrastructures/router.dart' as AppRouter;
import 'package:egrams_flutter/app/ui/pages/home/view.dart';
import 'package:egrams_flutter/app/ui/res/generated/i18n.dart';

void main() {
  AppComponent.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter.Router _router;
  final _navigatorKey = GlobalKey<NavigatorState>();

  MyApp() : _router = AppRouter.Router();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      // to generate string: flutter pub run gen_lang:generate --source-dir=lib/app/ui/res/string --output-dir=lib/app/ui/res/generated --template-locale=id
      localizationsDelegates: [S.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('en'),
      title: "Flutter Clean Architecture",
      home: HomePage(),
      onGenerateRoute: _router.getRoute,
      navigatorObservers: [_router.routeObserver],
    );
  }
}
