import '/assessment_prototype/jml/jml_group_render/jml_group_render_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'assessment_type_introduction_model.dart';
export 'assessment_type_introduction_model.dart';

class AssessmentTypeIntroductionWidget extends StatefulWidget {
  const AssessmentTypeIntroductionWidget({
    super.key,
    required this.introductionData,
  });

  final IntroductionDataStruct? introductionData;

  @override
  State<AssessmentTypeIntroductionWidget> createState() =>
      _AssessmentTypeIntroductionWidgetState();
}

class _AssessmentTypeIntroductionWidgetState
    extends State<AssessmentTypeIntroductionWidget> {
  late AssessmentTypeIntroductionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentTypeIntroductionModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.introResponse = await AssessmentsIntroductionCall.call();

      if ((_model.introResponse?.succeeded ?? true)) {
        _model.introductionData = functions
            .parseIntroductionJson((_model.introResponse?.jsonBody ?? ''));
        safeSetState(() {});
      }
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
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (valueOrDefault<bool>(
              widget.introductionData?.heading != null &&
                  (widget.introductionData?.heading)!.isNotEmpty,
              false,
            ))
              wrapWithModel(
                model: _model.headingJmlGroupModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: widget.introductionData!.heading,
                ),
              ),
            if (valueOrDefault<bool>(
              widget.introductionData?.privacy != null &&
                  (widget.introductionData?.privacy)!.isNotEmpty,
              false,
            ))
              wrapWithModel(
                model: _model.privacyJmlGroupModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: widget.introductionData!.privacy,
                ),
              ),
            if (valueOrDefault<bool>(
              widget.introductionData?.process != null &&
                  (widget.introductionData?.process)!.isNotEmpty,
              false,
            ))
              wrapWithModel(
                model: _model.processJmlGroupModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: widget.introductionData!.process,
                ),
              ),
            if (valueOrDefault<bool>(
              widget.introductionData?.purpose != null &&
                  (widget.introductionData?.purpose)!.isNotEmpty,
              false,
            ))
              wrapWithModel(
                model: _model.purposeJmlGroupModel,
                updateCallback: () => safeSetState(() {}),
                child: JmlGroupRenderWidget(
                  jmlItems: widget.introductionData!.purpose,
                ),
              ),
          ].addToStart(SizedBox(height: 24.0)).addToEnd(SizedBox(height: 96.0)),
        ),
      ),
    );
  }
}
