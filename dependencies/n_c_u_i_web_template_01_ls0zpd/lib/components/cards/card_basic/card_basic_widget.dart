import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_basic_model.dart';
export 'card_basic_model.dart';

class CardBasicWidget extends StatefulWidget {
  const CardBasicWidget({
    super.key,
    String? title,
    String? subTitle,
    this.section01,
    required this.section02,
  })  : this.title = title ?? 'Start New Chat',
        this.subTitle = subTitle ?? 'Start a new chat with the user below.';

  final String title;
  final String subTitle;
  final Widget Function()? section01;
  final Widget Function()? section02;

  @override
  State<CardBasicWidget> createState() => _CardBasicWidgetState();
}

class _CardBasicWidgetState extends State<CardBasicWidget> {
  late CardBasicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardBasicModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(valueOrDefault<double>(
        FFAppConstants.sizeLarge.toDouble(),
        0.0,
      )),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 570.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(valueOrDefault<double>(
            FFAppConstants.sizeMedium.toDouble(),
            0.0,
          )),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.uiTitleModel,
                updateCallback: () => safeSetState(() {}),
                child: UiTitleWidget(
                  title: widget!.title,
                  subTitle: widget!.subTitle,
                ),
              ),
              Divider(
                height: 2.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Builder(builder: (_) {
                return widget.section01!();
              }),
              Builder(builder: (_) {
                return widget.section02!();
              }),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
