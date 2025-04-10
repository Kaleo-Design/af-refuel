import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_container_model.dart';
export 'nav_container_model.dart';

class NavContainerWidget extends StatefulWidget {
  const NavContainerWidget({
    super.key,
    required this.widget,
  });

  final Widget Function()? widget;

  @override
  State<NavContainerWidget> createState() => _NavContainerWidgetState();
}

class _NavContainerWidgetState extends State<NavContainerWidget> {
  late NavContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavContainerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Builder(builder: (_) {
        return widget.widget!();
      }),
    );
  }
}
