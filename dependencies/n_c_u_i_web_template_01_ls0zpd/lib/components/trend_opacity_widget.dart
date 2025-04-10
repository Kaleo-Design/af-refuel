import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trend_opacity_model.dart';
export 'trend_opacity_model.dart';

class TrendOpacityWidget extends StatefulWidget {
  const TrendOpacityWidget({
    super.key,
    required this.activity,
  });

  final double? activity;

  @override
  State<TrendOpacityWidget> createState() => _TrendOpacityWidgetState();
}

class _TrendOpacityWidgetState extends State<TrendOpacityWidget> {
  late TrendOpacityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrendOpacityModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget!.activity!,
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).accent1,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
