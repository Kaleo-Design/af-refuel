import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_recent/chat_recent_widget.dart';
import 'package:flutter/material.dart';
import 'chat_list_recents_model.dart';
export 'chat_list_recents_model.dart';

class ChatListRecentsWidget extends StatefulWidget {
  const ChatListRecentsWidget({super.key});

  @override
  State<ChatListRecentsWidget> createState() => _ChatListRecentsWidgetState();
}

class _ChatListRecentsWidgetState extends State<ChatListRecentsWidget> {
  late ChatListRecentsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatListRecentsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      children: [
        wrapWithModel(
          model: _model.chatRecentModel1,
          updateCallback: () => safeSetState(() {}),
          child: ChatRecentWidget(
            isRead: true,
          ),
        ),
        wrapWithModel(
          model: _model.chatRecentModel2,
          updateCallback: () => safeSetState(() {}),
          updateOnChange: true,
          child: ChatRecentWidget(
            isRead: true,
          ),
        ),
        wrapWithModel(
          model: _model.chatRecentModel3,
          updateCallback: () => safeSetState(() {}),
          updateOnChange: true,
          child: ChatRecentWidget(
            isRead: true,
          ),
        ),
        wrapWithModel(
          model: _model.chatRecentModel4,
          updateCallback: () => safeSetState(() {}),
          updateOnChange: true,
          child: ChatRecentWidget(
            isRead: true,
          ),
        ),
        wrapWithModel(
          model: _model.chatRecentModel5,
          updateCallback: () => safeSetState(() {}),
          updateOnChange: true,
          child: ChatRecentWidget(
            isRead: true,
          ),
        ),
      ].divide(SizedBox(height: 1.0)),
    );
  }
}
