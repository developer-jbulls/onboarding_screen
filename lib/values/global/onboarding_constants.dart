import 'package:flutter/material.dart';

final _mediaQueryAdapter = MediaQueryData.fromView(
    WidgetsBinding.instance.platformDispatcher.views.first);

final size = _mediaQueryAdapter.size;

final height = size.height;
final width = size.width;

final deviceOrientation = _mediaQueryAdapter.orientation;

final GlobalKey<NavigatorState> navigatorState = GlobalKey<NavigatorState>();
