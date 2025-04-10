import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'track_running_graph_archive_model.dart';
export 'track_running_graph_archive_model.dart';

class TrackRunningGraphArchiveWidget extends StatefulWidget {
  const TrackRunningGraphArchiveWidget({super.key});

  @override
  State<TrackRunningGraphArchiveWidget> createState() =>
      _TrackRunningGraphArchiveWidgetState();
}

class _TrackRunningGraphArchiveWidgetState
    extends State<TrackRunningGraphArchiveWidget>
    with TickerProviderStateMixin {
  late TrackRunningGraphArchiveModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackRunningGraphArchiveModel());

    animationsMap.addAll({
      'chartOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<n_c_u_i_web_template_01_ls0zpd_app_state.FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
          child: Container(
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: FlutterFlowLineChart(
                      data: [
                        FFLineChartData(
                          xData: functions.getLast7Days(getCurrentTimestamp)!,
                          yData: FFAppState().dummyRunningData,
                          settings: LineChartBarData(
                            color: FlutterFlowTheme.of(context).success,
                            barWidth: 2.0,
                            belowBarData: BarAreaData(
                              show: true,
                              color: FlutterFlowTheme.of(context).success30,
                            ),
                          ),
                        )
                      ],
                      chartStylingInfo: ChartStylingInfo(
                        backgroundColor: FlutterFlowTheme.of(context).overlay0,
                        showGrid: true,
                        showBorder: false,
                      ),
                      axisBounds: AxisBounds(
                        minY: 6.0,
                        maxY: 12.0,
                      ),
                      xAxisLabelInfo: AxisLabelInfo(
                        reservedSize: 32.0,
                      ),
                      yAxisLabelInfo: AxisLabelInfo(
                        title: 'Avg. Pace',
                        titleTextStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                        reservedSize: 40.0,
                      ),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['chartOnPageLoadAnimation']!),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 2.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).success600,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(2.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(2.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).success600,
                            ),
                          ),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).success630,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Goal: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText50,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      TextSpan(
                                        text: '9:12/mile (57.0)',
                                        style: TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 12.0,
                          height: 2.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).success600,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(2.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(2.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 64.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 12.0,
                          height: 2.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(2.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(2.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                        ),
                        Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                          child: Container(
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent2,
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Avg: ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText50,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      TextSpan(
                                        text: '9:34/mile (51.5)',
                                        style: TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 100.0,
                            height: 2.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(2.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(2.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
