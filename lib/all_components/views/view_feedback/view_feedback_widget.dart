import '/all_components/ui_components/ui_message/ui_message_widget.dart';
import '/all_components/ui_components/ui_select_vertical/ui_select_vertical_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'view_feedback_model.dart';
export 'view_feedback_model.dart';

class ViewFeedbackWidget extends StatefulWidget {
  const ViewFeedbackWidget({super.key});

  @override
  State<ViewFeedbackWidget> createState() => _ViewFeedbackWidgetState();
}

class _ViewFeedbackWidgetState extends State<ViewFeedbackWidget> {
  late ViewFeedbackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewFeedbackModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.feedbackGiven = false;
      _model.hideSurvey = false;
      safeSetState(() {});
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
    return ClipRRect(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        height: _model.hideSurvey == true ? 0.0 : null,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nice Work!',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ),
            Text(
              'How did you feel about that activity?',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: wrapWithModel(
                      model: _model.uiSelectVerticalModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: UiSelectVerticalWidget(
                        text: 'Not for me',
                        icon: Icon(
                          FFIcons.kthumbsDown,
                        ),
                        isSelected: false,
                        action: () async {
                          if (!_model.feedbackGiven) {
                            _model.feedbackGiven = true;
                            _model.feedback = ContentFeedback.not_for_me;
                            safeSetState(() {});
                            await Future.delayed(
                                const Duration(milliseconds: 1200));
                            // hide_survey
                            _model.hideSurvey = true;
                            safeSetState(() {});
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.uiSelectVerticalModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: UiSelectVerticalWidget(
                        text: 'Liked it',
                        icon: Icon(
                          FFIcons.kthumbsUp,
                        ),
                        isSelected: false,
                        action: () async {
                          if (!_model.feedbackGiven) {
                            // select_feedback
                            _model.feedbackGiven = true;
                            _model.feedback = ContentFeedback.liked_it;
                            safeSetState(() {});
                            await Future.delayed(
                                const Duration(milliseconds: 1200));
                            // hide_survey
                            _model.hideSurvey = true;
                            safeSetState(() {});
                          }
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.uiSelectVerticalModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: UiSelectVerticalWidget(
                        text: 'Loved it!',
                        icon: Icon(
                          FFIcons.kheart,
                        ),
                        isSelected: false,
                        action: () async {
                          if (!_model.feedbackGiven) {
                            // update_feedback
                            _model.feedbackGiven = true;
                            _model.feedback = ContentFeedback.loved_it;
                            safeSetState(() {});
                            await Future.delayed(
                                const Duration(milliseconds: 1200));
                            // hide_survey
                            _model.hideSurvey = true;
                            safeSetState(() {});
                          }
                        },
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
            if (_model.feedbackGiven)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                child: wrapWithModel(
                  model: _model.uiMessageModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: UiMessageWidget(
                    feedbackType: _model.feedback,
                  ),
                ),
              ),
          ]
              .divide(SizedBox(height: 4.0))
              .addToStart(SizedBox(height: 12.0))
              .addToEnd(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
