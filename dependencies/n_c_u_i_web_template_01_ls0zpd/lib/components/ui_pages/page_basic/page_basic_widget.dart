import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_basic_model.dart';
export 'page_basic_model.dart';

class PageBasicWidget extends StatefulWidget {
  const PageBasicWidget({
    super.key,
    required this.sectionTopLeft,
    required this.sectionTopRight,
    required this.sectionMain,
  });

  final Widget Function()? sectionTopLeft;
  final Widget Function()? sectionTopRight;
  final Widget Function()? sectionMain;

  @override
  State<PageBasicWidget> createState() => _PageBasicWidgetState();
}

class _PageBasicWidgetState extends State<PageBasicWidget> {
  late PageBasicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageBasicModel());

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
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Builder(builder: (_) {
                    return widget.sectionMain!();
                  }),
                ),
              ),
            ].divide(SizedBox(height: 12.0)),
          ),
        ),
      ),
    );
  }
}
