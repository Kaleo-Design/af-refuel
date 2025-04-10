import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_box/chat_box_widget.dart';
import '/pages/chat_components/chatgpt_flow/writing_indicator/writing_indicator_widget.dart';
import 'ai_chat_component_widget.dart' show AiChatComponentWidget;
import 'package:flutter/material.dart';

class AiChatComponentModel extends FlutterFlowModel<AiChatComponentWidget> {
  ///  Local state fields for this component.

  dynamic chatHistory;

  bool aiResponding = false;

  String inputContent = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Model for writingIndicator component.
  late WritingIndicatorModel writingIndicatorModel;
  // Model for chat_box component.
  late ChatBoxModel chatBoxModel;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in chat_box widget.
  ApiCallResponse? chatGPTResponse;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
    writingIndicatorModel = createModel(context, () => WritingIndicatorModel());
    chatBoxModel = createModel(context, () => ChatBoxModel());
  }

  @override
  void dispose() {
    listViewController?.dispose();
    writingIndicatorModel.dispose();
    chatBoxModel.dispose();
  }
}
