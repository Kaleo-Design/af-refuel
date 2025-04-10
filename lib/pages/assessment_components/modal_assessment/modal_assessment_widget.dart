import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assessment_components/assessment_question/assessment_question_widget.dart';
import '/pages/assessment_components/assessment_success/assessment_success_widget.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/flutter_flow/custom_functions.dart'
    as n_c_u_i_web_template_01_ls0zpd_functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'modal_assessment_model.dart';
export 'modal_assessment_model.dart';

class ModalAssessmentWidget extends StatefulWidget {
  const ModalAssessmentWidget({
    super.key,
    required this.piller,
  });

  final PillerStruct? piller;

  @override
  State<ModalAssessmentWidget> createState() => _ModalAssessmentWidgetState();
}

class _ModalAssessmentWidgetState extends State<ModalAssessmentWidget> {
  late ModalAssessmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModalAssessmentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 4.0),
                          child: Text(
                            'Question ${valueOrDefault<String>(
                              (_model.pageViewCurrentIndex + 1).toString(),
                              '0',
                            )} of 4',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Figtree',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ].divide(SizedBox(width: 12.0)),
                    ),
                  ),
                  Text(
                    'Your Daily Check-In',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Figtree',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                  LinearPercentIndicator(
                    percent: n_c_u_i_web_template_01_ls0zpd_functions
                        .getProgressBarValue(
                            5,
                            valueOrDefault<int>(
                              _model.pageViewCurrentIndex + 1,
                              0,
                            ))!,
                    lineHeight: 12.0,
                    animation: true,
                    animateFromLastPercent: true,
                    progressColor: FlutterFlowTheme.of(context).primaryText,
                    backgroundColor: FlutterFlowTheme.of(context).primaryText50,
                    barRadius: Radius.circular(44.0),
                    padding: EdgeInsets.zero,
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeInOut,
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: 150.0,
                      maxWidth: 770.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            height: 500.0,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 40.0),
                                  child: PageView(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    onPageChanged: (_) => safeSetState(() {}),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      wrapWithModel(
                                        model: _model.assessmentQuestionModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: AssessmentQuestionWidget(
                                          questionDetails: QuestionStruct(
                                            name:
                                                'How would you rate your overall energy levels this week?',
                                            description:
                                                'Select one of the options below.',
                                            options: [
                                              'Very Low',
                                              'Low',
                                              'Moderate',
                                              'High',
                                              'Very High'
                                            ],
                                            type: QuestionTypes.likert_scale,
                                          ),
                                          selectAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.assessmentQuestionModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: AssessmentQuestionWidget(
                                          questionDetails: QuestionStruct(
                                            name:
                                                'How has your emotional well-being and mental health been this week?',
                                            description:
                                                'Please select one option below.',
                                            options: [
                                              'Very Poor',
                                              'Poor',
                                              'Neutral',
                                              'Good',
                                              'Very Good'
                                            ],
                                            type: QuestionTypes.likert_scale,
                                          ),
                                          selectAction: () async {
                                            await _model.pageViewController
                                                ?.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.assessmentQuestionModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: AssessmentQuestionWidget(
                                          questionDetails: QuestionStruct(
                                            name:
                                                'Have you been getting enough sleep?',
                                            description:
                                                'Select one option below.',
                                            options: [
                                              'Yes; Consistently',
                                              'Yes; but with interruptions',
                                              'No; not enough',
                                              'No; poor quality'
                                            ],
                                            type:
                                                QuestionTypes.single_selection,
                                          ),
                                          selectAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.assessmentQuestionModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        updateOnChange: true,
                                        child: AssessmentQuestionWidget(
                                          questionDetails: QuestionStruct(
                                            name: 'Tell us about your day.',
                                            description:
                                                'Jot down some notes and let us know what you are thinking.',
                                            options: [
                                              'Yes; Consistently',
                                              'Yes; but with interruptions',
                                              'No; not enough',
                                              'No; poor quality'
                                            ],
                                            type: QuestionTypes.long_text,
                                          ),
                                          selectAction: () async {},
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model:
                                                _model.assessmentSuccessModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: AssessmentSuccessWidget(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 16.0),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      count: 5,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController!
                                            .animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                        safeSetState(() {});
                                      },
                                      effect: smooth_page_indicator
                                          .ExpandingDotsEffect(
                                        expansionFactor: 2.0,
                                        spacing: 8.0,
                                        radius: 8.0,
                                        dotWidth: 8.0,
                                        dotHeight: 8.0,
                                        dotColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        activeDotColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 44.0,
                          decoration: BoxDecoration(),
                          child: Visibility(
                            visible: _model.pageViewCurrentIndex != 4,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        await _model.pageViewController
                                            ?.nextPage(
                                          duration: Duration(milliseconds: 300),
                                          curve: Curves.ease,
                                        );
                                      },
                                      text: 'Skip',
                                      options: FFButtonOptions(
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Figtree',
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .accent4,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .alternate,
                                        hoverBorderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        hoverElevation: 3.0,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        if (_model.pageViewCurrentIndex != 3) {
                                          // progress
                                          await _model.pageViewController
                                              ?.nextPage(
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );
                                        } else {
                                          // progress
                                          await _model.pageViewController
                                              ?.nextPage(
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.ease,
                                          );
                                          await Future.delayed(const Duration(
                                              milliseconds: 1200));
                                          Navigator.pop(context);
                                        }
                                      },
                                      text: 'Continue',
                                      options: FFButtonOptions(
                                        height: 48.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .accent1,
                                        hoverBorderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        hoverElevation: 0.0,
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(height: 16.0))
                          .addToEnd(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ),
            ),
          ].addToStart(SizedBox(height: 64.0)).addToEnd(SizedBox(height: 8.0)),
        ),
      ),
    );
  }
}
