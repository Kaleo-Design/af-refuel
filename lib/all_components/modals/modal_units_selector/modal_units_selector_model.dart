import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modal_units_selector_widget.dart' show ModalUnitsSelectorWidget;
import 'package:flutter/material.dart';

class ModalUnitsSelectorModel
    extends FlutterFlowModel<ModalUnitsSelectorWidget> {
  ///  Local state fields for this component.

  String? selectedUnitID;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Set Unit)] action in Container widget.
  ApiCallResponse? setOtherUnitApiResult;
  // Stores action output result for [Backend Call - API (Set Unit)] action in Container widget.
  ApiCallResponse? setNoUnitApiResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
