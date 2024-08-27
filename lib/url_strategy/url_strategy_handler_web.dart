import 'package:flutter_web_plugins/url_strategy.dart' as url_strategy;

import 'url_strategy_handler.dart';

UrlStrategyHandler getInstance() => UrlStrategyHandlerWeb();

class UrlStrategyHandlerWeb implements UrlStrategyHandler {
  @override
  void setUrlStrategy() {
    url_strategy.setUrlStrategy(NoHistoryUrlStrategy());
  }
}

class NoHistoryUrlStrategy extends url_strategy.HashUrlStrategy {
  @override
  void pushState(Object? state, String title, String url) =>
      replaceState(state, title, url);
}
