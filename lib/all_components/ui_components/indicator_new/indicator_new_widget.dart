import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'indicator_new_model.dart';
export 'indicator_new_model.dart';

class IndicatorNewWidget extends StatefulWidget {
  const IndicatorNewWidget({
    super.key,
    this.color,
  });

  final Color? color;

  @override
  State<IndicatorNewWidget> createState() => _IndicatorNewWidgetState();
}

class _IndicatorNewWidgetState extends State<IndicatorNewWidget> {
  late IndicatorNewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IndicatorNewModel());

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
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: widget.color,
        boxShadow: [
          BoxShadow(
            blurRadius: 0.0,
            color: valueOrDefault<Color>(
              functions.returnColor30Opacity(valueOrDefault<Color>(
                widget.color,
                FlutterFlowTheme.of(context).primary,
              )),
              FlutterFlowTheme.of(context).accent1,
            ),
            offset: Offset(
              0.0,
              0.0,
            ),
            spreadRadius: 4.0,
          )
        ],
        shape: BoxShape.circle,
      ),
    );
  }
}
