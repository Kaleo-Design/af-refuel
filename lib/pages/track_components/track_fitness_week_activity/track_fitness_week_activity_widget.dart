import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'track_fitness_week_activity_model.dart';
export 'track_fitness_week_activity_model.dart';

class TrackFitnessWeekActivityWidget extends StatefulWidget {
  const TrackFitnessWeekActivityWidget({super.key});

  @override
  State<TrackFitnessWeekActivityWidget> createState() =>
      _TrackFitnessWeekActivityWidgetState();
}

class _TrackFitnessWeekActivityWidgetState
    extends State<TrackFitnessWeekActivityWidget> {
  late TrackFitnessWeekActivityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackFitnessWeekActivityModel());

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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
              child: wrapWithModel(
                model: _model.uiHeaderSubModel,
                updateCallback: () => safeSetState(() {}),
                child: UiHeaderSubWidget(
                  title: 'Weekly Workouts',
                  subtitle:
                      'Below is a comparision of your weekly work vs. past weeks of working out.',
                  header: false,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '4 ',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          TextSpan(
                            text: 'activities/day',
                            style: TextStyle(),
                          )
                        ],
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Text(
                    'This Week',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                  LinearPercentIndicator(
                    percent: 0.5,
                    lineHeight: 12.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: FlutterFlowTheme.of(context).success,
                    backgroundColor: FlutterFlowTheme.of(context).success30,
                    barRadius: Radius.circular(4.0),
                    padding: EdgeInsets.zero,
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '7/36',
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          TextSpan(
                            text: '/weekly goal',
                            style: TextStyle(),
                          )
                        ],
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  ),
                  Text(
                    'This Week',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                  LinearPercentIndicator(
                    percent: 0.14,
                    lineHeight: 12.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: FlutterFlowTheme.of(context).success,
                    backgroundColor: FlutterFlowTheme.of(context).success30,
                    barRadius: Radius.circular(4.0),
                    padding: EdgeInsets.zero,
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
          ]
              .divide(SizedBox(height: 12.0))
              .addToStart(SizedBox(height: 12.0))
              .addToEnd(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
