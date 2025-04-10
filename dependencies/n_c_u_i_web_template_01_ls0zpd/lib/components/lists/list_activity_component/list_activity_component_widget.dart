import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_activity_component_model.dart';
export 'list_activity_component_model.dart';

class ListActivityComponentWidget extends StatefulWidget {
  const ListActivityComponentWidget({
    super.key,
    required this.dateTime,
    String? name,
    this.description,
    bool? unread,
  })  : this.name = name ?? 'Andrew',
        this.unread = unread ?? false;

  final DateTime? dateTime;
  final String name;
  final String? description;
  final bool unread;

  @override
  State<ListActivityComponentWidget> createState() =>
      _ListActivityComponentWidgetState();
}

class _ListActivityComponentWidgetState
    extends State<ListActivityComponentWidget> {
  late ListActivityComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListActivityComponentModel());

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
      constraints: BoxConstraints(
        maxWidth: 1400.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 2.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Container(
                      width: 12.0,
                      height: 12.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: dateTimeFormat("MMMEd", widget!.dateTime),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          TextSpan(
                            text: ', ',
                            style: TextStyle(),
                          ),
                          TextSpan(
                            text: dateTimeFormat("jm", widget!.dateTime),
                            style: TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                ),
                if (widget!.unread)
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 4.0),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 0.0,
                            color: FlutterFlowTheme.of(context).accent1,
                            offset: Offset(
                              0.0,
                              0.0,
                            ),
                            spreadRadius: 2.0,
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
              ].divide(SizedBox(width: 8.0)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 0.0,
                      color: FlutterFlowTheme.of(context).alternate,
                      offset: Offset(
                        -2.0,
                        0.0,
                      ),
                    )
                  ],
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: widget!.name,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              TextSpan(
                                text: ' ',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  widget!.description,
                                  '--',
                                ),
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
