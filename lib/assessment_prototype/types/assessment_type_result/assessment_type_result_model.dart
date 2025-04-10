import '/assessment_prototype/jml/jml_group_render/jml_group_render_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'assessment_type_result_widget.dart' show AssessmentTypeResultWidget;
import 'package:flutter/material.dart';

class AssessmentTypeResultModel
    extends FlutterFlowModel<AssessmentTypeResultWidget> {
  ///  Local state fields for this component.

  ResultDataStruct? resultData;
  void updateResultDataStruct(Function(ResultDataStruct) updateFn) {
    updateFn(resultData ??= ResultDataStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Assessments Results)] action in assessment_type_result widget.
  ApiCallResponse? resultResponse;
  // Model for header.
  late JmlGroupRenderModel headerModel;
  // Model for meaning.
  late JmlGroupRenderModel meaningModel;
  // Model for save.
  late JmlGroupRenderModel saveModel;
  // Model for scoring.
  late JmlGroupRenderModel scoringModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => JmlGroupRenderModel());
    meaningModel = createModel(context, () => JmlGroupRenderModel());
    saveModel = createModel(context, () => JmlGroupRenderModel());
    scoringModel = createModel(context, () => JmlGroupRenderModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    meaningModel.dispose();
    saveModel.dispose();
    scoringModel.dispose();
  }
}
