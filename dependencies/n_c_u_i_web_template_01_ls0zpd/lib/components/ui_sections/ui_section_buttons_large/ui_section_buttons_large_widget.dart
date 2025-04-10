import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_section_buttons_large_model.dart';
export 'ui_section_buttons_large_model.dart';

class UiSectionButtonsLargeWidget extends StatefulWidget {
  const UiSectionButtonsLargeWidget({
    super.key,
    required this.actionPositive,
    required this.actionNeutral,
    String? titlePositive,
    String? titleNeutral,
  })  : this.titlePositive = titlePositive ?? 'Reset Password',
        this.titleNeutral = titleNeutral ?? 'Cancel';

  final Future Function()? actionPositive;
  final Future Function()? actionNeutral;
  final String titlePositive;
  final String titleNeutral;

  @override
  State<UiSectionButtonsLargeWidget> createState() =>
      _UiSectionButtonsLargeWidgetState();
}

class _UiSectionButtonsLargeWidgetState
    extends State<UiSectionButtonsLargeWidget> {
  late UiSectionButtonsLargeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiSectionButtonsLargeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FFButtonWidget(
          onPressed: () async {
            await widget.actionNeutral?.call();
          },
          text: widget!.titleNeutral,
          options: FFButtonOptions(
            height: 48.0,
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).secondaryBackground,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).alternate,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
            hoverColor: FlutterFlowTheme.of(context).alternate,
            hoverBorderSide: BorderSide(
              color: FlutterFlowTheme.of(context).alternate,
              width: 2.0,
            ),
            hoverTextColor: FlutterFlowTheme.of(context).primaryText,
            hoverElevation: 3.0,
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            await widget.actionPositive?.call();
          },
          text: widget!.titlePositive,
          options: FFButtonOptions(
            height: 48.0,
            padding: EdgeInsetsDirectional.fromSTEB(44.0, 0.0, 44.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  letterSpacing: 0.0,
                ),
            elevation: 3.0,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(12.0),
            hoverColor: FlutterFlowTheme.of(context).accent1,
            hoverBorderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 1.0,
            ),
            hoverTextColor: FlutterFlowTheme.of(context).primaryText,
            hoverElevation: 0.0,
          ),
        ),
      ].divide(SizedBox(width: 16.0)),
    );
  }
}
