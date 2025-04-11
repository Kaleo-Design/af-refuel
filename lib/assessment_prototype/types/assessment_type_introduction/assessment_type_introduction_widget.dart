import '/assessment_prototype/jml/jml_group_render/jml_group_render_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
                updateOnChange: true,
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
                updateOnChange: true,
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
                updateOnChange: true,
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
                updateOnChange: true,
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
