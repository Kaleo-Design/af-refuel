import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'track_v_o2_max_graph_model.dart';
export 'track_v_o2_max_graph_model.dart';

class TrackVO2MaxGraphWidget extends StatefulWidget {
  const TrackVO2MaxGraphWidget({super.key});

  @override
  State<TrackVO2MaxGraphWidget> createState() => _TrackVO2MaxGraphWidgetState();
}

class _TrackVO2MaxGraphWidgetState extends State<TrackVO2MaxGraphWidget>
    with TickerProviderStateMixin {
  late TrackVO2MaxGraphModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackVO2MaxGraphModel());

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
    return Builder(
      builder: (context) {
        if (false) {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 770.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'VO',
                                    style: TextStyle(),
                                  ),
                                  TextSpan(
                                    text: '2 ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  TextSpan(
                                    text: 'max',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
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
                            wrapWithModel(
                              model: _model.uiTagModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: UiTagWidget(
                                title: 'High',
                                accentColor:
                                    FlutterFlowTheme.of(context).warning,
                                primaryColor:
                                    FlutterFlowTheme.of(context).error,
                                height: 24.0,
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                1.0, 0.0, 0.0, 0.0),
                            child: Container(
                              height: 204.0,
                              child: Stack(
                                children: [
                                  Opacity(
                                    opacity: 0.8,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  1.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        56.0, 0.0, 0.0, 0.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 84.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success630,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 0.0,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success630,
                                                        offset: Offset(
                                                          0.0,
                                                          -2.0,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      56.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 70.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent2,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 0.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
                                                      offset: Offset(
                                                        0.0,
                                                        -2.0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      56.0, 0.0, 0.0, 4.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .warning,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 0.0,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .warning,
                                                      offset: Offset(
                                                        0.0,
                                                        -2.0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 190.0,
                                      child: FlutterFlowLineChart(
                                        data: [
                                          FFLineChartData(
                                            xData: functions.getLast7Days(
                                                getCurrentTimestamp)!,
                                            yData: List.generate(
                                                random_data.randomInteger(7, 7),
                                                (index) => random_data
                                                    .randomInteger(24, 50)),
                                            settings: LineChartBarData(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              barWidth: 2.0,
                                              isCurved: true,
                                              preventCurveOverShooting: true,
                                            ),
                                          )
                                        ],
                                        chartStylingInfo: ChartStylingInfo(
                                          enableTooltip: true,
                                          tooltipBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent4,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .overlay0,
                                          showGrid: true,
                                          showBorder: false,
                                        ),
                                        axisBounds: AxisBounds(
                                          minY: 20.0,
                                          maxY: 60.0,
                                        ),
                                        xAxisLabelInfo: AxisLabelInfo(
                                          reservedSize: 32.0,
                                        ),
                                        yAxisLabelInfo: AxisLabelInfo(
                                          title: 'Avg. Pace',
                                          titleTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily: 'Figtree',
                                                    letterSpacing: 0.0,
                                                  ),
                                          showLabels: true,
                                          labelTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .override(
                                                    fontFamily: 'Figtree',
                                                    letterSpacing: 0.0,
                                                  ),
                                          labelInterval: 10.0,
                                          reservedSize: 32.0,
                                        ),
                                      ),
                                    ).animateOnPageLoad(animationsMap[
                                        'chartOnPageLoadAnimation']!),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 24.0,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              64.0, 4.0, 12.0, 4.0),
                          child: Builder(
                            builder: (context) {
                              final last7Days = functions
                                      .getLast7Days(getCurrentTimestamp)
                                      ?.sortedList(
                                          keyOf: (e) =>
                                              dateTimeFormat("yMd", e),
                                          desc: false)
                                      .toList() ??
                                  [];

                              return Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(last7Days.length,
                                    (last7DaysIndex) {
                                  final last7DaysItem =
                                      last7Days[last7DaysIndex];
                                  return Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat("Md", last7DaysItem),
                                      '--',
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  );
                                }).divide(SizedBox(width: 12.0)),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ].addToEnd(SizedBox(height: 0.0)),
              ),
            ),
          );
        } else {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              width: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 770.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Your VO',
                                style: TextStyle(),
                              ),
                              TextSpan(
                                text: '2 ',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              TextSpan(
                                text: 'max',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
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
                        wrapWithModel(
                          model: _model.uiTagModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: UiTagWidget(
                            title: 'Good',
                            accentColor: FlutterFlowTheme.of(context).success30,
                            primaryColor: FlutterFlowTheme.of(context).success,
                            height: 24.0,
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '47',
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                        ),
                        Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '+2',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Icon(
                                    FFIcons.ktrendUp01,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 20.0,
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                    Text(
                      'Congrats, you have increased your VO2 Max by 2 points over the last 3 months.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ]
                      .divide(SizedBox(height: 8.0))
                      .addToEnd(SizedBox(height: 0.0)),
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
