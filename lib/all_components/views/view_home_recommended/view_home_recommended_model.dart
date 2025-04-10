import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_box/chat_box_widget.dart';
import 'view_home_recommended_widget.dart' show ViewHomeRecommendedWidget;
import 'package:flutter/material.dart';

class ViewHomeRecommendedModel
    extends FlutterFlowModel<ViewHomeRecommendedWidget> {
  ///  Local state fields for this component.

  bool hideContent = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel;
  // Model for chat_box component.
  late ChatBoxModel chatBoxModel;

  @override
  void initState(BuildContext context) {
    uiHeaderSubModel = createModel(context, () => UiHeaderSubModel());
    chatBoxModel = createModel(context, () => ChatBoxModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    uiHeaderSubModel.dispose();
    chatBoxModel.dispose();
  }
}
