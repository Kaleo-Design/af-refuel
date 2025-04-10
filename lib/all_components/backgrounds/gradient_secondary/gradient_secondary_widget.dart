import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'gradient_secondary_model.dart';
export 'gradient_secondary_model.dart';

class GradientSecondaryWidget extends StatefulWidget {
  const GradientSecondaryWidget({super.key});

  @override
  State<GradientSecondaryWidget> createState() =>
      _GradientSecondaryWidgetState();
}

class _GradientSecondaryWidgetState extends State<GradientSecondaryWidget> {
  late GradientSecondaryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GradientSecondaryModel());

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
      width: double.infinity,
      height: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 3000.0,
        maxHeight: 3000.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFFFCCE8), FlutterFlowTheme.of(context).error],
          stops: [0.0, 1.0],
          begin: AlignmentDirectional(1.0, -0.64),
          end: AlignmentDirectional(-1.0, 0.64),
        ),
      ),
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0x00FF9501), FlutterFlowTheme.of(context).secondary],
            stops: [0.5, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                FlutterFlowTheme.of(context).overlay0,
                FlutterFlowTheme.of(context).secondaryBackground
              ],
              stops: [0.0, 0.9],
              begin: AlignmentDirectional(0.0, -1.0),
              end: AlignmentDirectional(0, 1.0),
            ),
          ),
        ),
      ),
    );
  }
}
