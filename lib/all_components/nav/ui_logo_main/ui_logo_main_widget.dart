import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'ui_logo_main_model.dart';
export 'ui_logo_main_model.dart';

class UiLogoMainWidget extends StatefulWidget {
  const UiLogoMainWidget({super.key});

  @override
  State<UiLogoMainWidget> createState() => _UiLogoMainWidgetState();
}

class _UiLogoMainWidgetState extends State<UiLogoMainWidget> {
  late UiLogoMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiLogoMainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: Image.asset(
        Theme.of(context).brightness == Brightness.dark
            ? 'assets/images/logo_light@3x.png'
            : 'assets/images/logo_dark@3x.png',
        height: 36.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
