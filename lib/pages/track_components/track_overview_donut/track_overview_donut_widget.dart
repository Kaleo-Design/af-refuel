import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'track_overview_donut_model.dart';
export 'track_overview_donut_model.dart';

class TrackOverviewDonutWidget extends StatefulWidget {
  const TrackOverviewDonutWidget({super.key});

  @override
  State<TrackOverviewDonutWidget> createState() =>
      _TrackOverviewDonutWidgetState();
}

class _TrackOverviewDonutWidgetState extends State<TrackOverviewDonutWidget>
    with TickerProviderStateMixin {
  late TrackOverviewDonutModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackOverviewDonutModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
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
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.8,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.349, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.349, 0),
            end: Offset(0, 0),
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
    final chartPieChartColorsList = [
      FlutterFlowTheme.of(context).primary,
      FlutterFlowTheme.of(context).success,
      FlutterFlowTheme.of(context).success600,
      FlutterFlowTheme.of(context).primary500,
      FlutterFlowTheme.of(context).primary300
    ];
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
          child: Container(
            width: 296.0,
            height: 296.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).overlay0,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4.0,
                  color: FlutterFlowTheme.of(context).overlay30,
                  offset: Offset(
                    0.0,
                    -4.0,
                  ),
                )
              ],
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).overlay30,
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Container(
                      height: 270.0,
                      child: FlutterFlowPieChart(
                        data: FFPieChartData(
                          values: FFAppState()
                              .pillars
                              .map((e) => e.pillerBreakdown)
                              .toList(),
                          colors: chartPieChartColorsList,
                          radius: [24.0],
                          borderWidth: [0.0],
                          borderColor: [
                            FlutterFlowTheme.of(context).secondaryBackground
                          ],
                        ),
                        donutHoleRadius: 120.0,
                        donutHoleColor: FlutterFlowTheme.of(context).overlay0,
                        sectionLabelStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['chartOnPageLoadAnimation']!),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3.0,
                                color: FlutterFlowTheme.of(context).accent4,
                                offset: Offset(
                                  0.0,
                                  1.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+8 this week',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Icon(
                                  FFIcons.ktrendUp01,
                                  color: FlutterFlowTheme.of(context).success,
                                  size: 20.0,
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                      Text(
                        '89',
                        style:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                      Text(
                        'Life Balance Score',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ].divide(SizedBox(height: 4.0)),
                  ),
                ],
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
          child: Container(
            height: 32.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: FlutterFlowTheme.of(context).accent4,
                  offset: Offset(
                    0.0,
                    1.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                    child: Text(
                      'Readiness Score',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Text(
                    '74',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.asset(
                      'assets/images/app_icon.png',
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation3']!),
        ),
      ],
    );
  }
}
