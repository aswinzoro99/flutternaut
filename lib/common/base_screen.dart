import 'package:flutter/material.dart';

import '../route/app_router.dart';
import '../utils/locator.dart';

abstract class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});
}

abstract class BaseState<Page extends BaseScreen> extends State<Page>
    with RouteAware {
  AppRouter get appRouter => locate();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO (Aswin): Add implementation
    super.dispose();
  }

  @override
  void didPush() {
    // TODO (Aswin): Add implementation
    super.didPush();
  }

  @override
  void didPop() {
    // TODO (Aswin): Add implementation
    super.didPop();
  }

  @override
  void didPopNext() {
    // TODO (Aswin): Add implementation
    super.didPopNext();
  }
}
