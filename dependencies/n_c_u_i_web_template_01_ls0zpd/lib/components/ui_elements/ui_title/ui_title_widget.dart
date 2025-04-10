import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_title_model.dart';
export 'ui_title_model.dart';

class UiTitleWidget extends StatefulWidget {
  const UiTitleWidget({
    super.key,
    String? title,
    String? subTitle,
  })  : this.title = title ?? 'Start New Chat',
        this.subTitle = subTitle ?? 'Start a new chat with the user below.';

  final String title;
  final String subTitle;

  @override
  State<UiTitleWidget> createState() => _UiTitleWidgetState();
}

class _UiTitleWidgetState extends State<UiTitleWidget> {
  late UiTitleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiTitleModel());

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
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget!.title,
              textAlign: TextAlign.end,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              widget!.subTitle,
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Plus Jakarta Sans',
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ),
    );
  }
}
