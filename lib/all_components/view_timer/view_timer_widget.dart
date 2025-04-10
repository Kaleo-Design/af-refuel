import '/all_components/ui_components/ui_play_toggle/ui_play_toggle_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/flutter_flow/custom_functions.dart'
    as n_c_u_i_web_template_01_ls0zpd_functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'view_timer_model.dart';
export 'view_timer_model.dart';

class ViewTimerWidget extends StatefulWidget {
  const ViewTimerWidget({super.key});

  @override
  State<ViewTimerWidget> createState() => _ViewTimerWidgetState();
}

class _ViewTimerWidgetState extends State<ViewTimerWidget> {
  late ViewTimerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewTimerModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // update_fulltimervalue
      _model.fullTimerValue = 180000;
      safeSetState(() {});
      // preselect
      safeSetState(() {
        _model.choiceChipsValueController?.value = ['5 mins'];
      });
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 330.0,
          height: 330.0,
          child: Stack(
            alignment: AlignmentDirectional(0.0, 0.0),
            children: [
              CircularPercentIndicator(
                percent: valueOrDefault<double>(
                  n_c_u_i_web_template_01_ls0zpd_functions.getProgressBarValue(
                      valueOrDefault<int>(
                        _model.fullTimerValue,
                        0,
                      ),
                      _model.timerMilliseconds),
                  0.0,
                ),
                radius: 165.0,
                lineWidth: 12.0,
                animation: true,
                animateFromLastPercent: true,
                progressColor: FlutterFlowTheme.of(context).primary,
                backgroundColor: FlutterFlowTheme.of(context).accent1,
                center: Text(
                  valueOrDefault<String>(
                    _model.timerValue,
                    '00:00',
                  ).maybeHandleOverflow(
                    maxChars: 5,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowTimer(
                    initialTime: valueOrDefault<int>(
                      _model.choiceChipsValue == '5 mins' ? 180000 : 1500000,
                      180000,
                    ),
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController,
                    updateStateInterval: Duration(milliseconds: 100),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds = value;
                      _model.timerValue = displayTime;
                      if (shouldUpdate) safeSetState(() {});
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).displayLarge.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: Text(
            'Pomodoro Timer',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 16.0),
          child: Text(
            'Work in 25-minute focus sessions with 5-minute breaks to stay productive and energized.',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: FlutterFlowChoiceChips(
                  options: [ChipData('5 mins'), ChipData('25 mins')],
                  onChanged: (val) async {
                    safeSetState(
                        () => _model.choiceChipsValue = val?.firstOrNull);
                    _model.fullTimerValue = valueOrDefault<int>(
                      _model.choiceChipsValue == '5 mins' ? 180000 : 1500000,
                      180000,
                    );
                    safeSetState(() {});
                  },
                  selectedChipStyle: ChipStyle(
                    backgroundColor: FlutterFlowTheme.of(context).accent1,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                    iconColor: FlutterFlowTheme.of(context).info,
                    iconSize: 16.0,
                    labelPadding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                    elevation: 0.0,
                    borderColor: FlutterFlowTheme.of(context).primary,
                    borderWidth: 2.0,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor: FlutterFlowTheme.of(context).overlay0,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Figtree',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                        ),
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    iconSize: 16.0,
                    labelPadding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 8.0, 4.0),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  chipSpacing: 4.0,
                  rowSpacing: 8.0,
                  multiselect: false,
                  initialized: _model.choiceChipsValue != null,
                  alignment: WrapAlignment.start,
                  controller: _model.choiceChipsValueController ??=
                      FormFieldController<List<String>>(
                    ['5 mins'],
                  ),
                  wrapped: true,
                ),
              ),
            ),
          ),
        ),
        wrapWithModel(
          model: _model.uiPlayToggleModel,
          updateCallback: () => safeSetState(() {}),
          updateOnChange: true,
          child: UiPlayToggleWidget(
            isPlaying: _model.timerPlaying,
            action: () async {
              if (_model.uiPlayToggleModel.isPlayingState == true) {
                // stop_timer
                _model.timerController.onStopTimer();
              } else {
                // start_timer
                _model.timerController.onStartTimer();
              }
            },
          ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
