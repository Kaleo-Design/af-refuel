import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/components/view_select_value_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_goals_onboarding_model.dart';
export 'view_goals_onboarding_model.dart';

class ViewGoalsOnboardingWidget extends StatefulWidget {
  const ViewGoalsOnboardingWidget({super.key});

  @override
  State<ViewGoalsOnboardingWidget> createState() =>
      _ViewGoalsOnboardingWidgetState();
}

class _ViewGoalsOnboardingWidgetState extends State<ViewGoalsOnboardingWidget> {
  late ViewGoalsOnboardingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewGoalsOnboardingModel());

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

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Topic 1/3',
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Figtree',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                      ),
                ),
                wrapWithModel(
                  model: _model.uiHeaderSubModel,
                  updateCallback: () => safeSetState(() {}),
                  child: UiHeaderSubWidget(
                    title: 'Workout Type Prefrences',
                    subtitle: 'I like to do the following types of workouts.',
                    header: false,
                  ),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Text(
                      'I want to workout',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Container(
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent1,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).accent1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Text(
                                '4x',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'a',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          barrierColor: FlutterFlowTheme.of(context).accent4,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: ViewSelectValueWidget(
                                options: TimeInterval.values
                                    .map((e) => e.name)
                                    .toList(),
                                maxHeight: 470.0,
                                title: 'Please select your workout interval',
                              ),
                            );
                          },
                        ).then((value) =>
                            safeSetState(() => _model.updatedWeek = value));

                        safeSetState(() {});
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: _model.updatedWeek != null &&
                                  (_model.updatedWeek)!.isNotEmpty
                              ? FlutterFlowTheme.of(context).accent1
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: _model.updatedWeek != null &&
                                    (_model.updatedWeek)!.isNotEmpty
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context).alternate,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    _model.updatedWeek?.firstOrNull,
                                    'Select',
                                  ),
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'and I want to focus on',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          barrierColor: FlutterFlowTheme.of(context).accent4,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: ViewSelectValueWidget(
                                options: FFAppState().workout,
                                maxHeight: 470.0,
                                title: 'Please select your workout interval',
                              ),
                            );
                          },
                        ).then((value) =>
                            safeSetState(() => _model.selectedWorkout = value));

                        safeSetState(() {});
                      },
                      child: Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            _model.selectedWorkout != null &&
                                    (_model.selectedWorkout)!.isNotEmpty
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              _model.selectedWorkout != null &&
                                      (_model.selectedWorkout)!.isNotEmpty
                                  ? FlutterFlowTheme.of(context).accent1
                                  : FlutterFlowTheme.of(context).alternate,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    _model.selectedWorkout?.firstOrNull,
                                    'Select',
                                  ),
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'with specific areas of: ',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          barrierColor: FlutterFlowTheme.of(context).accent4,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: ViewSelectValueWidget(
                                options: FFAppState().workoutAreas,
                                maxHeight: 770.0,
                                title: 'Please select your areas',
                              ),
                            );
                          },
                        ).then((value) =>
                            safeSetState(() => _model.selectedArea = value));

                        safeSetState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            _model.selectedArea != null &&
                                    (_model.selectedArea)!.isNotEmpty
                                ? FlutterFlowTheme.of(context).accent1
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            FlutterFlowTheme.of(context).secondaryBackground,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              _model.selectedArea != null &&
                                      (_model.selectedArea)!.isNotEmpty
                                  ? FlutterFlowTheme.of(context).accent1
                                  : FlutterFlowTheme.of(context).alternate,
                              FlutterFlowTheme.of(context).alternate,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 4.0),
                          child: Builder(
                            builder: (context) {
                              if (_model.selectedArea != null &&
                                  (_model.selectedArea)!.isNotEmpty) {
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 2.0, 8.0, 2.0),
                                  child: Builder(
                                    builder: (context) {
                                      final specificAreas =
                                          _model.selectedArea?.toList() ?? [];

                                      return Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children:
                                            List.generate(specificAreas.length,
                                                (specificAreasIndex) {
                                          final specificAreasItem =
                                              specificAreas[specificAreasIndex];
                                          return Text(
                                            valueOrDefault<String>(
                                              '${specificAreasItem}, ',
                                              'Select Area',
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Text(
                                          'Select',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]
                  .divide(SizedBox(height: 12.0))
                  .addToStart(SizedBox(height: 12.0))
                  .addToEnd(SizedBox(height: 12.0)),
            ),
          ),
        ],
      ),
    );
  }
}
