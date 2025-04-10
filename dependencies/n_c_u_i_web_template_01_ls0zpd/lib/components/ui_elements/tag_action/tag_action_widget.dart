import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tag_action_model.dart';
export 'tag_action_model.dart';

class TagActionWidget extends StatefulWidget {
  const TagActionWidget({
    super.key,
    String? text,
    this.accentColor,
    this.fillColor,
    required this.action,
    required this.icon,
  }) : this.text = text ?? 'Active';

  final String text;
  final Color? accentColor;
  final Color? fillColor;
  final Future Function()? action;
  final Widget? icon;

  @override
  State<TagActionWidget> createState() => _TagActionWidgetState();
}

class _TagActionWidgetState extends State<TagActionWidget> {
  late TagActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagActionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.action?.call();
      },
      child: Container(
        height: 32.0,
        decoration: BoxDecoration(
          color: valueOrDefault<Color>(
            widget!.accentColor,
            FlutterFlowTheme.of(context).accent1,
          ),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget!.accentColor,
              FlutterFlowTheme.of(context).accent1,
            ),
            width: 2.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget!.text,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      color: valueOrDefault<Color>(
                        widget!.fillColor,
                        FlutterFlowTheme.of(context).primary,
                      ),
                      letterSpacing: 0.0,
                    ),
              ),
              widget!.icon!,
            ].divide(SizedBox(width: 8.0)),
          ),
        ),
      ),
    );
  }
}
