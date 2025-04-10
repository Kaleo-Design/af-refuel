import '/all_components/modals/modal_simple/modal_simple_widget.dart';
import '/all_components/ui_components/ui_message/ui_message_widget.dart';
import '/all_components/ui_components/ui_play_toggle/ui_play_toggle_widget.dart';
import '/all_components/views/view_runs/view_runs_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:n_c_u_i_web_template_01_ls0zpd/flutter_flow/custom_functions.dart'
    as n_c_u_i_web_template_01_ls0zpd_functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'card_workout_pft_model.dart';
export 'card_workout_pft_model.dart';

class CardWorkoutPftWidget extends StatefulWidget {
  const CardWorkoutPftWidget({
    super.key,
    String? title,
    required this.action,
    int? topValue,
    this.pftType,
  })  : this.title = title ?? 'Pushups',
        this.topValue = topValue ?? 20;

  final String title;
  final Future Function()? action;
  final int topValue;
  final PFTTypes? pftType;

  @override
  State<CardWorkoutPftWidget> createState() => _CardWorkoutPftWidgetState();
}

class _CardWorkoutPftWidgetState extends State<CardWorkoutPftWidget>
    with TickerProviderStateMixin {
  late CardWorkoutPftModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardWorkoutPftModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.workoutComplete = false;
      safeSetState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 250.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.873, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 250.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.873, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 250.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
            Text(
              'Enter your rep count or find your run details below.',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
          ].divide(SizedBox(height: 8.0)),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Builder(
            builder: (context) {
              if (widget.pftType == PFTTypes.Running) {
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (_model.showSummary)
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total run time',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 1.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: widget.pftType ==
                                                      PFTTypes.Running
                                                  ? valueOrDefault<String>(
                                                      _model
                                                          .textController.text,
                                                      '16:49',
                                                    )
                                                  : valueOrDefault<String>(
                                                      _model.repNumber
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displayMedium
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '\n4.8% faster than last week',
                                              style: TextStyle(),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Figtree',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.trending_up_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      size: 24.0,
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: CircularPercentIndicator(
                                          percent: valueOrDefault<double>(
                                            n_c_u_i_web_template_01_ls0zpd_functions
                                                .getProgressBarValue(
                                                    valueOrDefault<int>(
                                                      widget.topValue,
                                                      60,
                                                    ),
                                                    48),
                                            0.0,
                                          ),
                                          radius: 35.0,
                                          lineWidth: 8.0,
                                          animation: true,
                                          animateFromLastPercent: true,
                                          progressColor:
                                              FlutterFlowTheme.of(context)
                                                  .success,
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .success30,
                                          center: Text(
                                            valueOrDefault<String>(
                                              widget.pftType ==
                                                      PFTTypes.Running
                                                  ? random_data
                                                      .randomInteger(40, 60)
                                                      .toString()
                                                  : valueOrDefault<String>(
                                                      _model.repNumber
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                              '0',
                                            ),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 4.0)),
                                ),
                              ],
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!),
                      if (!_model.showSummary)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.done,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: true,
                                  hintText: '20:40',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .displayMedium
                                      .override(
                                        fontFamily: 'Figtree',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.textFieldMask],
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                _model.repNumber =
                                    int.tryParse(_model.textController.text);
                                _model.workoutComplete = true;
                                _model.showSummary = true;
                                safeSetState(() {});
                                await widget.action?.call();
                              },
                              text: 'Submit Time',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 44.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).accent1,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).primary,
                                hoverBorderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).info,
                                hoverElevation: 3.0,
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  barrierColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: ModalSimpleWidget(
                                        maxHeight: double.infinity,
                                        title: 'Select a recent run',
                                        subtitle:
                                            'Find a recent run that you have performed in order to match it with this PFT workout.',
                                        widgetContent: () => ViewRunsWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              text: 'Find a recent run',
                              icon: Icon(
                                FFIcons.kroute,
                                size: 15.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 44.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).overlay30,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).accent4,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).alternate,
                                hoverBorderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                hoverTextColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                hoverElevation: 3.0,
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      if (_model.showSummary)
                        GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.0,
                            mainAxisSpacing: 12.0,
                            childAspectRatio: 1.3,
                          ),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            wrapWithModel(
                              model: _model.cardStatsModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: CardStatsWidget(
                                title: 'Your Effort',
                                value: '8',
                                subValue: ' /10',
                                showIcon: false,
                                action: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cardStatsModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: CardStatsWidget(
                                title: 'Calories',
                                value: '859',
                                subValue: ' / Kcal',
                                showIcon: false,
                                action: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cardStatsModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: CardStatsWidget(
                                title: 'Avg. Pace',
                                value: '9:30',
                                subValue: ' /mile',
                                showIcon: false,
                                action: () async {},
                              ),
                            ),
                            wrapWithModel(
                              model: _model.cardStatsModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: CardStatsWidget(
                                title: 'Total Distance',
                                value: '2.0',
                                subValue: ' miles',
                                showIcon: false,
                                action: () async {},
                              ),
                            ),
                          ],
                        ),
                    ]
                        .divide(SizedBox(height: 8.0))
                        .addToStart(SizedBox(height: 8.0)),
                  ),
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if ((_model.workoutComplete == false) &&
                        (_model.showSummary == false))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                        child: Container(
                          width: 210.0,
                          height: 210.0,
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              CircularPercentIndicator(
                                percent:
                                    n_c_u_i_web_template_01_ls0zpd_functions
                                        .getProgressBarValue(
                                            60000, _model.timerMilliseconds)!,
                                radius: 105.0,
                                lineWidth: 12.0,
                                animation: true,
                                animateFromLastPercent: true,
                                progressColor:
                                    FlutterFlowTheme.of(context).primary,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent1,
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: FlutterFlowTimer(
                                  initialTime: _model.timerInitialTimeMs,
                                  getDisplayTime: (value) =>
                                      StopWatchTimer.getDisplayTime(
                                    value,
                                    hours: false,
                                    milliSecond: false,
                                  ),
                                  controller: _model.timerController,
                                  updateStateInterval:
                                      Duration(milliseconds: 100),
                                  onChanged:
                                      (value, displayTime, shouldUpdate) {
                                    _model.timerMilliseconds = value;
                                    _model.timerValue = displayTime;
                                    if (shouldUpdate) safeSetState(() {});
                                  },
                                  onEnded: () async {
                                    // complete_workout
                                    _model.workoutComplete = true;
                                    safeSetState(() {});
                                  },
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .displayLarge
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
                    if ((_model.workoutComplete == false) &&
                        (_model.showSummary == false))
                      wrapWithModel(
                        model: _model.uiPlayToggleModel,
                        updateCallback: () => safeSetState(() {}),
                        updateOnChange: true,
                        child: UiPlayToggleWidget(
                          isPlaying: false,
                          action: () async {
                            if (_model.uiPlayToggleModel.isPlayingState ==
                                true) {
                              // start_timer
                              _model.timerController.onStartTimer();
                            } else {
                              // pause_timer
                              _model.timerController.onStopTimer();
                            }
                          },
                        ),
                      ),
                    if ((_model.workoutComplete == false) &&
                        (_model.showSummary == false))
                      Text(
                        'Start timer to begin!',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    if (_model.showSummary)
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.title,
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 1.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: widget.pftType ==
                                                    PFTTypes.Running
                                                ? valueOrDefault<String>(
                                                    functions
                                                        .convertMillisecondsToTIme(
                                                            valueOrDefault<int>(
                                                      _model.repNumber,
                                                      0,
                                                    )),
                                                    '0',
                                                  )
                                                : valueOrDefault<String>(
                                                    _model.repNumber
                                                        ?.toString(),
                                                    '0',
                                                  ),
                                            style: FlutterFlowTheme.of(context)
                                                .displayMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: '\n34% than last week',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.trending_up_rounded,
                                    color: FlutterFlowTheme.of(context).success,
                                    size: 24.0,
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: CircularPercentIndicator(
                                        percent:
                                            n_c_u_i_web_template_01_ls0zpd_functions
                                                .getProgressBarValue(
                                                    valueOrDefault<int>(
                                                      widget.topValue,
                                                      20,
                                                    ),
                                                    valueOrDefault<int>(
                                                      _model.repNumber,
                                                      0,
                                                    ))!,
                                        radius: 35.0,
                                        lineWidth: 8.0,
                                        animation: true,
                                        animateFromLastPercent: true,
                                        progressColor:
                                            FlutterFlowTheme.of(context)
                                                .success,
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .success30,
                                        center: Text(
                                          widget.pftType == PFTTypes.Running
                                              ? valueOrDefault<String>(
                                                  functions
                                                      .convertMillisecondsToTIme(
                                                          valueOrDefault<int>(
                                                    _model.repNumber,
                                                    0,
                                                  )),
                                                  '0',
                                                )
                                              : valueOrDefault<String>(
                                                  _model.repNumber?.toString(),
                                                  '0',
                                                ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 4.0)),
                              ),
                            ],
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation2']!),
                    if (_model.workoutComplete ?? true)
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.uiMessageModel,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: UiMessageWidget(
                              feedbackType: ContentFeedback.Neutral,
                              title: 'Congrats! Your Rep is complete!',
                              descripition: 'You rocked this workout!',
                            ),
                          ),
                          Text(
                            'How many ${widget.title} did you do?',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => Icon(
                                Icons.remove_rounded,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).alternate,
                                size: 44.0,
                              ),
                              incrementIconBuilder: (enabled) => Icon(
                                Icons.add_rounded,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context).alternate,
                                size: 44.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .displayMedium
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              count: _model.countControllerValue ??=
                                  valueOrDefault<int>(
                                _model.repNumber,
                                40,
                              ),
                              updateCount: (count) => safeSetState(
                                  () => _model.countControllerValue = count),
                              stepSize: 1,
                              minimum: 10,
                              maximum: 100,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  44.0, 0.0, 44.0, 0.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Text(
                              'Quick selection, use the amounts below to quickly select a value.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          FlutterFlowChoiceChips(
                            options: [
                              ChipData('40'),
                              ChipData('45'),
                              ChipData('50'),
                              ChipData('55'),
                              ChipData('60'),
                              ChipData('70')
                            ],
                            onChanged: (val) async {
                              safeSetState(() => _model.choiceChipsValue =
                                  val?.firstOrNull); // update_page_state
                              _model.repNumber = () {
                                if (_model.choiceChipsValue == '50') {
                                  return 50;
                                } else if (_model.choiceChipsValue == '70') {
                                  return 70;
                                } else if (_model.choiceChipsValue == '60') {
                                  return 60;
                                } else if (_model.choiceChipsValue == '55') {
                                  return 55;
                                } else {
                                  return 40;
                                }
                              }();
                              safeSetState(() {});
                              // set_count_controller
                              safeSetState(() {
                                _model.countControllerValue = _model.repNumber!;
                              });
                            },
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primaryText30,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              elevation: 0.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              borderWidth: 2.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Figtree',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              iconColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 4.0, 12.0, 4.0),
                              elevation: 0.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 1.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 8.0,
                            rowSpacing: 8.0,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                            controller: _model.choiceChipsValueController ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: false,
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              _model.repNumber = _model.countControllerValue;
                              _model.workoutComplete = false;
                              _model.showSummary = true;
                              safeSetState(() {});
                              await widget.action?.call();
                            },
                            text: 'Submit Score',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 44.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent1,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              hoverColor: FlutterFlowTheme.of(context).primary,
                              hoverBorderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                              hoverTextColor: FlutterFlowTheme.of(context).info,
                              hoverElevation: 3.0,
                            ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    if (!_model.workoutComplete!)
                      FFButtonWidget(
                        onPressed: () async {
                          _model.workoutComplete = true;
                          safeSetState(() {});
                        },
                        text: 'Enter Score Manually',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 44.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).overlay30,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).accent4,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: FlutterFlowTheme.of(context).alternate,
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                          hoverElevation: 3.0,
                        ),
                      ),
                  ]
                      .divide(SizedBox(height: 8.0))
                      .addToStart(SizedBox(height: 8.0)),
                );
              }
            },
          ),
        ),
      ].divide(SizedBox(height: 8.0)).addToEnd(SizedBox(height: 16.0)),
    );
  }
}
