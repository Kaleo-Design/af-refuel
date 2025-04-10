import '/flutter_flow/flutter_flow_util.dart';
import 'chat_box_widget.dart' show ChatBoxWidget;
import 'package:flutter/material.dart';

class ChatBoxModel extends FlutterFlowModel<ChatBoxWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter a message';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in TextField widget.
  bool? formSuccess;
  // Stores action output result for [Validate Form] action in IconButton widget.
  bool? formSuccessButton;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
