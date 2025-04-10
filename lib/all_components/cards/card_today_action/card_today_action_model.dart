import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_box/chat_box_widget.dart';
import 'card_today_action_widget.dart' show CardTodayActionWidget;
import 'package:flutter/material.dart';

class CardTodayActionModel extends FlutterFlowModel<CardTodayActionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for chat_box component.
  late ChatBoxModel chatBoxModel;

  @override
  void initState(BuildContext context) {
    chatBoxModel = createModel(context, () => ChatBoxModel());
  }

  @override
  void dispose() {
    chatBoxModel.dispose();
  }
}
