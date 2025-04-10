import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_main_model.dart';
export 'page_main_model.dart';

class PageMainWidget extends StatefulWidget {
  const PageMainWidget({
    super.key,
    required this.sectionTopLeft,
    required this.sectionTopRight,
    required this.section01,
    required this.section02,
  });

  final Widget Function()? sectionTopLeft;
  final Widget Function()? sectionTopRight;
  final Widget Function()? section01;
  final Widget Function()? section02;

  @override
  State<PageMainWidget> createState() => _PageMainWidgetState();
}

class _PageMainWidgetState extends State<PageMainWidget> {
  late PageMainModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageMainModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Builder(builder: (_) {
                          return widget.sectionTopLeft!();
                        }),
                      ),
                      Builder(builder: (_) {
                        return widget.sectionTopRight!();
                      }),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ),
              Builder(builder: (_) {
                return widget.section01!();
              }),
              Builder(builder: (_) {
                return widget.section02!();
              }),
            ].divide(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
