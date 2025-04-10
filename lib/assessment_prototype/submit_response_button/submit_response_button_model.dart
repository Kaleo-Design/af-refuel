import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'submit_response_button_widget.dart' show SubmitResponseButtonWidget;
import 'package:flutter/material.dart';

class SubmitResponseButtonModel
    extends FlutterFlowModel<SubmitResponseButtonWidget> {
  ///  Local state fields for this component.

  bool callMade = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Submit Assessment Response)] action in submit widget.
  ApiCallResponse? submittedResponseJson;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
