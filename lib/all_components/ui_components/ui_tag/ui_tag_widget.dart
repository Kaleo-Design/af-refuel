import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'ui_tag_model.dart';
export 'ui_tag_model.dart';

class UiTagWidget extends StatefulWidget {
  const UiTagWidget({
    super.key,
    String? title,
    this.accentColor,
    this.primaryColor,
    double? height,
  })  : this.title = title ?? '3 Day Streak',
        this.height = height ?? 24.0;

  final String title;
  final Color? accentColor;
  final Color? primaryColor;
  final double height;

  @override
  State<UiTagWidget> createState() => _UiTagWidgetState();
}

class _UiTagWidgetState extends State<UiTagWidget> {
  late UiTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiTagModel());

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
      height: widget.height,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.accentColor,
          FlutterFlowTheme.of(context).accent2,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
          child: Text(
            valueOrDefault<String>(
              widget.title,
              '3 Day Streak',
            ),
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodySmall.override(
                  fontFamily: 'Figtree',
                  color: valueOrDefault<Color>(
                    widget.primaryColor,
                    FlutterFlowTheme.of(context).secondary,
                  ),
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ),
    );
  }
}
