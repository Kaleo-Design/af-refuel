import '/assessment_prototype/submit_response_button/submit_response_button_widget.dart';
import '/assessment_prototype/types/assessment_type_fixed/assessment_type_fixed_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'assessment_dev_widget.dart' show AssessmentDevWidget;
import 'package:flutter/material.dart';

class AssessmentDevModel extends FlutterFlowModel<AssessmentDevWidget> {
  ///  Local state fields for this page.

  AssessmentInfoWrapperStruct? mappedAssessmentDataTest;
  void updateMappedAssessmentDataTestStruct(
      Function(AssessmentInfoWrapperStruct) updateFn) {
    updateFn(mappedAssessmentDataTest ??= AssessmentInfoWrapperStruct());
  }

  int loopIndex = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Content Detail Mock)] action in assessment_dev widget.
  ApiCallResponse? assessApiResult;
  // State field(s) for assessment_items_test widget.
  PageController? assessmentItemsTestController;

  int get assessmentItemsTestCurrentIndex =>
      assessmentItemsTestController != null &&
              assessmentItemsTestController!.hasClients &&
              assessmentItemsTestController!.page != null
          ? assessmentItemsTestController!.page!.round()
          : 0;
  // Models for assessment_type_fixed dynamic component.
  late FlutterFlowDynamicModels<AssessmentTypeFixedModel>
      assessmentTypeFixedModels;
  // Stores action output result for [Backend Call - API (Submit Assessment Response)] action in Text widget.
  ApiCallResponse? skipApiResponse;
  // Model for submit_response_button component.
  late SubmitResponseButtonModel submitResponseButtonModel;

  @override
  void initState(BuildContext context) {
    assessmentTypeFixedModels =
        FlutterFlowDynamicModels(() => AssessmentTypeFixedModel());
    submitResponseButtonModel =
        createModel(context, () => SubmitResponseButtonModel());
  }

  @override
  void dispose() {
    assessmentTypeFixedModels.dispose();
    submitResponseButtonModel.dispose();
  }
}
