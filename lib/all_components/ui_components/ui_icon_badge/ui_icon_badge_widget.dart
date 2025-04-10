import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'ui_icon_badge_model.dart';
export 'ui_icon_badge_model.dart';

class UiIconBadgeWidget extends StatefulWidget {
  const UiIconBadgeWidget({
    super.key,
    this.icon,
  });

  final Widget? icon;

  @override
  State<UiIconBadgeWidget> createState() => _UiIconBadgeWidgetState();
}

class _UiIconBadgeWidgetState extends State<UiIconBadgeWidget> {
  late UiIconBadgeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiIconBadgeModel());

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
      width: 32.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).success30,
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).success30,
          width: 2.0,
        ),
      ),
      child: widget.icon!,
    );
  }
}
