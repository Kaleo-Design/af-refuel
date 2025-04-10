import '/all_components/nav/ui_logo_main/ui_logo_main_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_welcome_widget.dart' show MainWelcomeWidget;
import 'package:flutter/material.dart';

class MainWelcomeModel extends FlutterFlowModel<MainWelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ui_logo_main component.
  late UiLogoMainModel uiLogoMainModel;

  @override
  void initState(BuildContext context) {
    uiLogoMainModel = createModel(context, () => UiLogoMainModel());
  }

  @override
  void dispose() {
    uiLogoMainModel.dispose();
  }
}
