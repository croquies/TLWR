import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tlwr_observer/tlwr_observer/tlwr_observer.dart';

class TLWRPageWidget extends StatefulWidget {
  final Widget child;
  final String label;
  const TLWRPageWidget({
    Key? key,
    required this.child,
    required this.label,
  }) : super(key: key);

  @override
  _TLWRPageWidgetState createState() => _TLWRPageWidgetState();
}

class _TLWRPageWidgetState extends State<TLWRPageWidget> with RouteAware {
  final routeObserver = TLWRObserver.instance;

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    routeObserver.updateToLabel(widget.label);
    // Route was pushed onto navigator and is now topmost route.
  }

  @override
  void didPopNext() {
    routeObserver.updateFromLabel(widget.label);
    // Covering route was popped off the navigator.
  }
}
