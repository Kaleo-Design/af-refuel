import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_recent/chat_recent_widget.dart';
import 'chat_list_recents_widget.dart' show ChatListRecentsWidget;
import 'package:flutter/material.dart';

class ChatListRecentsModel extends FlutterFlowModel<ChatListRecentsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for chat_recent component.
  late ChatRecentModel chatRecentModel1;
  // Model for chat_recent component.
  late ChatRecentModel chatRecentModel2;
  // Model for chat_recent component.
  late ChatRecentModel chatRecentModel3;
  // Model for chat_recent component.
  late ChatRecentModel chatRecentModel4;
  // Model for chat_recent component.
  late ChatRecentModel chatRecentModel5;

  @override
  void initState(BuildContext context) {
    chatRecentModel1 = createModel(context, () => ChatRecentModel());
    chatRecentModel2 = createModel(context, () => ChatRecentModel());
    chatRecentModel3 = createModel(context, () => ChatRecentModel());
    chatRecentModel4 = createModel(context, () => ChatRecentModel());
    chatRecentModel5 = createModel(context, () => ChatRecentModel());
  }

  @override
  void dispose() {
    chatRecentModel1.dispose();
    chatRecentModel2.dispose();
    chatRecentModel3.dispose();
    chatRecentModel4.dispose();
    chatRecentModel5.dispose();
  }
}
