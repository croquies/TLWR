import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:tlwr_observer/entities/page_node.dart';
import 'package:tlwr_observer/tlwr_logger.dart';

class TLWRObserver extends RouteObserver<ModalRoute<dynamic>> {
  final TLWRLogger tlwrLogger = TLWRLogger.instance;

  TLWRObserver._();
  static final TLWRObserver _instance = TLWRObserver._();
  static TLWRObserver get instance => _instance;

  Option<PageNode> fromPageNode = none();
  Option<PageNode> toPageNode = none();

  void updateFromLabel(String label) {
    fromPageNode = fromPageNode.fold(
      () => none(),
      (a) => some(
        a.copyWith(
          className: label,
        ),
      ),
    );
  }

  void updateToLabel(String label) {
    toPageNode = toPageNode.fold(
      () => none(),
      (a) => some(
        a.copyWith(
          className: label,
        ),
      ),
    );
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    assert(fromPageNode.isNone());
    assert(toPageNode.isNone());
    toPageNode = some(PageNode(path: route.settings.name ?? "null-path"));
    fromPageNode = optionOf(previousRoute).flatMap(
      (a) => some(
        PageNode(path: a.settings.name ?? "null-paht"),
      ),
    );
    super.didPush(route, previousRoute); // call rout aware did push
    tlwrLogger.sendLog(
      to: toPageNode.fold(
        () {
          throw ErrorDescription("to pagenode should not be null");
        },
        (a) => a,
      ),
      from: fromPageNode.fold(
        () => null,
        (a) => a,
      ),
    );
    toPageNode = none();
    fromPageNode = none();
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    assert(fromPageNode.isNone());
    assert(toPageNode.isNone());
    toPageNode = some(PageNode(path: route.settings.name ?? "null-path"));
    fromPageNode = optionOf(previousRoute).flatMap(
      (a) => some(
        PageNode(path: a.settings.name ?? "null-paht"),
      ),
    );
    super.didPop(route, previousRoute); // call rout aware did push
    tlwrLogger.sendLog(
      to: toPageNode.fold(
        () {
          throw ErrorDescription("to pagenode should not be null");
        },
        (a) => a,
      ),
      from: fromPageNode.fold(
        () => null,
        (a) => a,
      ),
    );
    toPageNode = none();
    fromPageNode = none();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    // TODO: implement didReplace
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
