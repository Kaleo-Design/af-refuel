import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_notification01_model.dart';
export 'list_notification01_model.dart';

class ListNotification01Widget extends StatefulWidget {
  const ListNotification01Widget({
    super.key,
    this.unread,
    this.title,
    String? description,
    String? subTItle,
  })  : this.description = description ?? 'I did a thing here.',
        this.subTItle = subTItle ?? 'July, 8th @ 2:30pm';

  final bool? unread;
  final String? title;
  final String description;
  final String subTItle;

  @override
  State<ListNotification01Widget> createState() =>
      _ListNotification01WidgetState();
}

class _ListNotification01WidgetState extends State<ListNotification01Widget> {
  late ListNotification01Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListNotification01Model());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 0.0,
            color: FlutterFlowTheme.of(context).alternate,
            offset: Offset(
              0.0,
              1.0,
            ),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: valueOrDefault<String>(
                            widget!.title,
                            'New Task',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: widget!.description,
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Plus Jakarta Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                if (valueOrDefault<bool>(
                  widget!.unread,
                  true,
                ))
                  Container(
                    width: 12.0,
                    height: 12.0,
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
                          spreadRadius: 4.0,
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                  ),
              ].divide(SizedBox(width: 12.0)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: Text(
                widget!.subTItle,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
