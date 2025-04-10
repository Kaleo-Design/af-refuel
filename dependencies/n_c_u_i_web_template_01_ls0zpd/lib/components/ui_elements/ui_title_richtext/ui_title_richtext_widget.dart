import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ui_title_richtext_model.dart';
export 'ui_title_richtext_model.dart';

class UiTitleRichtextWidget extends StatefulWidget {
  const UiTitleRichtextWidget({
    super.key,
    this.subtitle,
    String? titleOne,
    String? titleTwo,
  })  : this.titleOne = titleOne ?? 'Hello, ',
        this.titleTwo = titleTwo ?? 'Andrew';

  final String? subtitle;
  final String titleOne;
  final String titleTwo;

  @override
  State<UiTitleRichtextWidget> createState() => _UiTitleRichtextWidgetState();
}

class _UiTitleRichtextWidgetState extends State<UiTitleRichtextWidget> {
  late UiTitleRichtextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiTitleRichtextModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          textScaler: MediaQuery.of(context).textScaler,
          text: TextSpan(
            children: [
              TextSpan(
                text: widget!.titleOne,
                style: TextStyle(),
              ),
              TextSpan(
                text: widget!.titleTwo,
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primary,
                ),
              )
            ],
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.subtitle,
            'Below is an overview of your project.',
          ),
          style: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Plus Jakarta Sans',
                letterSpacing: 0.0,
              ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
