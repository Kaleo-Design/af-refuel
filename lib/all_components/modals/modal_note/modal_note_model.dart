import '/flutter_flow/flutter_flow_util.dart';
import 'modal_note_widget.dart' show ModalNoteWidget;
import 'package:flutter/material.dart';

class ModalNoteModel extends FlutterFlowModel<ModalNoteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for leave_note widget.
  FocusNode? leaveNoteFocusNode;
  TextEditingController? leaveNoteTextController;
  String? Function(BuildContext, String?)? leaveNoteTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    leaveNoteFocusNode?.dispose();
    leaveNoteTextController?.dispose();
  }
}
