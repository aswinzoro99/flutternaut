import 'url_strategy_handler_stub.dart'
    if (dart.library.html) 'url_strategy_handler_web.dart'
    if (dart.library.io) 'url_strategy_handler_other.dart';

abstract class UrlStrategyHandler {
  factory UrlStrategyHandler() => getInstance();

  void setUrlStrategy();
}
