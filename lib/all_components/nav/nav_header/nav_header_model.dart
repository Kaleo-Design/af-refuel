import '/all_components/ui_components/dark_light_switch/dark_light_switch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_header_widget.dart' show NavHeaderWidget;
import 'package:flutter/material.dart';

class NavHeaderModel extends FlutterFlowModel<NavHeaderWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for dark_light_switch component.
  late DarkLightSwitchModel darkLightSwitchModel;

  @override
  void initState(BuildContext context) {
    darkLightSwitchModel = createModel(context, () => DarkLightSwitchModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    darkLightSwitchModel.dispose();
  }
}
