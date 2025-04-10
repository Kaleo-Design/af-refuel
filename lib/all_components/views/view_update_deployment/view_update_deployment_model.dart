import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'view_update_deployment_widget.dart' show ViewUpdateDeploymentWidget;
import 'package:flutter/material.dart';

class ViewUpdateDeploymentModel
    extends FlutterFlowModel<ViewUpdateDeploymentWidget> {
  ///  Local state fields for this component.

  DataFieldsSimpleStruct? deploymentStatus;
  void updateDeploymentStatusStruct(Function(DataFieldsSimpleStruct) updateFn) {
    updateFn(deploymentStatus ??= DataFieldsSimpleStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel1;
  // Models for ui_header_sub dynamic component.
  late FlutterFlowDynamicModels<UiHeaderSubModel> uiHeaderSubModels2;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel1 = createModel(context, () => UiHeaderSubModel());
    uiHeaderSubModels2 = FlutterFlowDynamicModels(() => UiHeaderSubModel());
  }

  @override
  void dispose() {
    uiHeaderSubModel1.dispose();
    uiHeaderSubModels2.dispose();
  }
}
