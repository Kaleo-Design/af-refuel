import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'list_run_card_model.dart';
export 'list_run_card_model.dart';

class ListRunCardWidget extends StatefulWidget {
  const ListRunCardWidget({
    super.key,
    required this.dateTime,
    String? pftScore,
  }) : this.pftScore = pftScore ?? '45';

  final DateTime? dateTime;
  final String pftScore;

  @override
  State<ListRunCardWidget> createState() => _ListRunCardWidgetState();
}

class _ListRunCardWidgetState extends State<ListRunCardWidget> {
  late ListRunCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListRunCardModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                      color: dateTimeFormat("yMd", widget.dateTime) ==
                              dateTimeFormat("yMd", getCurrentTimestamp)
                          ? FlutterFlowTheme.of(context).warning
                          : FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        color: dateTimeFormat("yMd", widget.dateTime) ==
                                dateTimeFormat("yMd", getCurrentTimestamp)
                            ? FlutterFlowTheme.of(context).error
                            : FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: AutoSizeText(
                        dateTimeFormat("d", widget.dateTime),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        minFontSize: 16.0,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    width: 2.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(2.0),
                        topRight: Radius.circular(2.0),
                      ),
                    ),
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  dateTimeFormat("MMMMEEEEd", widget.dateTime),
                                  'Tuesday, March 4',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '20:40',
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: ' total time',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '1.5',
                                      style: TextStyle(),
                                    ),
                                    TextSpan(
                                      text: ' total miles',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                        Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.pftScore.maybeHandleOverflow(
                                  maxChars: 2,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Text(
                                'PFT',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4.0)),
                          ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    Divider(
                      height: 4.0,
                      thickness: 1.0,
                      indent: 0.0,
                      endIndent: 0.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 8.0, 4.0, 4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  FFIcons.kheart,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '421',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: ' /Kcals',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  FFIcons.kclockStopwatch,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '9:23',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: ' /avg. pace',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                        ].divide(SizedBox(width: 12.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
        ),
      ),
    );
  }
}
