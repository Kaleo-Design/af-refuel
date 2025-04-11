import '/assessment_prototype/jml/jml_group_render/jml_group_render_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'assessment_type_introduction_widget.dart'
    show AssessmentTypeIntroductionWidget;
import 'package:flutter/material.dart';

class AssessmentTypeIntroductionModel
    extends FlutterFlowModel<AssessmentTypeIntroductionWidget> {
  ///  Local state fields for this component.

  IntroductionDataStruct? introductionData;
  void updateIntroductionDataStruct(Function(IntroductionDataStruct) updateFn) {
    updateFn(introductionData ??= IntroductionDataStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Model for heading_jml_group.
  late JmlGroupRenderModel headingJmlGroupModel;
  // Model for privacy_jml_group.
  late JmlGroupRenderModel privacyJmlGroupModel;
  // Model for process_jml_group.
  late JmlGroupRenderModel processJmlGroupModel;
  // Model for purpose_jml_group.
  late JmlGroupRenderModel purposeJmlGroupModel;

  @override
  void initState(BuildContext context) {
    headingJmlGroupModel = createModel(context, () => JmlGroupRenderModel());
    privacyJmlGroupModel = createModel(context, () => JmlGroupRenderModel());
    processJmlGroupModel = createModel(context, () => JmlGroupRenderModel());
    purposeJmlGroupModel = createModel(context, () => JmlGroupRenderModel());
  }

  @override
  void dispose() {
    headingJmlGroupModel.dispose();
    privacyJmlGroupModel.dispose();
    processJmlGroupModel.dispose();
    purposeJmlGroupModel.dispose();
  }
}
